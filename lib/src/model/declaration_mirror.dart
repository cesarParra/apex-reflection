import 'package:apex_reflection/src/extension_methods/list_extensions.dart';
import 'package:apex_reflection/src/model/doc_comment.dart';
import 'package:apex_reflection/src/service/parsers.dart';
import 'package:json_annotation/json_annotation.dart';

import 'modifiers.dart';

/// Allows declarations to be aware of doc comments.
mixin DocsCommentAwareness {
  DocComment? _docComment;
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  String? get docDescription => docComment?.description.trim();
}

/// Reflects a declared entity anywhere on an Apex file.
abstract class DeclarationMirror
    with DocsCommentAwareness, AccessModifierAwareness, AnnotationsAwareness {
  final String name;
  String? group;
  String? groupDescription;

  DeclarationMirror({required this.name, rawDocComment}) {
    this.rawDocComment = rawDocComment;
  }

  void setGroup(String? group, [String? groupDescription]) {
    this.group = group;
    this.groupDescription = groupDescription;
  }

  String? getAnnotationBody(String annotationName) {
    return docComment?.annotations
        .firstWhereOrNull((element) =>
            element.name.toLowerCase() == annotationName.toLowerCase())
        ?.body;
  }
}
