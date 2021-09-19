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

class ClassModel extends Type {
  final String? extendedClass;
  final List<String> implementedInterfaces;

  List<Property> properties = [];

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

  addProperty(Property property) {
    properties.add(property);
  }
}

class InterfaceModel extends Type {
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
