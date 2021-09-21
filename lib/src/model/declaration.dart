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

mixin DocsCommentAwareness {
  String? docComment;
}

abstract class Declaration with AccessModifierAwareness {
  final String name;
  final String? docComment;

  Declaration({required this.name, this.docComment, accessModifiers}) {
    this.accessModifiers = accessModifiers;
  }
}
