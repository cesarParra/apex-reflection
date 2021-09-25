import 'package:apexdocs_dart/src/model/doc_comment.dart';
import 'package:test/test.dart';

main() {
  group('Doc Comment', () {
    test('Has a description', () {
      final comment = DocComment('Any Description');
      expect(comment.description, equals('Any Description'));
    });

    test('Can have param annotations', () {
      final comment = DocComment('Any Description');
      comment.paramAnnotations
          .add(ParamDocCommentAnnotation('param1', 'Some description'));
      expect(comment.paramAnnotations.length, equals(1));
      expect(comment.paramAnnotations.first.paramName, equals('param1'));
    });

    test('Can have a return annotation', () {
      final comment = DocComment('Any Description');
      comment.returnAnnotation = ReturnDocCommentAnnotation('description');
      expect(comment.returnAnnotation, isNotNull);
    });

    test('Can have annotations', () {
      final comment = DocComment('Any Description');
      comment.annotations.add(DocCommentAnnotation('see'));
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

  group('Param annotations', () {
    test('Has an annotation name of param, the parameter name, and a body', () {
      final paramAnnotation =
          ParamDocCommentAnnotation('param1', 'Some description');
      expect(paramAnnotation.name, equals('param'));
      expect(paramAnnotation.paramName, equals('param1'));
      expect(paramAnnotation.body, equals('Some description'));
    });
  });

  group('Return annotations', () {
    test('Has a body', () {
      final returnAnnotation = ReturnDocCommentAnnotation('Some description');
      expect(returnAnnotation.name, equals('return'));
      expect(returnAnnotation.body, equals('Some description'));
    });
  });
}
