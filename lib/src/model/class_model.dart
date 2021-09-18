class ClassModel {
  final String name;
  final List<String> accessModifiers;
  final String? extendedClass;
  final List<String> implementedInterfaces;

  ClassModel(
      {required this.name,
      this.accessModifiers = const [],
      this.extendedClass,
      this.implementedInterfaces = const []});

  get isPrivate => accessModifiers.contains('private');

  get isPublic => accessModifiers.contains('public');

  get isGlobal => accessModifiers.contains('global');

  get isProtected => accessModifiers.contains('protected');

  get isVirtual => accessModifiers.contains('virtual');

  get isNamespaceAccessible => accessModifiers.contains('namespaceaccessible');

  get isTest => accessModifiers.contains('istest');

  get isDeprecated => accessModifiers.contains('deprecated');
}
