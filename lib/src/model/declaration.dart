abstract class Declaration {
  final String name;
  final List<String> accessModifiers;

  Declaration({required this.name, this.accessModifiers = const []});

  get isPrivate => accessModifiers.contains('private');

  get isPublic => accessModifiers.contains('public');

  get isGlobal => accessModifiers.contains('global');

  get isProtected => accessModifiers.contains('protected');

  get isVirtual => accessModifiers.contains('virtual');

  get isNamespaceAccessible => accessModifiers.contains('namespaceaccessible');

  get isTest => accessModifiers.contains('istest');

  get isDeprecated => accessModifiers.contains('deprecated');
}
