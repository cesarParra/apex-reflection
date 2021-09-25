class DocComment {
  late String _description;
  List<ParamDocCommentAnnotation> paramAnnotations = [];
  List<DocCommentAnnotation> annotations = [];
  ReturnDocCommentAnnotation? returnAnnotation;

  DocComment(String description) {
    _description = description;
  }

  String get description => _description.isNotEmpty
      ? _description
      : annotations.firstWhere((element) => element.name == 'description').body;

  set description(String description) {
    _description = description;
  }

  List<DocCommentAnnotation> annotationsByName(String annotationName) {
    return annotations
        .where((element) => element.name == annotationName)
        .toList();
  }
}

class DocCommentAnnotation {
  final String name;

  String body;

  DocCommentAnnotation(this.name, {this.body = ''});
}

class ParamDocCommentAnnotation extends DocCommentAnnotation {
  final String paramName;

  ParamDocCommentAnnotation(this.paramName, body) : super('param', body: body);
}

class ReturnDocCommentAnnotation extends DocCommentAnnotation {
  ReturnDocCommentAnnotation(body) : super('return', body: body);
}
