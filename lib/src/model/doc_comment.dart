class DocComment {
  final String description;
  List<DocCommentAnnotation> annotations;

  DocComment(this.description, {this.annotations = const []});
}

class DocCommentAnnotation {
  final String name;

  String body;

  DocCommentAnnotation(this.name, {this.body = ''});
}
