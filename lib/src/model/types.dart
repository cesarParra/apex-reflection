abstract class TypeModel {
  final String name;
  final List<String> accessModifiers;

  TypeModel({required this.name, this.accessModifiers = const []});

  get isPrivate => accessModifiers.contains('private');

  get isPublic => accessModifiers.contains('public');

  get isGlobal => accessModifiers.contains('global');

  get isProtected => accessModifiers.contains('protected');

  get isVirtual => accessModifiers.contains('virtual');

  get isNamespaceAccessible => accessModifiers.contains('namespaceaccessible');

  get isTest => accessModifiers.contains('istest');

  get isDeprecated => accessModifiers.contains('deprecated');
}

class ClassModel extends TypeModel {
  final String? extendedClass;
  final List<String> implementedInterfaces;

  ClassModel(
      {required String name,
      List<String> accessModifiers = const [],
      this.extendedClass,
      this.implementedInterfaces = const []})
      : super(name: name, accessModifiers: accessModifiers);
}

class InterfaceModel extends TypeModel {
  final List<String> extendedInterfaces;

  InterfaceModel(
      {required String name,
      List<String> accessModifiers = const [],
      this.extendedInterfaces = const []})
      : super(name: name, accessModifiers: accessModifiers);
}

class EnumModel extends TypeModel {
  EnumModel({required String name, List<String> accessModifiers = const []})
      : super(name: name, accessModifiers: accessModifiers);
}
