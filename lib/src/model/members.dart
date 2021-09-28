import 'package:apexdocs_dart/src/model/declaration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'members.g.dart';

abstract class TypedDeclaration extends Declaration {
  final String type;

  TypedDeclaration(
      {required String name,
      String? docComment,
      required this.type,
      List<String> accessModifiers = const []})
      : super(
            name: name,
            docComment: docComment,
            accessModifiers: accessModifiers);
}

@JsonSerializable()
class Property extends TypedDeclaration {
  Property(
      {required String name,
      String? docComment,
      required String type,
      List<String> accessModifiers = const []})
      : super(
            name: name,
            docComment: docComment,
            type: type,
            accessModifiers: accessModifiers);

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyToJson(this);
}

@JsonSerializable()
class Field extends TypedDeclaration {
  Field(
      {required String name,
      String? docComment,
      required String type,
      List<String> accessModifiers = const []})
      : super(
            name: name,
            docComment: docComment,
            type: type,
            accessModifiers: accessModifiers);

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);
}

mixin ParameterAwareness {
  List<Parameter> _parameters = [];

  List<Parameter> get parameters => _parameters;

  set parameters(List<Parameter> value) {
    for (var element in value) {
      element.parent = this;
    }
    _parameters = value;
  }

  void addParameter(Parameter parameter) {
    parameter.parent = this;
    _parameters.add(parameter);
  }
}

@JsonSerializable()
class Method extends TypedDeclaration with ParameterAwareness {
  Method(
      {required String name,
      String? docComment,
      String type = 'void',
      List<String> accessModifiers = const []})
      : super(
            name: name,
            docComment: docComment,
            type: type,
            accessModifiers: accessModifiers);

  factory Method.fromJson(Map<String, dynamic> json) => _$MethodFromJson(json);

  Map<String, dynamic> toJson() => _$MethodToJson(this);

  get isVoid => type.toLowerCase() == 'void';
}

@JsonSerializable()
class Parameter extends TypedDeclaration {
  @JsonKey(ignore: true)
  ParameterAwareness? parent;

  Parameter(
      {required String name,
      required String type,
      List<String> accessModifiers = const []})
      : super(name: name, type: type, accessModifiers: accessModifiers);

  factory Parameter.fromJson(Map<String, dynamic> json) =>
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

@JsonSerializable()
class Constructor extends Declaration with ParameterAwareness {
  _initialize(dynamic accessModifiers, [String? docComment]) {
    if (accessModifiers is List<dynamic>) {
      accessModifiers = accessModifiers.cast<String>();
    }
    this.accessModifiers = accessModifiers;
    rawDocComment = docComment;
  }

  Constructor({accessModifiers = const <String>[], String? docComment})
      : super(name: '<init>', accessModifiers: <String>[]) {
    _initialize(accessModifiers, docComment);
  }

  factory Constructor.fromJson(Map<String, dynamic> json) =>
      _$ConstructorFromJson(json);

  Map<String, dynamic> toJson() => _$ConstructorToJson(this);
}
