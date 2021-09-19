import 'package:apexdocs_dart/src/model/members.dart';

import 'declaration.dart';

abstract class Type extends Declaration {
  Type({required String name, List<String> accessModifiers = const []})
      : super(name: name, accessModifiers: accessModifiers);

  bool isClass() {
    return false;
  }

  bool isInterface() {
    return false;
  }

  bool isEnum() {
    return false;
  }
}

mixin MethodsAwareness {
  List<Method> methods = [];

  void addMethod(Method method) {
    methods.add(method);
  }
}

class ClassModel extends Type with MethodsAwareness {
  final String? extendedClass;
  final List<String> implementedInterfaces;

  List<Property> properties = [];
  List<Field> fields = [];
  List<Constructor> constructors = [];
  List<EnumModel> enums = [];
  List<InterfaceModel> interfaces = [];
  List<ClassModel> classes = [];

  ClassModel(
      {required String name,
      List<String> accessModifiers = const [],
      this.extendedClass,
      this.implementedInterfaces = const []})
      : super(name: name, accessModifiers: accessModifiers);

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

class InterfaceModel extends Type with MethodsAwareness {
  final List<String> extendedInterfaces;

  InterfaceModel(
      {required String name,
      List<String> accessModifiers = const [],
      this.extendedInterfaces = const []})
      : super(name: name, accessModifiers: accessModifiers);

  @override
  bool isInterface() {
    return true;
  }
}

class EnumModel extends Type {
  EnumModel({required String name, List<String> accessModifiers = const []})
      : super(name: name, accessModifiers: accessModifiers);

  @override
  bool isEnum() {
    return true;
  }
}
