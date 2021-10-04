import 'package:apexdocs_dart/src/model/declaration_mirror.dart';
import 'package:json_annotation/json_annotation.dart';

part 'members.g.dart';

/// Represents a member of a class or interface, like properties, fields,
/// constructors or methods.
abstract class MemberMirror extends DeclarationMirror {
  final String type;

  MemberMirror(
      {required String name,
      String? docComment,
      required this.type,
      List<String> accessModifiers = const []})
      : super(
            name: name,
            docComment: docComment,
            accessModifiers: accessModifiers);
}

/// Represents a property declaration.
@JsonSerializable()
class PropertyMirror extends MemberMirror {
  PropertyMirror(
      {required String name,
      String? docComment,
      required String type,
      List<String> accessModifiers = const []})
      : super(
            name: name,
            docComment: docComment,
            type: type,
            accessModifiers: accessModifiers);

  factory PropertyMirror.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyToJson(this);
}

/// Represents a field declaration.
@JsonSerializable()
class FieldMirror extends MemberMirror {
  FieldMirror(
      {required String name,
      String? docComment,
      required String type,
      List<String> accessModifiers = const []})
      : super(
            name: name,
            docComment: docComment,
            type: type,
            accessModifiers: accessModifiers);

  factory FieldMirror.fromJson(Map<String, dynamic> json) =>
      _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);
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
      {required String name,
      String? docComment,
      String type = 'void',
      List<String> accessModifiers = const []})
      : super(
            name: name,
            docComment: docComment,
            type: type,
            accessModifiers: accessModifiers);

  factory MethodMirror.fromJson(Map<String, dynamic> json) =>
      _$MethodFromJson(json);

  Map<String, dynamic> toJson() => _$MethodToJson(this);

  get isVoid => type.toLowerCase() == 'void';
}

/// Represents a parameter declaration.
@JsonSerializable()
class ParameterMirror extends MemberMirror {
  @JsonKey(ignore: true)
  ParameterAwareness? parent;

  ParameterMirror(
      {required String name,
      required String type,
      List<String> accessModifiers = const []})
      : super(name: name, type: type, accessModifiers: accessModifiers);

  factory ParameterMirror.fromJson(Map<String, dynamic> json) =>
      _$ParameterFromJson(json);

  Map<String, dynamic> toJson() => _$ParameterToJson(this);

  @override
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
  _initialize(dynamic accessModifiers, [String? docComment]) {
    if (accessModifiers is List<dynamic>) {
      accessModifiers = accessModifiers.cast<String>();
    }
    this.accessModifiers = accessModifiers;
    rawDocComment = docComment;
  }

  ConstructorMirror({accessModifiers = const <String>[], String? docComment})
      : super(name: '<init>', accessModifiers: <String>[]) {
    _initialize(accessModifiers, docComment);
  }

  factory ConstructorMirror.fromJson(Map<String, dynamic> json) =>
      _$ConstructorFromJson(json);

  Map<String, dynamic> toJson() => _$ConstructorToJson(this);
}
