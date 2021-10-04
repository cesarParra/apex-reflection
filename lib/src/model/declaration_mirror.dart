import 'package:apexdocs_dart/src/model/doc_comment.dart';
import 'package:apexdocs_dart/src/service/parsers.dart';

import 'modifiers.dart';

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
    with DocsCommentAwareness, AccessModifierAwareness, AnnotationsAwareness {
  final String name;

  DeclarationMirror({required this.name, rawDocComment}) {
    this.rawDocComment = rawDocComment;
  }
}
