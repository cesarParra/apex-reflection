import 'package:apexdocs_dart/src/model/modifiers.dart';
import 'package:test/test.dart';

main() {
  group('Annotation', () {
    test('Can parse annotation', () {
      final annotationDeclaration = '@AuraEnabled';
      final annotation = Annotation(annotationDeclaration);
      expect(annotation.name, equals('auraenabled'));
      expect(annotation.type, equals(AnnotationType.auraEnabled));
    });

    test('Can parse custom annotations not provided by Salesforce by default',
        () {
      final annotationDeclaration = '@anotherannotation';
      final annotation = Annotation(annotationDeclaration);
      expect(annotation.name, equals('anotherannotation'));
      expect(annotation.type, equals(AnnotationType.other));
    });
  });
}
