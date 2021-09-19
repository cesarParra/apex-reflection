import 'declaration.dart';

class ClassModel extends Declaration {
  final String? extendedClass;
  final List<String> implementedInterfaces;

  ClassModel(
      {required String name,
      List<String> accessModifiers = const [],
      this.extendedClass,
      this.implementedInterfaces = const []})
      : super(name: name, accessModifiers: accessModifiers);
}

class InterfaceModel extends Declaration {
  final List<String> extendedInterfaces;

  InterfaceModel(
      {required String name,
      List<String> accessModifiers = const [],
      this.extendedInterfaces = const []})
      : super(name: name, accessModifiers: accessModifiers);
}

class EnumModel extends Declaration {
  EnumModel({required String name, List<String> accessModifiers = const []})
      : super(name: name, accessModifiers: accessModifiers);
}
