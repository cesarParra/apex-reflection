import 'package:apexdocs_dart/src/model/doc_comment.dart';
import 'package:apexdocs_dart/src/service/parsers.dart';
import 'package:json_annotation/json_annotation.dart';

import 'modifiers.dart';

/// Allows declarations to be aware of doc comments.
mixin DocsCommentAwareness {
  DocComment? _docComment;
  @JsonKey(ignore: true)
  String? rawDocComment;

  @JsonKey()
  DocComment? get docComment => _docComment ??= _parseDocComment();

  set docComment(DocComment? value) {
    _docComment = value;
  }

  DocComment? _parseDocComment() {
    if (rawDocComment == null) {
      return null;
    }
    _docComment = ApexdocParser.parseFromBody(rawDocComment!)
      ..rawDeclaration = rawDocComment;
    return _docComment;
  }

  String? get docDescription => docComment?.description;
}

/// Reflects a declared entity anywhere on an Apex file.
abstract class DeclarationMirror
    with DocsCommentAwareness, AccessModifierAwareness, AnnotationsAwareness {
  final String name;

  DeclarationMirror({required this.name, rawDocComment}) {
    this.rawDocComment = rawDocComment;
  }
}
