import 'package:apexdocs_dart/src/model/doc_comment.dart';
import 'package:apexdocs_dart/src/service/parsers.dart';
import 'package:json_annotation/json_annotation.dart';

mixin AccessModifierAwareness {
  @JsonKey(name: 'access_modifiers')
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

abstract class Declaration with AccessModifierAwareness, DocsCommentAwareness {
  final String name;

  Declaration({required this.name, docComment, accessModifiers}) {
    this.accessModifiers = accessModifiers;
    rawDocComment = docComment;
  }
}
