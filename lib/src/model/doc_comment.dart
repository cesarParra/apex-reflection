class DocComment {
  late String _description;
  List<DocCommentAnnotation> annotations = [];

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
