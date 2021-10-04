import 'package:apexdocs_dart/src/model/declaration_mirror.dart';
import 'package:apexdocs_dart/src/model/doc_comment.dart';
import 'package:apexdocs_dart/src/model/modifiers.dart';
import 'package:json_annotation/json_annotation.dart';

part 'members.g.dart';

/// Represents a member of a class or interface, like properties, fields,
/// constructors or methods.
abstract class MemberMirror extends DeclarationMirror
    with MemberModifiersAwareness {
  final String type;

  MemberMirror(
      {required String name, String? rawDocComment, required this.type})
      : super(name: name, rawDocComment: rawDocComment);
}

/// Represents a property declaration.
@JsonSerializable()
class PropertyMirror extends MemberMirror {
  PropertyMirror(
      {required String name, String? rawDocComment, required String type})
      : super(name: name, rawDocComment: rawDocComment, type: type);

  factory PropertyMirror.fromJson(Map<String, dynamic> json) =>
      _$PropertyMirrorFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyMirrorToJson(this);
}

/// Represents a field declaration.
@JsonSerializable()
class FieldMirror extends MemberMirror {
  FieldMirror(
      {required String name, String? rawDocComment, required String type})
      : super(name: name, rawDocComment: rawDocComment, type: type);

  factory FieldMirror.fromJson(Map<String, dynamic> json) =>
      _$FieldMirrorFromJson(json);

  Map<String, dynamic> toJson() => _$FieldMirrorToJson(this);
}

/// Allows for the support of parameters.
mixin ParameterAwareness {
  List<ParameterMirror> _parameters = [];

  List<ParameterMirror> get parameters => _parameters;

  set parameters(List<ParameterMirror> value) {
    for (var element in value) {
      element.parent = this;
    }
    _parameters = value;
  }

  void addParameter(ParameterMirror parameter) {
    parameter.parent = this;
    _parameters.add(parameter);
  }
}

/// Represents a method declaration.
@JsonSerializable()
class MethodMirror extends MemberMirror with ParameterAwareness {
  MethodMirror(
      {required String name, String? rawDocComment, String type = 'void'})
      : super(name: name, rawDocComment: rawDocComment, type: type);

  factory MethodMirror.fromJson(Map<String, dynamic> json) =>
      _$MethodMirrorFromJson(json);

  Map<String, dynamic> toJson() => _$MethodMirrorToJson(this);

  get isVoid => type.toLowerCase() == 'void';
}

/// Represents a parameter declaration.
@JsonSerializable()
class ParameterMirror with MemberModifiersAwareness {
  @JsonKey(ignore: true)
  ParameterAwareness? parent;

  String name;
  String type;

  ParameterMirror({required this.name, required this.type});

  factory ParameterMirror.fromJson(Map<String, dynamic> json) =>
      _$ParameterMirrorFromJson(json);

  Map<String, dynamic> toJson() => _$ParameterMirrorToJson(this);

  String? get docDescription {
    if (parent is DocsCommentAwareness) {
      return (parent as DocsCommentAwareness)
          .docComment
          ?.paramAnnotations
          .firstWhere((element) => element.paramName == name)
          .body;
    }
    return null;
  }
}

/// Represents a constructor declaration.
@JsonSerializable()
class ConstructorMirror extends DeclarationMirror with ParameterAwareness {
  _initialize([String? rawDocComment]) {
    this.rawDocComment = rawDocComment;
  }

  ConstructorMirror({String? rawDocComment}) : super(name: '<init>') {
    _initialize(rawDocComment);
  }

  factory ConstructorMirror.fromJson(Map<String, dynamic> json) =>
      _$ConstructorMirrorFromJson(json);

  Map<String, dynamic> toJson() => _$ConstructorMirrorToJson(this);
}
