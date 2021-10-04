import 'package:apexdocs_dart/src/model/modifiers.dart';
import 'package:test/test.dart';

// TODO: A lot of tests for this to make sure parsing works fine
main() {
  group('Annotation', () {
    test('Can parse annotation', () {
      final annotationDeclaration = '@AuraEnabled';
      final annotation = Annotation(annotationDeclaration);
      expect(annotation.name, equals('auraenabled'));
      expect(annotation.type, equals(AnnotationType.auraEnabled));
    });

    // TODO: Test annotations with params inside
    // TODO: Test custom annotations should be of type "other"
  });
}
