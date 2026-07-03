import 'package:petitparser/petitparser.dart';

import 'package:apex_reflection/src/model/doc_comment.dart';
import 'package:apex_reflection/src/model/members.dart';
import 'package:apex_reflection/src/model/modifiers.dart';
import 'package:apex_reflection/src/model/type_references.dart';
import 'package:apex_reflection/src/model/types.dart';
import 'package:apex_reflection/src/service/apex_listener.dart' show DeclarationDescriptor;
import 'package:apex_reflection/src/service/apexdoc/apexdoc_pp_parser.dart';

/// petitparser prototype replacing the ANTLR Apex parser.
///
/// It parses only the *declaration structure* needed for reflection — types,
/// members, modifiers, annotations, doc comments and signatures. Method /
/// constructor / property / trigger bodies are skipped as balanced blocks
/// (their contents are irrelevant to the produced model).
///
/// **Single grammar.** The Apexdoc doc-comment parser
/// ([ApexdocPpParser.wrapped]) is composed directly into this grammar, so a
/// doc comment is parsed from the source stream in the *same* parse that reads
/// the Apex declarations — there is no separate doc-parsing pass.
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

/// A collected declaration prefix: leading doc comment (already parsed inline),
/// annotations, and raw modifier keywords.
///
/// The prefix is deliberately **isMember-agnostic** — modifier keywords are
/// kept as raw strings and only classified into access/sharing/class/member
/// modifiers by [descriptor] once we know whether the following declaration is
/// a member or a type. That is what lets the *same* parsed prefix serve both a
/// class member and an inner type.
class _Prefix {
  final DocComment? doc;
  final List<Annotation> annotations;
  final List<String> modifierKeywords;
  _Prefix(this.doc, this.annotations, this.modifierKeywords);

  String? get rawDoc => doc?.rawDeclaration;

  DeclarationDescriptor descriptor({bool isMember = false}) {
    final accessModifiers = <dynamic>[
      ...annotations,
      ...modifierKeywords
          .map((kw) => getModifierFromStringDeclaration(_Kw(kw), isMember: isMember)),
    ];
    return DeclarationDescriptor(accessModifiers: accessModifiers);
  }
}

class _Grammar {
  late final Parser<TypeMirror> compilationUnit;
  late final Parser<TriggerMirror> triggerUnit;
  late final Parser<_Prefix> _prefix;

  // Recursive references (built once, resolved in _build).
  final SettableParser _typeRef = undefined();
  final SettableParser _typeDeclaration = undefined();
  final SettableParser _typeDeclarationRest = undefined();
  final SettableParser _classMember = undefined();

  _Grammar() {
    _build();
  }

  // ---- Lexical building blocks -------------------------------------------

  Parser get _wordChar => pattern('a-zA-Z0-9_\$');

  Parser get _lineComment => (string('//') & pattern('^\n\r').star());

  // Full doc-comment matcher (used only to *skip* docs inside method bodies).
  Parser get _docComment =>
      (string('/**') & (string('*/').not() & any()).star() & string('*/'))
          .flatten();

  // Cheap O(1) discriminator: `/**` not immediately followed by `/` (which
  // would make it the empty block comment `/**/`). Used to keep the block-comment
  // rule from swallowing a real doc comment, without a full scan to `*/`.
  Parser get _docStart => (string('/**') & char('/').not());

  // Block comment that is NOT a doc comment.
  Parser get _blockComment => (_docStart.not() &
      string('/*') &
      (string('*/').not() & any()).star() &
      string('*/'));

  // Hidden whitespace: whitespace + non-doc comments (never a doc comment).
  Parser get _hws => (whitespace() | _lineComment | _blockComment).star();

  /// Match [p], then consume trailing hidden whitespace; return p's value.
  Parser<T> _t<T>(Parser<T> p) => (p & _hws).map((v) => v[0] as T);

  Parser<String> _kw(String word) =>
      _t((string(word, ignoreCase: true) & _wordChar.not()).map((_) => word));

  Parser<String> get _identifier =>
      _t((pattern('a-zA-Z_\$') & _wordChar.star()).flatten());

  Parser<String> _sym(String s) => _t(string(s).map((_) => s));

  // ---- Type references ---------------------------------------------------

  void _buildTypeRef() {
    final typeArgs = (_sym('<') & _typeList() & _sym('>'));

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
  /// normalised to the ANTLR space-stripped form. Classification into an enum
  /// happens later in [_Prefix.descriptor], once isMember is known.
  Parser<String> get _modifierKeyword {
    final sharing = (_kw('with') & _kw('sharing')).map((_) => 'withsharing') |
        (_kw('without') & _kw('sharing')).map((_) => 'withoutsharing') |
        (_kw('inherited') & _kw('sharing')).map((_) => 'inheritedsharing');
    final singles =
        [..._accessKw, ..._classKw, ..._memberKw].map(_kw).toList().toChoiceParser();
    return (sharing | singles).map((w) => w as String);
  }

  /// The shared declaration prefix, parsed **once** per declaration: doc comment
  /// (composed inline via [ApexdocPpParser.wrapped]), annotations, and modifier
  /// keywords, in any order. The last doc comment wins.
  Parser<_Prefix> _buildPrefix() {
    final docItem = _t(ApexdocPpParser.wrapped).map((d) => _Item.doc(d));
    final annoItem = _annotation.map((a) => _Item.anno(a));
    final modItem = _modifierKeyword.map((kw) => _Item.mod(kw));
    final item = docItem | annoItem | modItem;
    return (_hws & item.star()).map((v) {
      DocComment? doc;
      final annos = <Annotation>[];
      final mods = <String>[];
      for (final it in (v[1] as List).cast<_Item>()) {
        if (it.doc != null) {
          doc = it.doc;
        } else if (it.anno != null) {
          annos.add(it.anno!);
        } else if (it.mod != null) {
          mods.add(it.mod!);
        }
      }
      return _Prefix(doc, annos, mods);
    });
  }

  // ---- Balanced skippers -------------------------------------------------

  /// Matches a balanced region delimited by [open]/[close], honouring Apex
  /// string literals and comments, returning the raw matched text.
  Parser<String> _balanced(String open, String close) {
    final inner = undefined();
    final stringLiteral = (char("'") &
        (string("\\").seq(any()) | pattern("^'\\\\")).star() &
        char("'"));
    final other = (char(open) | char(close)).not() &
        (_lineComment | _blockComment | _docComment | stringLiteral | any());
    inner.set((char(open) & (inner | other).star() & char(close)));
    return inner.flatten();
  }

  Parser<String> get _block => _t(_balanced('{', '}'));

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

  Parser get _paramModifiers => (_kw('final') | _annotation).star();

  // ---- Members -----------------------------------------------------------

  /// A `void` / type return marker. Returns null for `void`, a [_PType] else.
  Parser get _voidOrType => _kw('void').map((_) => null) | _typeRef;

  /// Class-body member *without* its prefix. Returns a builder that receives the
  /// already-parsed prefix and the enclosing class.
  Parser<void Function(ClassMirror, _Prefix)> get _classMemberRest {
    // inner type: class / interface / enum
    final innerType =
        _typeDeclarationRest.map<void Function(ClassMirror, _Prefix)>((build) {
      return (ClassMirror c, _Prefix prefix) {
        final type = (build as TypeMirror Function(_Prefix))(prefix);
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

    // method: (void|type) id ( params ) (block | ;)
    final method =
        (_voidOrType & _identifier & _formalParameters & (_block | _sym(';')))
            .map<void Function(ClassMirror, _Prefix)>((v) {
      final ret = v[0] == null
          ? ReferenceObjectType('void')
          : (v[0] as _PType).toReference();
      final name = v[1] as String;
      final params = v[2] as List<ParameterMirror>;
      return (ClassMirror c, _Prefix prefix) {
        final desc = prefix.descriptor(isMember: true);
        c.addMethod(MethodMirror(
            name: name, rawDocComment: prefix.rawDoc, typeReference: ret)
          ..docComment = prefix.doc
          ..parameters = params
          ..accessModifier = desc.accessModifier
          ..annotations = desc.annotations
          ..memberModifiers = desc.memberModifiers);
      };
    });

    // constructor: id ( params ) block   (no return type)
    final constructor = (_identifier & _formalParameters & _block)
        .map<void Function(ClassMirror, _Prefix)>((v) {
      final params = v[1] as List<ParameterMirror>;
      return (ClassMirror c, _Prefix prefix) {
        final desc = prefix.descriptor(isMember: true);
        c.addConstructor(ConstructorMirror(rawDocComment: prefix.rawDoc)
          ..docComment = prefix.doc
          ..parameters = params
          ..accessModifier = desc.accessModifier
          ..annotations = desc.annotations);
      };
    });

    // property: type id { ... }
    final property = (_typeRef & _identifier & _block)
        .map<void Function(ClassMirror, _Prefix)>((v) {
      final type = (v[0] as _PType).toReference();
      final name = v[1] as String;
      return (ClassMirror c, _Prefix prefix) {
        final desc = prefix.descriptor(isMember: true);
        c.addProperty(PropertyMirror(
            name: name, rawDocComment: prefix.rawDoc, typeReference: type)
          ..docComment = prefix.doc
          ..accessModifier = desc.accessModifier
          ..annotations = desc.annotations
          ..memberModifiers = desc.memberModifiers);
      };
    });

    // field: type declarators ;
    final field = (_typeRef & _variableDeclarators & _sym(';'))
        .map<void Function(ClassMirror, _Prefix)>((v) {
      final type = (v[0] as _PType).toReference();
      final names = v[1] as List<String>;
      return (ClassMirror c, _Prefix prefix) {
        final desc = prefix.descriptor(isMember: true);
        for (final name in names) {
          c.fields.add(FieldMirror(
              name: name, rawDocComment: prefix.rawDoc, typeReference: type)
            ..docComment = prefix.doc
            ..accessModifier = desc.accessModifier
            ..annotations = desc.annotations
            ..memberModifiers = desc.memberModifiers);
        }
      };
    });

    // static / instance initializer block, or stray semicolon.
    final initializer =
        _block.map<void Function(ClassMirror, _Prefix)>((_) => (c, p) {});
    final semi =
        _sym(';').map<void Function(ClassMirror, _Prefix)>((_) => (c, p) {});

    return [innerType, method, constructor, property, field, initializer, semi]
        .toChoiceParser();
  }

  Parser<List<String>> get _variableDeclarators {
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
    final stringLiteral = (char("'") &
        (string("\\").seq(any()) | pattern("^'\\\\")).star() &
        char("'"));
    final nested =
        _balanced('(', ')') | _balanced('{', '}') | _balanced('[', ']');
    final chunk = (pattern('^,;()\\[\\]{}\'')).plus() |
        stringLiteral.flatten() |
        nested;
    return _t((nested | stringLiteral | chunk).plus().flatten());
  }

  /// Class-body member = shared prefix (parsed once) + one member body.
  Parser<void Function(ClassMirror)> _buildClassMember() {
    return (_prefix & _classMemberRest).map((v) {
      final prefix = v[0] as _Prefix;
      final apply = v[1] as void Function(ClassMirror, _Prefix);
      return (ClassMirror c) => apply(c, prefix);
    });
  }

  // ---- Type declarations -------------------------------------------------

  void _buildTypeDeclaration() {
    final classRest = (_kw('class') &
            _identifier &
            (_kw('extends') & _typeRef).optional() &
            (_kw('implements') & _typeList()).optional() &
            _sym('{') &
            _classMember.star() &
            _sym('}'))
        .map<TypeMirror Function(_Prefix)>((v) {
      final name = v[1] as String;
      final ext = v[2] == null ? null : (v[2][1] as _PType).canonicalText;
      final impls = v[3] == null
          ? <String>[]
          : (v[3][1] as List<_PType>).map((t) => t.canonicalText).toList();
      final members = (v[5] as List).cast<void Function(ClassMirror)>();
      return (_Prefix prefix) {
        final desc = prefix.descriptor();
        final cls = ClassMirror(
            name: name,
            rawDocComment: prefix.rawDoc,
            extendedClass: ext,
            implementedInterfaces: impls)
          ..docComment = prefix.doc
          ..accessModifier = desc.accessModifier
          ..sharingModifier = desc.sharingModifier
          ..classModifier = desc.classModifier
          ..annotations = desc.annotations;
        for (final apply in members) {
          apply(cls);
        }
        return cls;
      };
    });

    final interfaceRest = (_kw('interface') &
            _identifier &
            (_kw('extends') & _typeList()).optional() &
            _sym('{') &
            _interfaceMethod.star() &
            _sym('}'))
        .map<TypeMirror Function(_Prefix)>((v) {
      final name = v[1] as String;
      final ext = v[2] == null
          ? <String>[]
          : (v[2][1] as List<_PType>).map((t) => t.canonicalText).toList();
      final methods =
          (v[4] as List).cast<MethodMirror Function(InterfaceMirror)>();
      return (_Prefix prefix) {
        final desc = prefix.descriptor();
        final iface = InterfaceMirror(
            name: name, rawDocComment: prefix.rawDoc, extendedInterfaces: ext)
          ..docComment = prefix.doc
          ..accessModifier = desc.accessModifier
          ..sharingModifier = desc.sharingModifier
          ..annotations = desc.annotations;
        for (final build in methods) {
          iface.methods.add(build(iface));
        }
        return iface;
      };
    });

    final enumConstant = (_prefix & _identifier).map((v) {
      final prefix = v[0] as _Prefix;
      return EnumValue(name: v[1] as String, rawDocComment: prefix.rawDoc)
        ..docComment = prefix.doc;
    });
    final enumRest = (_kw('enum') &
            _identifier &
            _sym('{') &
            (enumConstant & (_sym(',') & enumConstant).star()).optional() &
            _sym('}'))
        .map<TypeMirror Function(_Prefix)>((v) {
      final name = v[1] as String;
      final consts = <EnumValue>[];
      if (v[3] != null) {
        consts.add(v[3][0] as EnumValue);
        for (final rest in v[3][1] as List) {
          consts.add(rest[1] as EnumValue);
        }
      }
      return (_Prefix prefix) {
        final desc = prefix.descriptor();
        final e = EnumMirror(name: name, rawDocComment: prefix.rawDoc)
          ..docComment = prefix.doc
          ..accessModifier = desc.accessModifier
          ..annotations = desc.annotations;
        for (final c in consts) {
          e.addValue(c);
        }
        return e;
      };
    });

    _typeDeclarationRest
        .set([classRest, interfaceRest, enumRest].toChoiceParser());
    _typeDeclaration.set((_prefix & _typeDeclarationRest).map((v) {
      final prefix = v[0] as _Prefix;
      final build = v[1] as TypeMirror Function(_Prefix);
      return build(prefix);
    }));
  }

  Parser<MethodMirror Function(InterfaceMirror)> get _interfaceMethod {
    final rest = (_voidOrType & _identifier & _formalParameters & _sym(';'))
        .map((v) {
      final ret = v[0] == null
          ? ReferenceObjectType('void')
          : (v[0] as _PType).toReference();
      final name = v[1] as String;
      final params = v[2] as List<ParameterMirror>;
      return (InterfaceMirror iface, _Prefix prefix) {
        final own = prefix.descriptor(isMember: true).annotations;
        return MethodMirror(
            name: name, rawDocComment: prefix.rawDoc, typeReference: ret)
          ..docComment = prefix.doc
          ..parameters = params
          ..accessModifier = iface.accessModifier
          ..annotations = [...iface.annotations, ...own];
      };
    });
    return (_prefix & rest).map((v) {
      final prefix = v[0] as _Prefix;
      final build = v[1] as MethodMirror Function(InterfaceMirror, _Prefix);
      return (InterfaceMirror iface) => build(iface, prefix);
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

    triggerUnit = (_prefix &
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
        rawDocComment: prefix.rawDoc,
      )..docComment = prefix.doc;
    });
  }

  // ---- Assembly ----------------------------------------------------------

  void _build() {
    _buildTypeRef();
    _prefix = _buildPrefix();
    _classMember.set(_buildClassMember());
    _buildTypeDeclaration();
    _buildTrigger();
    compilationUnit =
        (_typeDeclaration & _hws).end().map((v) => v[0] as TypeMirror);
  }
}

/// One item collected by the declaration prefix (exactly one field is set).
class _Item {
  final DocComment? doc;
  final Annotation? anno;
  final String? mod;
  _Item._(this.doc, this.anno, this.mod);
  factory _Item.doc(DocComment d) => _Item._(d, null, null);
  factory _Item.anno(Annotation a) => _Item._(null, a, null);
  factory _Item.mod(String m) => _Item._(null, null, m);
}
