mixin AccessModifierAwareness {
  List<String> accessModifiers = [];

  get isPrivate => accessModifiers.contains('private');

  get isPublic => accessModifiers.contains('public');

  get isGlobal => accessModifiers.contains('global');

  get isProtected => accessModifiers.contains('protected');

  get isVirtual => accessModifiers.contains('virtual');

  get isNamespaceAccessible => accessModifiers.contains('namespaceaccessible');

  get isTest => accessModifiers.contains('istest');

  get isDeprecated => accessModifiers.contains('deprecated');
}

abstract class Declaration with AccessModifierAwareness {
  final String name;

  Declaration({required this.name, accessModifiers}) {
    this.accessModifiers = accessModifiers;
  }
}
