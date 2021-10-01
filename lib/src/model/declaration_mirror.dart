import 'package:apexdocs_dart/src/model/doc_comment.dart';
import 'package:apexdocs_dart/src/service/parsers.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:apexdocs_dart/src/extension_methods/list_extensions.dart';

/// Allows declarations to be aware of potentially having access modifiers.
/// Access modifiers are anything that come before a declaration.
/// For example a declaration that looks as follows:
/// ```apex
/// @IsTest private class TestClass {}
/// ```
/// will have 2 access modifiers: 'istest' and 'private'
mixin AccessModifierAwareness {
  @JsonKey(name: 'access_modifiers')
  List<String> accessModifiers = [];

  get isPrivate => accessModifiers.containsIgnoreCase('private');

  get isPublic => accessModifiers.containsIgnoreCase('public');

  get isGlobal => accessModifiers.containsIgnoreCase('global');

  get isProtected => accessModifiers.containsIgnoreCase('protected');

  get isVirtual => accessModifiers.containsIgnoreCase('virtual');

  get isNamespaceAccessible =>
      accessModifiers.containsIgnoreCase('namespaceaccessible');

  get isTest => accessModifiers.containsIgnoreCase('istest');

  get isDeprecated => accessModifiers.containsIgnoreCase('deprecated');

  get isAbstract => accessModifiers.containsIgnoreCase('abstract');
}

/// Allows declarations to be aware of doc comments.
mixin DocsCommentAwareness {
  DocComment? _docComment;
  String? rawDocComment;

  DocComment? get docComment => _docComment ??= _parseDocComment();

  DocComment? _parseDocComment() {
    if (rawDocComment == null) {
      return null;
    }
    _docComment = ApexdocParser.parseFromBody(rawDocComment!);
    return _docComment;
  }

  String? get docDescription => docComment?.description;
}

/// Reflects a declared entity anywhere on an Apex file.
abstract class DeclarationMirror
    with AccessModifierAwareness, DocsCommentAwareness {
  final String name;

  DeclarationMirror({required this.name, docComment, accessModifiers}) {
    this.accessModifiers = accessModifiers;
    rawDocComment = docComment;
  }
}
