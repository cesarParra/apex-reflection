import 'package:apexdocs_dart/src/model/doc_comment.dart';
import 'package:test/test.dart';

main() {
  group('Doc Comment', () {
    test('Has a description', () {
      final comment = DocComment('Any Description');
      expect(comment.description, equals('Any Description'));
    });

    test('Can have annotations', () {
      final comment = DocComment('Any Description',
          annotations: [DocCommentAnnotation('see')]);
      expect(comment.annotations.length, equals(1));
      expect(comment.annotations.first.name, equals('see'));
    });
  });

  group('Doc Comment Annotation', () {
    test('Has a name', () {
      final annotation = DocCommentAnnotation('description');
      expect(annotation.name, equals('description'));
    });

    test('Has an empty body by default', () {
      final annotation = DocCommentAnnotation('description');
      expect(annotation.body, isEmpty);
    });

    test('Can have a body', () {
      final annotation = DocCommentAnnotation('description', body: 'body');
      expect(annotation.body, equals('body'));
    });

    // TODO: Body have have links {@link ClassName}
  });
}