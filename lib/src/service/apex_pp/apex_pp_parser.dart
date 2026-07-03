import 'package:petitparser/petitparser.dart';

import 'package:apex_reflection/src/model/members.dart';
import 'package:apex_reflection/src/model/modifiers.dart';
import 'package:apex_reflection/src/model/type_references.dart';
import 'package:apex_reflection/src/model/types.dart';
import 'package:apex_reflection/src/service/apex_listener.dart' show DeclarationDescriptor;
import 'package:apex_reflection/src/service/utils/parsing/parsing_utils.dart';

/// petitparser prototype replacing the ANTLR Apex parser.
///
/// It parses only the *declaration structure* needed for reflection — types,
/// members, modifiers, annotations, doc comments and signatures. Method /
/// constructor / property / trigger bodies are skipped as balanced blocks
/// (their contents are irrelevant to the produced model).
///
/// Model objects are constructed directly via their plain constructors, so the
/// ANTLR-coupled `ObjectTypeReference(TypeRefContext)` factory and
/// `Annotation.fromAnnotationContext` are left untouched for the legacy path.
class ApexPpParser {
  static final _Grammar _grammar = _Grammar();

  static TypeMirror parseType(String body) {
    final result = _grammar.compilationUnit.parse(body.trim());
    if (result is Failure) {
      throw Exception(
          'Error parsing Apex Body. ${result.message} at ${result.position}');
    }
    return result.value;
  }

  static TriggerMirror parseTrigger(String body) {
    final result = _grammar.triggerUnit.parse(body.trim());
    if (result is Failure) {
      throw Exception(
          'Error parsing Apex Body. ${result.message} at ${result.position}');
    }
    return result.value;
  }
}

/// A modifier keyword token wrapper so [getModifierFromStringDeclaration] (which
/// reads `.text`) can be reused without an ANTLR context.
class _Kw {
  final String text;
  _Kw(this.text);
}

/// Intermediate parsed type: `name<args>[]…`.
class _PType {
  final String name;
  final List<_PType> args;
  final int arrayDims;
  _PType(this.name, this.args, this.arrayDims);

  String get canonicalText {
    final base = args.isEmpty
        ? name
        : '$name<${args.map((a) => a.canonicalText).join(',')}>';
    return base + ('[]' * arrayDims);
  }

  ObjectTypeReference toReference() {
    if (arrayDims > 0) {
      final inner = _PType(name, args, arrayDims - 1);
      // Reproduce the ANTLR quirk: the mutable parse tree has its `[]` children
      // stripped during recursion, so every array level's rawDeclaration ends
      // up as the bracket-less base text.
      final rawWithoutBrackets = _PType(name, args, 0).canonicalText;
      return ListObjectType(inner.toReference(), rawWithoutBrackets);
    }
    final lower = name.toLowerCase();
    if (lower == 'list' && args.isNotEmpty) {
      return ListObjectType(args[0].toReference(), canonicalText);
    }
    if (lower == 'set' && args.isNotEmpty) {
      return SetObjectType(args[0].toReference(), canonicalText);
    }
    if (lower == 'map' && args.length >= 2) {
      return MapObjectType(
          args[0].toReference(), args[1].toReference(), canonicalText);
    }
    if (args.isNotEmpty) {
      return GenericObjectType(name, args[0].toReference(), canonicalText);
    }
    return ReferenceObjectType(canonicalText);
  }
}

/// A collected declaration prefix: leading doc comment + modifiers/annotations.
class _Prefix {
  final String? doc;
  final List<dynamic> modifiers; // Annotation | enum-modifier | null
  _Prefix(this.doc, this.modifiers);

  DeclarationDescriptor descriptor({bool isMember = false}) =>
      DeclarationDescriptor(accessModifiers: modifiers, docComment: doc);
}

class _Grammar {
  late final Parser<TypeMirror> compilationUnit;
  late final Parser<TriggerMirror> triggerUnit;

  // Recursive references.
  final SettableParser _typeRef = undefined();
  final SettableParser _typeDeclaration = undefined();

  _Grammar() {
    _build();
  }

  // ---- Lexical building blocks -------------------------------------------

  Parser get _wordChar => pattern('a-zA-Z0-9_\$');

  Parser get _lineComment =>
      (string('//') & pattern('^\n\r').star());

  Parser get _docComment =>
      (string('/**') & (string('*/').not() & any()).star() & string('*/'))
          .flatten();

  // Block comment that is NOT a doc comment.
  Parser get _blockComment => (_docComment.not() &
      string('/*') &
      (string('*/').not() & any()).star() &
      string('*/'));

  // Hidden whitespace: whitespace + non-doc comments (never a doc comment).
  Parser get _hws =>
      (whitespace() | _lineComment | _blockComment).star();

  /// Match [p], then consume trailing hidden whitespace; return p's value.
  Parser<T> _t<T>(Parser<T> p) => (p & _hws).map((v) => v[0] as T);

  Parser<String> _kw(String word) =>
      _t((string(word, ignoreCase: true) & _wordChar.not()).map((_) => word));

  Parser<String> get _identifier => _t((pattern('a-zA-Z_\$') & _wordChar.star())
      .flatten()
      .map((s) => s));

  Parser<String> _sym(String s) => _t(string(s).map((_) => s));

  // ---- Type references ---------------------------------------------------

  void _buildTypeRef() {
    // typeName: id ('.' id)*  with optional <args>
    final typeArgs =
        (_sym('<') & _typeList() & _sym('>'));

    final qualified = _t((pattern('a-zA-Z_\$') &
            _wordChar.star() &
            (char('.') & pattern('a-zA-Z_\$') & _wordChar.star()).star())
        .flatten());

    final typeName = (qualified & typeArgs.optional()).map((v) {
      final name = (v[0] as String).trim();
      final args = v[1] == null
          ? <_PType>[]
          : ((v[1] as List)[1] as List).cast<_PType>();
      return _PType(name, args, 0);
    });

    final arrayDims = (_sym('[') & _sym(']')).star();

    _typeRef.set((typeName & arrayDims).map((v) {
      final base = v[0] as _PType;
      final dims = (v[1] as List).length;
      return _PType(base.name, base.args, dims);
    }));
  }

  Parser _typeList() => (_typeRef & (_sym(',') & _typeRef).star()).map((v) {
        final list = <_PType>[v[0] as _PType];
        for (final rest in v[1] as List) {
          list.add(rest[1] as _PType);
        }
        return list;
      });

  // ---- Annotations & modifiers -------------------------------------------

  Parser<Annotation> get _annotation {
    // @Name  or  @Name( ... )
    final balancedParens = _balanced('(', ')');
    return _t((char('@') &
            (pattern('a-zA-Z_\$') & _wordChar.star()).flatten() &
            _hws &
            balancedParens.optional())
        .map((v) {
      final name = v[1] as String;
      final rawArgs = v[3] == null ? '' : _stripWsOutsideStrings(v[3] as String);
      final annotation = Annotation('@$name$rawArgs');
      annotation.elementValues = _parseElementValues(rawArgs);
      return annotation;
    }));
  }

  /// Removes whitespace between tokens but preserves it inside single-quoted
  /// string literals — mirrors ANTLR's token-concatenated `.text`.
  static String _stripWsOutsideStrings(String s) {
    final sb = StringBuffer();
    var inString = false;
    for (var i = 0; i < s.length; i++) {
      final c = s[i];
      if (inString) {
        sb.write(c);
        if (c == '\\' && i + 1 < s.length) {
          sb.write(s[i + 1]);
          i++;
        } else if (c == "'") {
          inString = false;
        }
      } else if (c == "'") {
        inString = true;
        sb.write(c);
      } else if (!RegExp(r'\s').hasMatch(c)) {
        sb.write(c);
      }
    }
    return sb.toString();
  }

  List<AnnotationElementValue> _parseElementValues(String rawArgs) {
    if (rawArgs.length < 2) return [];
    final inner = rawArgs.substring(1, rawArgs.length - 1);
    if (!inner.contains('=')) return [];
    final result = <AnnotationElementValue>[];
    // rawArgs already whitespace-stripped: pairs are key=value separated by
    // nothing meaningful except the next identifier. Split conservatively on
    // patterns like key='value' / key=value.
    final matches =
        RegExp(r"([A-Za-z0-9_\$]+)=('[^']*'|[^\s']+?)(?=[A-Za-z0-9_\$]+=|$)")
            .allMatches(inner);
    for (final m in matches) {
      result.add(AnnotationElementValue(m.group(1)!, m.group(2)!));
    }
    return result;
  }

  static const _accessKw = ['public', 'private', 'protected', 'global'];
  static const _classKw = ['virtual', 'abstract'];
  static const _memberKw = [
    'static',
    'webservice',
    'final',
    'override',
    'testmethod',
    'transient',
  ];

  /// A single modifier keyword (including two-word sharing modifiers),
  /// normalised to the ANTLR space-stripped form and resolved to an enum.
  Parser _modifierKeyword({required bool isMember}) {
    final sharing = (_kw('with') & _kw('sharing')).map((_) => 'withsharing') |
        (_kw('without') & _kw('sharing')).map((_) => 'withoutsharing') |
        (_kw('inherited') & _kw('sharing')).map((_) => 'inheritedsharing');

    final singles = [
      ..._accessKw,
      ..._classKw,
      ..._memberKw,
    ].map(_kw).toList().toChoiceParser();

    return (sharing | singles).map(
        (word) => getModifierFromStringDeclaration(_Kw(word as String),
            isMember: isMember));
  }

  /// Collect the declaration prefix: doc comments, annotations, modifiers in
  /// any order. The last doc comment wins (matches the ANTLR hidden-channel
  /// behaviour of taking the closest doc comment).
  Parser<_Prefix> _prefix({required bool isMember}) {
    final item = _t(_docComment).map((d) => _PrefixItem.doc(d)) |
        _annotation.map((a) => _PrefixItem.mod(a)) |
        _modifierKeyword(isMember: isMember).map((m) => _PrefixItem.mod(m));
    return (_hws & item.star()).map((v) {
      final items = (v[1] as List).cast<_PrefixItem>();
      String? doc;
      final mods = <dynamic>[];
      for (final it in items) {
        if (it.isDoc) {
          doc = it.value as String;
        } else if (it.value != null) {
          mods.add(it.value);
        }
      }
      return _Prefix(doc, mods);
    });
  }

  // ---- Balanced skippers -------------------------------------------------

  /// Matches a balanced region delimited by [open]/[close], honouring Apex
  /// string literals and comments, returning the raw matched text.
  Parser<String> _balanced(String open, String close) {
    final inner = undefined();
    final stringLiteral =
        (char("'") & (string("\\").seq(any()) | pattern("^'\\\\")).star() & char("'"));
    final other = (char(open) | char(close)).not() &
        (_lineComment | _blockComment | _docComment | stringLiteral | any());
    inner.set((char(open) &
            (inner | other).star() &
            char(close)));
    return inner.flatten();
  }

  Parser<String> get _block => _t(_balanced('{', '}'));

  Parser<String> get _parens => _t(_balanced('(', ')'));

  // ---- Formal parameters -------------------------------------------------

  Parser<List<ParameterMirror>> get _formalParameters {
    final param = (_paramModifiers & _typeRef & _identifier).map((v) {
      final type = (v[1] as _PType).toReference();
      final name = v[2] as String;
      return ParameterMirror(name: name, typeReference: type);
    });
    final list = (param & (_sym(',') & param).star()).map((v) {
      final out = <ParameterMirror>[v[0] as ParameterMirror];
      for (final rest in v[1] as List) {
        out.add(rest[1] as ParameterMirror);
      }
      return out;
    });
    return (_sym('(') & list.optional() & _sym(')'))
        .map((v) => (v[1] as List<ParameterMirror>?) ?? <ParameterMirror>[]);
  }

  Parser get _paramModifiers =>
      (_kw('final') | _annotation).star();

  // ---- Members -----------------------------------------------------------

  Parser<void Function(ClassMirror)> get _classMember {
    final voidOrType = _kw('void').map((_) => null) | _typeRef.map((t) => t);

    // method: (void|type) id ( params ) (block | ;)
    final method = (_prefix(isMember: true) &
            voidOrType &
            _identifier &
            _formalParameters &
            (_block | _sym(';')))
        .map<void Function(ClassMirror)>((v) {
      final prefix = v[0] as _Prefix;
      final desc = prefix.descriptor(isMember: true);
      final ret = v[1] == null
          ? ReferenceObjectType('void')
          : (v[1] as _PType).toReference();
      final method = MethodMirror(
          name: v[2] as String, rawDocComment: prefix.doc, typeReference: ret)
        ..parameters = v[3] as List<ParameterMirror>
        ..accessModifier = desc.accessModifier
        ..annotations = desc.annotations
        ..memberModifiers = desc.memberModifiers;
      return (ClassMirror c) => c.addMethod(method);
    });

    // constructor: id ( params ) block   (no return type)
    final constructor = (_prefix(isMember: true) &
            _identifier &
            _formalParameters &
            _block)
        .map<void Function(ClassMirror)>((v) {
      final prefix = v[0] as _Prefix;
      final desc = prefix.descriptor(isMember: true);
      final ctor = ConstructorMirror(rawDocComment: prefix.doc)
        ..parameters = v[2] as List<ParameterMirror>
        ..accessModifier = desc.accessModifier
        ..annotations = desc.annotations;
      return (ClassMirror c) => c.addConstructor(ctor);
    });

    // property: type id { ... }
    final property = (_prefix(isMember: true) & _typeRef & _identifier & _block)
        .map<void Function(ClassMirror)>((v) {
      final prefix = v[0] as _Prefix;
      final desc = prefix.descriptor(isMember: true);
      final prop = PropertyMirror(
          name: v[2] as String,
          rawDocComment: prefix.doc,
          typeReference: (v[1] as _PType).toReference())
        ..accessModifier = desc.accessModifier
        ..annotations = desc.annotations
        ..memberModifiers = desc.memberModifiers;
      return (ClassMirror c) {
        c.addProperty(prop);
      };
    });

    // field: type declarators ;
    final field =
        (_prefix(isMember: true) & _typeRef & _variableDeclarators & _sym(';'))
            .map<void Function(ClassMirror)>((v) {
      final prefix = v[0] as _Prefix;
      final desc = prefix.descriptor(isMember: true);
      final type = (v[1] as _PType).toReference();
      final names = v[2] as List<String>;
      final fields = names
          .map((name) => FieldMirror(
              name: name, rawDocComment: prefix.doc, typeReference: type)
            ..accessModifier = desc.accessModifier
            ..annotations = desc.annotations
            ..memberModifiers = desc.memberModifiers)
          .toList();
      return (ClassMirror c) => c.fields.addAll(fields);
    });

    // inner type: class / interface / enum
    final innerType =
        _typeDeclaration.map<void Function(ClassMirror)>((type) {
      return (ClassMirror c) {
        switch (type) {
          case ClassMirror():
            c.addClass(type);
          case InterfaceMirror():
            c.addInterface(type);
          case EnumMirror():
            c.addEnum(type);
          default:
        }
      };
    });

    // static / instance initializer block, or stray semicolon.
    final initializer =
        (_prefix(isMember: true) & _block).map<void Function(ClassMirror)>(
            (_) => (ClassMirror c) {});
    final semi = _sym(';').map<void Function(ClassMirror)>((_) => (c) {});

    return [innerType, method, constructor, property, field, initializer, semi]
        .toChoiceParser();
  }

  Parser<List<String>> get _variableDeclarators {
    // id ('=' value)?  (',' id ('=' value)?)*
    final value = _balancedValue();
    final declarator = (_identifier & (_sym('=') & value).optional())
        .map((v) => v[0] as String);
    return (declarator & (_sym(',') & declarator).star()).map((v) {
      final out = <String>[v[0] as String];
      for (final rest in v[1] as List) {
        out.add(rest[1] as String);
      }
      return out;
    });
  }

  /// A field initializer value: everything up to a top-level `,` or `;`,
  /// honouring nested (), {}, [] and string literals.
  Parser _balancedValue() {
    final stringLiteral =
        (char("'") & (string("\\").seq(any()) | pattern("^'\\\\")).star() & char("'"));
    final nested = _balanced('(', ')') | _balanced('{', '}') | _balanced('[', ']');
    final chunk = (pattern('^,;()\\[\\]{}\'')).plus() |
        stringLiteral.flatten() |
        nested;
    return _t((nested | stringLiteral | chunk).plus().flatten());
  }

  // ---- Type declarations -------------------------------------------------

  void _buildTypeDeclaration() {
    final classDecl = (_prefix(isMember: false) &
            _kw('class') &
            _identifier &
            (_kw('extends') & _typeRef).optional() &
            (_kw('implements') & _typeList()).optional() &
            _sym('{') &
            _classMember.star() &
            _sym('}'))
        .map<TypeMirror>((v) {
      final prefix = v[0] as _Prefix;
      final desc = prefix.descriptor();
      final name = v[2] as String;
      final ext = v[3] == null ? null : (v[3][1] as _PType).canonicalText;
      final impls = v[4] == null
          ? <String>[]
          : (v[4][1] as List<_PType>).map((t) => t.canonicalText).toList();
      final cls = ClassMirror(
          name: name,
          rawDocComment: prefix.doc,
          extendedClass: ext,
          implementedInterfaces: impls)
        ..accessModifier = desc.accessModifier
        ..sharingModifier = desc.sharingModifier
        ..classModifier = desc.classModifier
        ..annotations = desc.annotations;
      for (final apply in (v[6] as List).cast<void Function(ClassMirror)>()) {
        apply(cls);
      }
      return cls;
    });

    final interfaceDecl = (_prefix(isMember: false) &
            _kw('interface') &
            _identifier &
            (_kw('extends') & _typeList()).optional() &
            _sym('{') &
            _interfaceMethod.star() &
            _sym('}'))
        .map<TypeMirror>((v) {
      final prefix = v[0] as _Prefix;
      final desc = prefix.descriptor();
      final ext = v[3] == null
          ? <String>[]
          : (v[3][1] as List<_PType>).map((t) => t.canonicalText).toList();
      final iface = InterfaceMirror(
          name: v[2] as String,
          rawDocComment: prefix.doc,
          extendedInterfaces: ext)
        ..accessModifier = desc.accessModifier
        ..sharingModifier = desc.sharingModifier
        ..annotations = desc.annotations;
      for (final build in (v[5] as List).cast<MethodMirror Function(InterfaceMirror)>()) {
        iface.methods.add(build(iface));
      }
      return iface;
    });

    final enumConstant = (_prefix(isMember: true) & _identifier).map((v) {
      final prefix = v[0] as _Prefix;
      return EnumValue(name: v[1] as String, rawDocComment: prefix.doc);
    });
    final enumDecl = (_prefix(isMember: false) &
            _kw('enum') &
            _identifier &
            _sym('{') &
            (enumConstant & (_sym(',') & enumConstant).star()).optional() &
            _sym('}'))
        .map<TypeMirror>((v) {
      final prefix = v[0] as _Prefix;
      final desc = prefix.descriptor();
      final e = EnumMirror(name: v[2] as String, rawDocComment: prefix.doc)
        ..accessModifier = desc.accessModifier
        ..annotations = desc.annotations;
      if (v[4] != null) {
        e.addValue(v[4][0] as EnumValue);
        for (final rest in v[4][1] as List) {
          e.addValue(rest[1] as EnumValue);
        }
      }
      return e;
    });

    _typeDeclaration.set([classDecl, interfaceDecl, enumDecl].toChoiceParser());
  }

  Parser<MethodMirror Function(InterfaceMirror)> get _interfaceMethod {
    final voidOrType = _kw('void').map((_) => null) | _typeRef.map((t) => t);
    return (_prefix(isMember: true) &
            voidOrType &
            _identifier &
            _formalParameters &
            _sym(';'))
        .map((v) {
      final prefix = v[0] as _Prefix;
      final own = prefix.descriptor(isMember: true).annotations;
      final ret = v[1] == null
          ? ReferenceObjectType('void')
          : (v[1] as _PType).toReference();
      return (InterfaceMirror iface) => MethodMirror(
          name: v[2] as String,
          rawDocComment: prefix.doc,
          typeReference: ret)
        ..parameters = v[3] as List<ParameterMirror>
        ..accessModifier = iface.accessModifier
        ..annotations = [...iface.annotations, ...own];
    });
  }

  // ---- Trigger -----------------------------------------------------------

  void _buildTrigger() {
    final event = (_identifier & _identifier.star()).map((v) {
      final parts = <String>[v[0] as String, ...(v[1] as List).cast<String>()];
      return parts.join();
    });
    final events =
        (_sym('(') & event & (_sym(',') & event).star() & _sym(')')).map((v) {
      final out = <String>[v[1] as String];
      for (final rest in v[2] as List) {
        out.add(rest[1] as String);
      }
      return out;
    });

    triggerUnit = (_prefix(isMember: false) &
            _kw('trigger') &
            _identifier &
            _kw('on') &
            _identifier &
            _kw('bulk').optional() &
            events &
            _block)
        .end()
        .map((v) {
      final prefix = v[0] as _Prefix;
      return TriggerMirror(
        name: v[2] as String,
        objectName: v[4] as String,
        events: v[6] as List<String>,
        rawDocComment: prefix.doc,
      );
    });
  }

  // ---- Assembly ----------------------------------------------------------

  void _build() {
    _buildTypeRef();
    _buildTypeDeclaration();
    _buildTrigger();
    compilationUnit = (_typeDeclaration & _hws).end().map((v) => v[0] as TypeMirror);
  }
}

class _PrefixItem {
  final bool isDoc;
  final dynamic value;
  _PrefixItem._(this.isDoc, this.value);
  factory _PrefixItem.doc(String d) => _PrefixItem._(true, d);
  factory _PrefixItem.mod(dynamic m) => _PrefixItem._(false, m);
}
