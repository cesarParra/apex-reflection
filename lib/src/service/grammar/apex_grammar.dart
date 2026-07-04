import 'package:petitparser/petitparser.dart';

import 'package:apex_reflection/src/model/declaration_mirror.dart';
import 'package:apex_reflection/src/model/doc_comment.dart';
import 'package:apex_reflection/src/model/members.dart';
import 'package:apex_reflection/src/model/modifiers.dart';
import 'package:apex_reflection/src/model/type_references.dart';
import 'package:apex_reflection/src/model/types.dart';
import 'package:apex_reflection/src/service/declaration_descriptor.dart';
import 'package:apex_reflection/src/service/grammar/apexdoc_grammar.dart';

/// The Apex declaration grammar.
///
/// Reflection only needs the *declaration structure* of an Apex file: types,
/// members, modifiers, annotations, doc comments and signatures. Method,
/// constructor, property and trigger bodies are therefore skipped as balanced
/// `{ ... }` blocks: their contents never influence the produced model, and
/// skipping them keeps the grammar immune to new expression-level Apex syntax.
///
/// Doc comments are parsed in the same pass. [ApexdocGrammar.wrappedComment]
/// is composed directly into the declaration-prefix rule, so a doc comment is
/// consumed from the source stream and turned into a [DocComment] as part of
/// the parse.
///
/// Group comments (`// @start-group` / `// @end-group` and their
/// `/** @start-group ... */` doc-comment form) scope sibling class members
/// into named groups. Because a PEG parser may backtrack, group state cannot
/// be mutated mid-parse; instead the class-body rule produces a flat list of
/// [_ClassBodyEvent]s (group boundaries and member additions in source order)
/// which is folded with a group stack once the body has fully parsed.
class ApexGrammar {
  static final ApexGrammar instance = ApexGrammar._();

  late final Parser<TypeMirror> compilationUnit;
  late final Parser<TriggerMirror> triggerUnit;
  late final Parser<_DeclarationPrefix> _declarationPrefix;

  // Recursive rules: created up front, resolved in the constructor.
  final SettableParser _typeReference = undefined();
  final SettableParser _typeDeclarationRest = undefined();
  final SettableParser _classBodyItem = undefined();

  ApexGrammar._() {
    _buildTypeReference();
    _declarationPrefix = _buildDeclarationPrefix();
    _classBodyItem.set(_buildClassBodyItem());
    _buildTypeDeclaration();
    _buildTrigger();
    compilationUnit = (_typeDeclarationWithPrefix & _hiddenWhitespace)
        .end()
        .map((values) => values[0] as TypeMirror);
  }

  late final Parser<TypeMirror> _typeDeclarationWithPrefix;

  // ---- Lexical building blocks -------------------------------------------

  Parser get _identifierCharacter => pattern('a-zA-Z0-9_\$');

  /// Any `//` comment through the end of the line, group markers included.
  /// Only used inside skipped (balanced) regions, where group markers carry
  /// no meaning and must not disturb brace balancing.
  Parser get _anyLineComment => string('//') & pattern('^\n\r').star();

  /// A `//` comment that is *not* a group boundary marker. Group markers must
  /// stay visible to the class-body rule, so plain whitespace skipping is not
  /// allowed to swallow them.
  Parser get _hiddenLineComment =>
      string('//') & _groupMarkerAhead.not() & pattern('^\n\r').star();

  Parser get _groupMarkerAhead =>
      pattern(' \t').star() &
      (string('@start-group', ignoreCase: true) |
          string('@end-group', ignoreCase: true));

  /// A full doc comment. Only used to *skip* doc comments inside balanced
  /// regions; real doc comments are parsed by [ApexdocGrammar].
  Parser get _skippedDocComment =>
      (string('/**') & (string('*/').not() & any()).star() & string('*/'))
          .flatten();

  /// Cheap O(1) discriminator: `/**` not immediately followed by `/` (which
  /// would make it the empty block comment `/**/`). Keeps the block-comment
  /// rule from swallowing a real doc comment without scanning to `*/`.
  Parser get _docCommentStart => string('/**') & char('/').not();

  /// A `/* ... */` comment that is not a doc comment.
  Parser get _blockComment => _docCommentStart.not() &
      string('/*') &
      (string('*/').not() & any()).star() &
      string('*/');

  /// Hidden content between tokens: whitespace and non-doc, non-group-marker
  /// comments. Doc comments and group markers are meaningful and never hidden.
  Parser get _hiddenWhitespace =>
      (whitespace() | _hiddenLineComment | _blockComment).star();

  /// Matches [parser], then consumes trailing hidden whitespace; produces
  /// [parser]'s value. This is what turns a raw matcher into a token.
  Parser<T> _lexeme<T>(Parser<T> parser) =>
      (parser & _hiddenWhitespace).map((values) => values[0] as T);

  /// A case-insensitive keyword with a word boundary, so `public` does not
  /// match the prefix of `publicThing`. Produces the canonical spelling.
  Parser<String> _keyword(String word) => _lexeme(
      (string(word, ignoreCase: true) & _identifierCharacter.not())
          .map((_) => word));

  Parser<String> get _identifier => _lexeme(
      (pattern('a-zA-Z_\$') & _identifierCharacter.star()).flatten());

  Parser<String> _symbol(String characters) =>
      _lexeme(string(characters).map((_) => characters));

  // ---- Type references ---------------------------------------------------

  void _buildTypeReference() {
    final typeArguments = _symbol('<') & _typeReferenceList & _symbol('>');
    final rawIdentifier =
        (pattern('a-zA-Z_\$') & _identifierCharacter.star()).flatten();

    // One `identifier<arguments>` segment. The identifier is a lexeme, which
    // lets whitespace sit between the name and `<` (Apex allows
    // `List <String>`).
    final segment =
        (_lexeme(rawIdentifier) & typeArguments.optional()).map((values) {
      final arguments = values[1] == null
          ? <_ParsedTypeReference>[]
          : ((values[1] as List)[1] as List).cast<_ParsedTypeReference>();
      return _TypeNameSegment(values[0] as String, arguments);
    });

    final dottedSegments =
        (segment & (char('.') & segment).star()).map((values) {
      return [
        values[0] as _TypeNameSegment,
        for (final rest in values[1] as List) rest[1] as _TypeNameSegment,
      ];
    });

    final arrayDimensions = (_symbol('[') & _symbol(']')).star();

    _typeReference.set(
        (dottedSegments & _hiddenWhitespace & arrayDimensions).map((values) =>
            _ParsedTypeReference(values[0] as List<_TypeNameSegment>,
                (values[2] as List).length)));
  }

  Parser get _typeReferenceList =>
      (_typeReference & (_symbol(',') & _typeReference).star()).map((values) {
        return [
          values[0] as _ParsedTypeReference,
          for (final rest in values[1] as List)
            rest[1] as _ParsedTypeReference,
        ];
      });

  // ---- Annotations & modifiers -------------------------------------------

  Parser<Annotation> get _annotation {
    final annotationName =
        (pattern('a-zA-Z_\$') & _identifierCharacter.star()).flatten();
    // The parenthesized parameters, whitespace before them included, are only
    // consumed when a `(` actually follows; otherwise the annotation's raw
    // text ends at its name.
    final parameters = (_hiddenWhitespace & _balancedRegion('(', ')'))
        .map((values) => values[1] as String);
    return _lexeme(
        (char('@') & annotationName & parameters.optional()).token().map((token) {
      final rawParameters = token.value[2] as String?;
      // token.input is the exact source span of the annotation, so the raw
      // declaration keeps the author's original spacing.
      return Annotation(token.input)
        ..elementValues = rawParameters == null
            ? []
            : _annotationElementValues(rawParameters);
    }));
  }

  /// Extracts `key = value` element pairs from the parenthesized annotation
  /// parameters. Pairs may be space- or comma-separated, and values may be
  /// quoted strings or bare tokens (`Required=false Label='x'`).
  ///
  /// ponytail: a regex, not a sub-grammar. Nested parentheses or `=` inside
  /// bare values would misparse. Upgrade to a real parameter grammar if such
  /// annotations ever appear in the wild.
  List<AnnotationElementValue> _annotationElementValues(
      String rawParameters) {
    if (rawParameters.length < 2) {
      return [];
    }
    final innerText = rawParameters.substring(1, rawParameters.length - 1);
    if (!innerText.contains('=')) {
      return [];
    }
    return RegExp(r"([A-Za-z0-9_$]+)\s*=\s*('(?:[^'\\]|\\.)*'|[^\s,)]+)")
        .allMatches(innerText)
        .map((match) => AnnotationElementValue(match.group(1)!, match.group(2)!))
        .toList();
  }

  static const _accessModifierKeywords = [
    'public',
    'private',
    'protected',
    'global',
  ];
  static const _classModifierKeywords = ['virtual', 'abstract'];
  static const _memberModifierKeywords = [
    'static',
    'webservice',
    'final',
    'override',
    'testmethod',
    'transient',
  ];

  /// A single modifier keyword, with two-word sharing modifiers normalized to
  /// their space-stripped form (`withsharing`). Keywords are collected raw
  /// and only classified into modifier enums by [_DeclarationPrefix.descriptor]
  /// once it is known whether they precede a member or a type, since
  /// `virtual` means something different on each.
  Parser<String> get _modifierKeyword {
    final sharingModifier =
        (_keyword('with') & _keyword('sharing')).map((_) => 'withsharing') |
            (_keyword('without') & _keyword('sharing'))
                .map((_) => 'withoutsharing') |
            (_keyword('inherited') & _keyword('sharing'))
                .map((_) => 'inheritedsharing');
    final singleWordModifiers = [
      ..._accessModifierKeywords,
      ..._classModifierKeywords,
      ..._memberModifierKeywords,
    ].map(_keyword).toChoiceParser();
    return (sharingModifier | singleWordModifiers)
        .map((word) => word as String);
  }

  /// The declaration prefix, parsed **once** per declaration: doc comments,
  /// annotations and modifier keywords in any order.
  ///
  /// The prefix is deliberately agnostic of what follows it: modifier
  /// keywords stay raw strings and doc comments stay an ordered list, so the
  /// same parsed prefix can serve a member, an inner type, or a top-level
  /// type, each of which interprets it slightly differently.
  Parser<_DeclarationPrefix> _buildDeclarationPrefix() {
    final item = _lexeme(ApexdocGrammar.wrappedComment)
            .map<_PrefixItem>(_DocCommentItem.new) |
        _annotation.map<_PrefixItem>(_AnnotationItem.new) |
        _modifierKeyword.map<_PrefixItem>(_ModifierKeywordItem.new);
    return (_hiddenWhitespace & item.star()).map((values) {
      final docComments = <DocComment>[];
      final annotations = <Annotation>[];
      final modifierKeywords = <String>[];
      for (final item in (values[1] as List).cast<_PrefixItem>()) {
        switch (item) {
          case _DocCommentItem(:final docComment):
            docComments.add(docComment);
          case _AnnotationItem(:final annotation):
            annotations.add(annotation);
          case _ModifierKeywordItem(:final keyword):
            modifierKeywords.add(keyword);
        }
      }
      return _DeclarationPrefix(docComments, annotations, modifierKeywords);
    });
  }

  // ---- Balanced skippers -------------------------------------------------

  /// Matches a balanced region delimited by [opening]/[closing], honoring
  /// Apex string literals and comments (so delimiters inside them do not
  /// count), producing the raw matched text.
  Parser<String> _balancedRegion(String opening, String closing) {
    final region = undefined();
    final stringLiteral = char("'") &
        (string(r'\').seq(any()) | pattern(r"^'\\")).star() &
        char("'");
    final nonDelimiter = (char(opening) | char(closing)).not() &
        (_anyLineComment |
            _blockComment |
            _skippedDocComment |
            stringLiteral |
            any());
    region.set(char(opening) & (region | nonDelimiter).star() & char(closing));
    return region.flatten();
  }

  Parser<String> get _block => _lexeme(_balancedRegion('{', '}'));

  // ---- Formal parameters -------------------------------------------------

  Parser<List<ParameterMirror>> get _formalParameters {
    final parameter =
        (_parameterModifiers & _typeReference & _identifier).map((values) {
      return ParameterMirror(
        name: values[2] as String,
        typeReference: (values[1] as _ParsedTypeReference).toReference(),
      );
    });
    final parameterList =
        (parameter & (_symbol(',') & parameter).star()).map((values) {
      return [
        values[0] as ParameterMirror,
        for (final rest in values[1] as List) rest[1] as ParameterMirror,
      ];
    });
    return (_symbol('(') & parameterList.optional() & _symbol(')')).map(
        (values) => (values[1] as List<ParameterMirror>?) ?? <ParameterMirror>[]);
  }

  Parser get _parameterModifiers => (_keyword('final') | _annotation).star();

  // ---- Group boundaries ----------------------------------------------------

  /// A `// @start-group NAME` or `// @end-group` line marker. These are
  /// excluded from hidden whitespace precisely so this rule can see them.
  Parser<_ClassBodyEvent> get _groupLineMarker {
    final leadingSpace = pattern(' \t').star();
    final restOfLine = pattern('^\n\r').star().flatten();
    final start = (string('//') &
            leadingSpace &
            string('@start-group', ignoreCase: true) &
            restOfLine)
        .map((values) =>
            _GroupStartEvent(_Group(name: (values[3] as String).trim())));
    final end = (string('//') &
            leadingSpace &
            string('@end-group', ignoreCase: true) &
            restOfLine)
        .map((_) => const _GroupEndEvent());
    return _lexeme((start | end).cast<_ClassBodyEvent>());
  }

  // ---- Class members -------------------------------------------------------

  /// A class-body member *without* its prefix. Produces an adder that
  /// receives the already-parsed prefix, the enclosing class, and the group
  /// in scope at the member's position.
  Parser<_MemberAdder> get _classMemberRest {
    // Inner type: class / interface / enum.
    final innerType = _typeDeclarationRest.map<_MemberAdder>((build) {
      return (enclosingClass, prefix, enclosingGroup) {
        final innerTypeMirror = (build as _TypeBuilder)(prefix);
        _applyGroup(innerTypeMirror, enclosingGroup);
        switch (innerTypeMirror) {
          case ClassMirror():
            enclosingClass.addClass(innerTypeMirror);
          case InterfaceMirror():
            enclosingClass.addInterface(innerTypeMirror);
          case EnumMirror():
            enclosingClass.addEnum(innerTypeMirror);
          case TriggerMirror():
            // Type declarations never produce triggers; triggers only exist
            // at the top of a trigger file.
            break;
        }
      };
    });

    // Method: (void | type) name ( parameters ) then a body or `;`.
    final method = (_returnType &
            _identifier &
            _formalParameters &
            (_block | _symbol(';')))
        .map<_MemberAdder>((values) {
      final returnType = values[0] == null
          ? ReferenceObjectType('void')
          : (values[0] as _ParsedTypeReference).toReference();
      final name = values[1] as String;
      final parameters = values[2] as List<ParameterMirror>;
      return (enclosingClass, prefix, enclosingGroup) {
        final descriptor = prefix.descriptor(isMember: true);
        final methodMirror = MethodMirror(
            name: name,
            rawDocComment: prefix.rawDocumentationComment,
            typeReference: returnType)
          ..docComment = prefix.documentationComment
          ..parameters = parameters
          ..accessModifier = descriptor.accessModifier
          ..annotations = descriptor.annotations
          ..memberModifiers = descriptor.memberModifiers;
        _applyGroup(methodMirror, enclosingGroup);
        enclosingClass.addMethod(methodMirror);
      };
    });

    // Constructor: name ( parameters ) body, with no return type.
    final constructor =
        (_identifier & _formalParameters & _block).map<_MemberAdder>((values) {
      final parameters = values[1] as List<ParameterMirror>;
      return (enclosingClass, prefix, enclosingGroup) {
        final descriptor = prefix.descriptor(isMember: true);
        final constructorMirror =
            ConstructorMirror(rawDocComment: prefix.rawDocumentationComment)
              ..docComment = prefix.documentationComment
              ..parameters = parameters
              ..accessModifier = descriptor.accessModifier
              ..annotations = descriptor.annotations;
        _applyGroup(constructorMirror, enclosingGroup);
        enclosingClass.addConstructor(constructorMirror);
      };
    });

    // Property: type name { accessors }.
    final property =
        (_typeReference & _identifier & _block).map<_MemberAdder>((values) {
      final type = (values[0] as _ParsedTypeReference).toReference();
      final name = values[1] as String;
      return (enclosingClass, prefix, enclosingGroup) {
        final descriptor = prefix.descriptor(isMember: true);
        final propertyMirror = PropertyMirror(
            name: name,
            rawDocComment: prefix.rawDocumentationComment,
            typeReference: type)
          ..docComment = prefix.documentationComment
          ..accessModifier = descriptor.accessModifier
          ..annotations = descriptor.annotations
          ..memberModifiers = descriptor.memberModifiers;
        _applyGroup(propertyMirror, enclosingGroup);
        enclosingClass.addProperty(propertyMirror);
      };
    });

    // Field: type declarator (, declarator)* ;
    // Each declarator produces its own mirror, all sharing the declaration's
    // type, modifiers and doc comment.
    final field = (_typeReference & _variableDeclarators & _symbol(';'))
        .map<_MemberAdder>((values) {
      final type = (values[0] as _ParsedTypeReference).toReference();
      final names = values[1] as List<String>;
      return (enclosingClass, prefix, enclosingGroup) {
        final descriptor = prefix.descriptor(isMember: true);
        for (final name in names) {
          final fieldMirror = FieldMirror(
              name: name,
              rawDocComment: prefix.rawDocumentationComment,
              typeReference: type)
            ..docComment = prefix.documentationComment
            ..accessModifier = descriptor.accessModifier
            ..annotations = descriptor.annotations
            ..memberModifiers = descriptor.memberModifiers;
          _applyGroup(fieldMirror, enclosingGroup);
          enclosingClass.addField(fieldMirror);
        }
      };
    });

    // Static / instance initializer blocks and stray semicolons contribute
    // nothing to the model but must be consumed.
    final initializerBlock = _block.map<_MemberAdder>((_) => (_, _, _) {});
    final straySemicolon = _symbol(';').map<_MemberAdder>((_) => (_, _, _) {});

    return [
      innerType,
      method,
      constructor,
      property,
      field,
      initializerBlock,
      straySemicolon,
    ].toChoiceParser();
  }

  /// A `void` or type return marker: null for `void`, a parsed type otherwise.
  Parser get _returnType => _keyword('void').map((_) => null) | _typeReference;

  Parser<List<String>> get _variableDeclarators {
    final declarator = (_identifier & (_symbol('=') & _initializerValue).optional())
        .map((values) => values[0] as String);
    return (declarator & (_symbol(',') & declarator).star()).map((values) {
      return [
        values[0] as String,
        for (final rest in values[1] as List) rest[1] as String,
      ];
    });
  }

  /// A field initializer value: everything up to a top-level `,` or `;`,
  /// honoring nested `()`, `{}`, `[]`, `<...>` generic literals and string
  /// literals.
  ///
  /// `<...>` is tried as a balanced group first, so the comma in
  /// `new Map<String, Integer>{...}` does not end the declarator; when no
  /// matching `>` exists it falls back to a single character, so a bare
  /// comparison `a < b` still parses.
  ///
  /// ponytail: a contrived initializer mixing an unbalanced `<` with a
  /// balanced-looking one could misgroup. Harmless in practice, since only
  /// the field *names* reach the model, never the initializer text.
  Parser get _initializerValue {
    final stringLiteral = char("'") &
        (string(r'\').seq(any()) | pattern(r"^'\\")).star() &
        char("'");
    final nestedRegion = _balancedRegion('(', ')') |
        _balancedRegion('{', '}') |
        _balancedRegion('[', ']') |
        _balancedRegion('<', '>');
    final plainRun = pattern("^,;()<>[\\]{}'").plus();
    final piece = nestedRegion | stringLiteral | plainRun | pattern('<>');
    return _lexeme(piece.plus().flatten());
  }

  /// One item of a class body: a group boundary marker, a member (whose
  /// prefix may itself carry doc-form group boundaries), or a stray doc
  /// comment attached to nothing, most commonly the `/** @end-group */`
  /// doc form sitting right before the closing brace.
  Parser<List<_ClassBodyEvent>> _buildClassBodyItem() {
    final member = (_declarationPrefix & _classMemberRest).map((values) {
      final prefix = values[0] as _DeclarationPrefix;
      final addMember = values[1] as _MemberAdder;
      return [
        ...prefix.groupEvents,
        _MemberEvent((enclosingClass, enclosingGroup) =>
            addMember(enclosingClass, prefix, enclosingGroup)),
      ];
    });
    final strayDocComment =
        _lexeme(ApexdocGrammar.wrappedComment).map((docComment) {
      final groupEvent = _groupEventFromDocComment(docComment);
      return [if (groupEvent != null) groupEvent];
    });
    return (_groupLineMarker.map((event) => [event]) | member | strayDocComment)
        .map((events) => (events as List).cast<_ClassBodyEvent>());
  }

  // ---- Type declarations ---------------------------------------------------

  void _buildTypeDeclaration() {
    final classRest = (_keyword('class') &
            _identifier &
            (_keyword('extends') & _typeReference).optional() &
            (_keyword('implements') & _typeReferenceList).optional() &
            _symbol('{') &
            _classBodyItem.star() &
            _symbol('}'))
        .map<_TypeBuilder>((values) {
      final name = values[1] as String;
      final extendedClass = values[2] == null
          ? null
          : (values[2][1] as _ParsedTypeReference).canonicalText;
      final implementedInterfaces = values[3] == null
          ? <String>[]
          : (values[3][1] as List)
              .cast<_ParsedTypeReference>()
              .map((type) => type.canonicalText)
              .toList();
      final bodyEvents = [
        for (final itemEvents in values[5] as List)
          ...(itemEvents as List).cast<_ClassBodyEvent>(),
      ];
      return (prefix) {
        final descriptor = prefix.descriptor();
        final classMirror = ClassMirror(
            name: name,
            rawDocComment: prefix.rawDocumentationComment,
            extendedClass: extendedClass,
            implementedInterfaces: implementedInterfaces)
          ..docComment = prefix.documentationComment
          ..accessModifier = descriptor.accessModifier
          ..sharingModifier = descriptor.sharingModifier
          ..classModifier = descriptor.classModifier
          ..annotations = descriptor.annotations;
        _applyBodyEvents(classMirror, bodyEvents);
        return classMirror;
      };
    });

    final interfaceRest = (_keyword('interface') &
            _identifier &
            (_keyword('extends') & _typeReferenceList).optional() &
            _symbol('{') &
            _interfaceBodyItem.star() &
            _symbol('}'))
        .map<_TypeBuilder>((values) {
      final name = values[1] as String;
      final extendedInterfaces = values[2] == null
          ? <String>[]
          : (values[2][1] as List)
              .cast<_ParsedTypeReference>()
              .map((type) => type.canonicalText)
              .toList();
      final methodBuilders = (values[4] as List)
          .cast<MethodMirror Function(InterfaceMirror)?>()
          .nonNulls
          .toList();
      return (prefix) {
        final descriptor = prefix.descriptor();
        final interfaceMirror = InterfaceMirror(
            name: name,
            rawDocComment: prefix.rawDocumentationComment,
            extendedInterfaces: extendedInterfaces)
          ..docComment = prefix.documentationComment
          ..accessModifier = descriptor.accessModifier
          ..sharingModifier = descriptor.sharingModifier
          ..annotations = descriptor.annotations;
        for (final buildMethod in methodBuilders) {
          interfaceMirror.methods.add(buildMethod(interfaceMirror));
        }
        return interfaceMirror;
      };
    });

    final enumConstant = (_declarationPrefix & _identifier).map((values) {
      final prefix = values[0] as _DeclarationPrefix;
      return EnumValue(
          name: values[1] as String,
          rawDocComment: prefix.rawDocumentationComment)
        ..docComment = prefix.documentationComment;
    });
    final enumRest = (_keyword('enum') &
            _identifier &
            _symbol('{') &
            (enumConstant & (_symbol(',') & enumConstant).star()).optional() &
            _trailingBodyClutter &
            _symbol('}'))
        .map<_TypeBuilder>((values) {
      final name = values[1] as String;
      final constants = <EnumValue>[];
      if (values[3] != null) {
        constants.add(values[3][0] as EnumValue);
        for (final rest in values[3][1] as List) {
          constants.add(rest[1] as EnumValue);
        }
      }
      return (prefix) {
        final descriptor = prefix.descriptor();
        final enumMirror = EnumMirror(
            name: name, rawDocComment: prefix.rawDocumentationComment)
          ..docComment = prefix.documentationComment
          ..accessModifier = descriptor.accessModifier
          ..annotations = descriptor.annotations;
        for (final constant in constants) {
          enumMirror.addValue(constant);
        }
        return enumMirror;
      };
    });

    _typeDeclarationRest
        .set([classRest, interfaceRest, enumRest].toChoiceParser());
    _typeDeclarationWithPrefix =
        (_declarationPrefix & _typeDeclarationRest).map((values) {
      final prefix = values[0] as _DeclarationPrefix;
      final build = values[1] as _TypeBuilder;
      return build(prefix);
    });
  }

  /// Stray group markers or doc comments at the end of a body, attached to no
  /// declaration. Consumed so a trailing `/** @end-group */` or orphaned doc
  /// comment before the closing brace cannot fail the parse.
  Parser get _trailingBodyClutter =>
      (_groupLineMarker | _lexeme(ApexdocGrammar.wrappedComment)).star();

  /// One item of an interface body: a method, or group-comment clutter.
  ///
  /// Group markers are consumed but not applied inside interface bodies:
  /// interfaces only contain methods, and grouping them has never been part
  /// of the model's output.
  Parser<MethodMirror Function(InterfaceMirror)?> get _interfaceBodyItem {
    final methodRest =
        (_returnType & _identifier & _formalParameters & _symbol(';'))
            .map((values) {
      final returnType = values[0] == null
          ? ReferenceObjectType('void')
          : (values[0] as _ParsedTypeReference).toReference();
      final name = values[1] as String;
      final parameters = values[2] as List<ParameterMirror>;
      return (InterfaceMirror interfaceMirror, _DeclarationPrefix prefix) {
        // Interface methods inherit the interface's visibility and
        // annotations; their own annotations are appended.
        final ownAnnotations = prefix.descriptor(isMember: true).annotations;
        return MethodMirror(
            name: name,
            rawDocComment: prefix.rawDocumentationComment,
            typeReference: returnType)
          ..docComment = prefix.documentationComment
          ..parameters = parameters
          ..accessModifier = interfaceMirror.accessModifier
          ..annotations = [...interfaceMirror.annotations, ...ownAnnotations];
      };
    });
    final method = (_declarationPrefix & methodRest)
        .map<MethodMirror Function(InterfaceMirror)?>((values) {
      final prefix = values[0] as _DeclarationPrefix;
      final build = values[1] as MethodMirror Function(
          InterfaceMirror, _DeclarationPrefix);
      return (interfaceMirror) => build(interfaceMirror, prefix);
    });
    final clutter = (_groupLineMarker | _lexeme(ApexdocGrammar.wrappedComment))
        .map<MethodMirror Function(InterfaceMirror)?>((_) => null);
    return (method | clutter).cast<MethodMirror Function(InterfaceMirror)?>();
  }

  // ---- Triggers ------------------------------------------------------------

  void _buildTrigger() {
    // A trigger event is one or more words (`before insert`); the model keeps
    // them space-stripped (`beforeinsert`).
    final triggerEvent = (_identifier & _identifier.star()).map((values) {
      return [values[0] as String, ...(values[1] as List).cast<String>()]
          .join();
    });
    final triggerEvents = (_symbol('(') &
            triggerEvent &
            (_symbol(',') & triggerEvent).star() &
            _symbol(')'))
        .map((values) {
      return [
        values[1] as String,
        for (final rest in values[2] as List) rest[1] as String,
      ];
    });

    triggerUnit = (_declarationPrefix &
            _keyword('trigger') &
            _identifier &
            _keyword('on') &
            _identifier &
            _keyword('bulk').optional() &
            triggerEvents &
            _block)
        .end()
        .map((values) {
      final prefix = values[0] as _DeclarationPrefix;
      return TriggerMirror(
        name: values[2] as String,
        objectName: values[4] as String,
        events: values[6] as List<String>,
        rawDocComment: prefix.rawDocumentationComment,
      )..docComment = prefix.documentationComment;
    });
  }
}

/// Folds a class body's flat event list into the class, applying the group
/// in scope to each member as it is added.
void _applyBodyEvents(ClassMirror classMirror, List<_ClassBodyEvent> events) {
  final groupStack = <_Group>[];
  for (final event in events) {
    switch (event) {
      case _GroupStartEvent(:final group):
        groupStack.add(group);
      case _GroupEndEvent():
        if (groupStack.isNotEmpty) {
          groupStack.removeLast();
        }
      case _MemberEvent(:final addMember):
        addMember(classMirror, groupStack.lastOrNull);
    }
  }
}

void _applyGroup(DeclarationMirror declaration, _Group? group) {
  if (group != null) {
    declaration.setGroup(group.name, group.description);
  }
}

/// Recognizes the doc-comment form of a group boundary: a doc comment whose
/// tags include `@start-group` (its content is the group name, the comment's
/// description is the group description) or `@end-group`. Returns null for an
/// ordinary doc comment.
_ClassBodyEvent? _groupEventFromDocComment(DocComment docComment) {
  for (final annotation in docComment.annotations) {
    switch (annotation.name.toLowerCase()) {
      case 'start-group':
        return _GroupStartEvent(_Group(
            name: annotation.body, description: docComment.description));
      case 'end-group':
        return const _GroupEndEvent();
    }
  }
  return null;
}

/// Builds a type mirror from a parsed type-declaration body once its prefix
/// is known.
typedef _TypeBuilder = TypeMirror Function(_DeclarationPrefix prefix);

/// Adds a parsed member to its enclosing class, given the member's prefix
/// and the group in scope at its position.
typedef _MemberAdder = void Function(ClassMirror enclosingClass,
    _DeclarationPrefix prefix, _Group? enclosingGroup);

/// A named group of sibling class members, delimited by group comments.
class _Group {
  final String? name;
  final String? description;

  const _Group({this.name, this.description});
}

/// What a class body reduces to while parsing: group boundaries and member
/// additions in source order. Folded by [_applyBodyEvents] after the parse,
/// because a backtracking parser cannot safely mutate a group stack mid-parse.
sealed class _ClassBodyEvent {
  const _ClassBodyEvent();
}

final class _GroupStartEvent extends _ClassBodyEvent {
  final _Group group;

  const _GroupStartEvent(this.group);
}

final class _GroupEndEvent extends _ClassBodyEvent {
  const _GroupEndEvent();
}

final class _MemberEvent extends _ClassBodyEvent {
  final void Function(ClassMirror enclosingClass, _Group? enclosingGroup)
      addMember;

  const _MemberEvent(this.addMember);
}

/// One `identifier<typeArguments>` segment of a (possibly dotted) type name.
class _TypeNameSegment {
  final String identifier;
  final List<_ParsedTypeReference> typeArguments;

  _TypeNameSegment(this.identifier, this.typeArguments);

  String get text => typeArguments.isEmpty
      ? identifier
      : '$identifier<${typeArguments.map((argument) => argument.canonicalText).join(',')}>';
}

/// An intermediate parsed type reference: `segment(.segment)*` followed by
/// zero or more `[]` array dimensions.
class _ParsedTypeReference {
  final List<_TypeNameSegment> segments;
  final int arrayDimensions;

  _ParsedTypeReference(this.segments, this.arrayDimensions);

  String get canonicalText =>
      segments.map((segment) => segment.text).join('.') +
      ('[]' * arrayDimensions);

  ObjectTypeReference toReference() {
    // `Type[]` is sugar for `List<Type>`: each array dimension peels off into
    // a list whose raw declaration keeps the brackets of that level.
    if (arrayDimensions > 0) {
      final elementType = _ParsedTypeReference(segments, arrayDimensions - 1);
      return ListObjectType(elementType.toReference(), canonicalText);
    }
    // Collection/generic classification only inspects the first segment: a
    // dotted generic such as `Database.Batchable<Object>` is a plain
    // reference of the full text, not a generic: only its outermost name
    // could be a collection, and a dotted name never is.
    final first = segments.first;
    final firstName = first.identifier.toLowerCase();
    if (firstName == 'list' && first.typeArguments.isNotEmpty) {
      return ListObjectType(
          first.typeArguments[0].toReference(), canonicalText);
    }
    if (firstName == 'set' && first.typeArguments.isNotEmpty) {
      return SetObjectType(first.typeArguments[0].toReference(), canonicalText);
    }
    if (firstName == 'map' && first.typeArguments.length >= 2) {
      return MapObjectType(first.typeArguments[0].toReference(),
          first.typeArguments[1].toReference(), canonicalText);
    }
    if (first.typeArguments.isNotEmpty) {
      return GenericObjectType(first.identifier,
          first.typeArguments[0].toReference(), canonicalText);
    }
    return ReferenceObjectType(canonicalText);
  }
}

/// A parsed declaration prefix: the doc comments, annotations and raw
/// modifier keywords that precede a declaration, in source order.
class _DeclarationPrefix {
  final List<DocComment> docComments;
  final List<Annotation> annotations;
  final List<String> modifierKeywords;

  _DeclarationPrefix(this.docComments, this.annotations, this.modifierKeywords);

  /// The doc comment documenting the declaration itself: the closest one,
  /// skipping doc comments that are really group boundaries. When an author
  /// stacks several doc comments on one declaration, the nearest wins.
  DocComment? get documentationComment {
    for (final docComment in docComments.reversed) {
      if (_groupEventFromDocComment(docComment) == null) {
        return docComment;
      }
    }
    return null;
  }

  String? get rawDocumentationComment => documentationComment?.rawDeclaration;

  /// Group boundaries expressed as doc comments within this prefix, in
  /// source order.
  List<_ClassBodyEvent> get groupEvents => [
        for (final docComment in docComments)
          if (_groupEventFromDocComment(docComment) case final event?) event,
      ];

  /// Classifies the raw modifier keywords now that the declaration kind is
  /// known. [isMember] steers `virtual`/`abstract` toward member modifiers
  /// (methods) instead of class modifiers (types).
  DeclarationDescriptor descriptor({bool isMember = false}) {
    return DeclarationDescriptor(accessModifiers: <dynamic>[
      ...annotations,
      ...modifierKeywords
          .map((keyword) => modifierFromKeyword(keyword, isMember: isMember)),
    ]);
  }
}

/// One collected item of a declaration prefix.
sealed class _PrefixItem {}

final class _DocCommentItem extends _PrefixItem {
  final DocComment docComment;

  _DocCommentItem(this.docComment);
}

final class _AnnotationItem extends _PrefixItem {
  final Annotation annotation;

  _AnnotationItem(this.annotation);
}

final class _ModifierKeywordItem extends _PrefixItem {
  final String keyword;

  _ModifierKeywordItem(this.keyword);
}
