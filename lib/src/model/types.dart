import 'package:apexdocs_dart/src/model/members.dart';
import 'package:json_annotation/json_annotation.dart';

import 'declaration.dart';

part 'types.g.dart';

abstract class Type extends Declaration {
  @JsonKey(name: 'type_name')
  String typeName = '';

  Type(
      {required String name,
      String? docComment,
      List<String> accessModifiers = const []})
      : super(
            name: name,
            docComment: docComment,
            accessModifiers: accessModifiers);

  bool isClass() {
    return false;
  }

  bool isInterface() {
    return false;
  }

  bool isEnum() {
    return false;
  }

  Map<String, dynamic> toJson();
}

mixin MethodsAwareness {
  List<Method> methods = [];

  void addMethod(Method method) {
    methods.add(method);
  }
}

@JsonSerializable()
class ClassModel extends Type with MethodsAwareness {
  @JsonKey(name: 'extended_class')
  late final String? extendedClass;
  @JsonKey(name: 'implemented_interfaces')
  late final List<String> implementedInterfaces;

  List<Property> properties = [];
  List<Field> fields = [];
  List<Constructor> constructors = [];
  List<EnumModel> enums = [];
  List<InterfaceModel> interfaces = [];
  List<ClassModel> classes = [];

  ClassModel(
      {required String name,
      String? docComment,
      List<String> accessModifiers = const [],
      this.extendedClass,
      this.implementedInterfaces = const []})
      : super(
            name: name,
            docComment: docComment,
            accessModifiers: accessModifiers) {
    typeName = 'class';
  }

  factory ClassModel.fromJson(Map<String, dynamic> json) =>
      _$ClassModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClassModelToJson(this);

  @override
  bool isClass() {
    return true;
  }

  void addProperty(Property property) {
    properties.add(property);
  }

  void addField(Field field) {
    fields.add(field);
  }

  void addConstructor(Constructor constructor) {
    constructors.add(constructor);
  }

  void addEnum(EnumModel innerEnum) {
    enums.add(innerEnum);
  }

  void addInterface(InterfaceModel innerInterface) {
    interfaces.add(innerInterface);
  }

  void addClass(ClassModel innerClass) {
    classes.add(innerClass);
  }
}

@JsonSerializable()
class InterfaceModel extends Type with MethodsAwareness {
  @JsonKey(name: 'extended_interfaces')
  late final List<String> extendedInterfaces;

  InterfaceModel(
      {required String name,
      String? docComment,
      List<String> accessModifiers = const [],
      this.extendedInterfaces = const []})
      : super(
            name: name,
            docComment: docComment,
            accessModifiers: accessModifiers) {
    typeName = 'interface';
  }

  factory InterfaceModel.fromJson(Map<String, dynamic> json) =>
      _$InterfaceModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InterfaceModelToJson(this);

  @override
  bool isInterface() {
    return true;
  }
}

@JsonSerializable()
class EnumModel extends Type {
  EnumModel(
      {required String name,
      String? docComment,
      List<String> accessModifiers = const []})
      : super(
            name: name,
            docComment: docComment,
            accessModifiers: accessModifiers) {
    typeName = 'enum';
  }

  factory EnumModel.fromJson(Map<String, dynamic> json) =>
      _$EnumModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EnumModelToJson(this);

  @override
  bool isEnum() {
    return true;
  }
}
