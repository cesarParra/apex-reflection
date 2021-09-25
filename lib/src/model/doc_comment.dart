class DocComment {
  late List<String> _descriptionLines;
  List<ParamDocCommentAnnotation> paramAnnotations = [];
  ReturnDocCommentAnnotation? returnAnnotation;
  ExampleDocCommentAnnotation? exampleAnnotation;
  List<ThrowsDocCommentAnnotation> throwsAnnotations = [];
  List<DocCommentAnnotation> annotations = [];

  DocComment(String description) {
    _descriptionLines = [if (description.isNotEmpty) description];
  }

  DocComment.withLines(List<String> descriptionLines) {
    _descriptionLines = descriptionLines;
  }

  List<String> get descriptionLines => _descriptionLines.isNotEmpty
      ? _descriptionLines
      : annotations
          .firstWhere((element) => element.name == 'description')
          .bodyLines;

  set descriptionLines(List<String> descriptionLines) {
    _descriptionLines = descriptionLines;
  }

  /// Gets the description as a single line.
  String get description => descriptionLines.join(' ');

  List<DocCommentAnnotation> annotationsByName(String annotationName) {
    return annotations
        .where((element) => element.name == annotationName)
        .toList();
  }
}

class DocCommentAnnotation {
  final String name;

  List<String> bodyLines = [];

  String get body => bodyLines.join(' ');

  DocCommentAnnotation(this.name, body) {
    if (body is String) {
      bodyLines = [body];
      return;
    }
    bodyLines = body;
  }
}

class ParamDocCommentAnnotation extends DocCommentAnnotation {
  final String paramName;

  ParamDocCommentAnnotation(this.paramName, bodyLines)
      : super('param', bodyLines);
}

class ReturnDocCommentAnnotation extends DocCommentAnnotation {
  ReturnDocCommentAnnotation(bodyLines) : super('return', bodyLines);
}

class ThrowsDocCommentAnnotation extends DocCommentAnnotation {
  final String exceptionName;

  ThrowsDocCommentAnnotation(this.exceptionName, bodyLines)
      : super('throws', bodyLines);
}

class ExampleDocCommentAnnotation extends DocCommentAnnotation {
  ExampleDocCommentAnnotation(bodyLines) : super('example', bodyLines);
}
