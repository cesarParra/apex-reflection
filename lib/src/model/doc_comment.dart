import 'package:apexdocs_dart/src/extension_methods/list_extensions.dart';
import 'package:apexdocs_dart/src/model/multi_line_apex_doc_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'doc_comment.g.dart';

/// Represents a doc comment
/// Doc comments are defined before declarations and follow the format
// /** [\r\n] DOC CONTENTS */
@JsonSerializable()
class DocComment {
  late List<String> _descriptionLines;
  String? rawDeclaration;
  List<ParamDocCommentAnnotation> paramAnnotations = [];
  ReturnDocCommentAnnotation? returnAnnotation;
  ExampleDocCommentAnnotation? exampleAnnotation;
  List<ThrowsDocCommentAnnotation> throwsAnnotations = [];
  List<DocCommentAnnotation> annotations = [];
  String? error;

  DocComment(String description) {
    _descriptionLines = [if (description.isNotEmpty) description];
  }

  DocComment.withLines(List<String> descriptionLines) {
    _descriptionLines = descriptionLines;
  }

  DocComment.error(String errorMessage) {
    error = errorMessage;
    _descriptionLines = [];
  }

  factory DocComment.fromJson(Map<String, dynamic> json) =>
      _$DocCommentFromJson(json);

  Map<String, dynamic> toJson() => _$DocCommentToJson(this);

  List<String> get descriptionLines {
    if (_descriptionLines.isNotEmpty) {
      return _descriptionLines;
    }

    final descriptionTag = annotations
        .firstWhereOrNull((element) => element.name == 'description');
    return descriptionTag?.bodyLines ?? [];
  }

  set descriptionLines(List<String> descriptionLines) {
    _descriptionLines = descriptionLines
        .map((e) => sanitizeDocContent(e))
        .expand((e) => e)
        .toList();
  }

  /// Gets the description as a single line.
  String get description => descriptionLines.asSingleLine();

  List<DocCommentAnnotation> annotationsByName(String annotationName) {
    return annotations
        .where((element) => element.name == annotationName)
        .toList();
  }
}

/// Represents an annotation within a doc comment
/// For example @see.
@JsonSerializable()
class DocCommentAnnotation {
  final String name;

  List<String> bodyLines = [];

  String get body => bodyLines.asSingleLine();

  DocCommentAnnotation(this.name, body) {
    if (body is String) {
      bodyLines = [body];
      return;
    }
    bodyLines = body;
  }

  factory DocCommentAnnotation.fromJson(Map<String, dynamic> json) =>
      _$DocCommentAnnotationFromJson(json);

  Map<String, dynamic> toJson() => _$DocCommentAnnotationToJson(this);
}

/// Represents a param annotation within a doc comment
/// Param annotations follow the format @param paramName body
@JsonSerializable()
class ParamDocCommentAnnotation extends DocCommentAnnotation {
  final String paramName;

  ParamDocCommentAnnotation(this.paramName, bodyLines)
      : super('param', bodyLines);

  factory ParamDocCommentAnnotation.fromJson(Map<String, dynamic> json) =>
      _$ParamDocCommentAnnotationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ParamDocCommentAnnotationToJson(this);
}

/// Represents a return annotation within a doc comment
/// Param annotations follow the format @return body
@JsonSerializable()
class ReturnDocCommentAnnotation extends DocCommentAnnotation {
  ReturnDocCommentAnnotation(bodyLines) : super('return', bodyLines);

  factory ReturnDocCommentAnnotation.fromJson(Map<String, dynamic> json) =>
      _$ReturnDocCommentAnnotationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ReturnDocCommentAnnotationToJson(this);
}

/// Represents a throws annotation within a doc comment
/// Param annotations follow the format:
/// @throws ExceptionName body OR the format
/// @exception ExceptionName body
@JsonSerializable()
class ThrowsDocCommentAnnotation extends DocCommentAnnotation {
  final String exceptionName;

  ThrowsDocCommentAnnotation(this.exceptionName, bodyLines)
      : super('throws', bodyLines);

  factory ThrowsDocCommentAnnotation.fromJson(Map<String, dynamic> json) =>
      _$ThrowsDocCommentAnnotationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ThrowsDocCommentAnnotationToJson(this);
}

/// Represents an example annotation within a doc comment
/// Param annotations follow the format @example body
@JsonSerializable()
class ExampleDocCommentAnnotation extends DocCommentAnnotation {
  ExampleDocCommentAnnotation(List<String> bodyLines)
      : super('example', bodyLines) {
    // examples might come surrounded by `{@code ... }`. If so, we want to strip those out.
    if (bodyLines.isNotEmpty) {
      if (bodyLines.first.trim().startsWith('{@code')) {
        // remove the first and last lines
        bodyLines.removeAt(0);
        if (bodyLines.isNotEmpty && bodyLines.last.trim().endsWith('}')) {
          bodyLines.removeLast();
        }
      }
    }
  }

  factory ExampleDocCommentAnnotation.fromJson(Map<String, dynamic> json) =>
      _$ExampleDocCommentAnnotationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExampleDocCommentAnnotationToJson(this);
}
