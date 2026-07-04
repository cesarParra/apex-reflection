import 'package:apex_reflection/src/model/type_references.dart';
import 'package:apex_reflection/src/model/types.dart';
import 'package:apex_reflection/src/service/parsers.dart';
import 'package:test/test.dart';

/// Parses a class with a single field of [fieldType] and returns the field's
/// type reference, which is how type references are produced in practice.
ObjectTypeReference parseFieldType(String fieldType) {
  final generatedClass = ApexParser.parseFromBody('''
  public class MyClass {
    private $fieldType myField;
  }
  ''') as ClassMirror;
  return generatedClass.fields.single.typeReference;
}

main() {
  group('ReferenceObjectType tests', () {
    test('Is created for a void method return type', () {
      final generatedClass = ApexParser.parseFromBody('''
      public class MyClass {
        public void doNothing() {}
      }
      ''') as ClassMirror;
      final returnType = generatedClass.methods.single.typeReference;

      expect(returnType, isA<ReferenceObjectType>());
      expect(returnType.type, 'void');
    });

    test('Is created when parsing a non-collection type', () {
      final referenceType = parseFieldType('String');

      expect(referenceType, isA<ReferenceObjectType>());
      expect(referenceType.type, 'String');
    });

    test('Can be created by passing the type', () {
      final referenceObjectType = ReferenceObjectType('void');

      expect(referenceObjectType.type, 'void');
    });
  });

  group('ListObjectType tests', () {
    test('Is created when parsing a List type', () {
      final referenceType = parseFieldType('List<String>');

      expect(referenceType, isA<ListObjectType>());
      expect(referenceType.type, 'List');
      expect((referenceType as ListObjectType).ofType.type, 'String');
    });
  });

  group('SetObjectType tests', () {
    test('Is created when parsing a Set type', () {
      final referenceType = parseFieldType('Set<String>');

      expect(referenceType, isA<SetObjectType>());
      expect(referenceType.type, 'Set');
      expect((referenceType as SetObjectType).ofType.type, 'String');
    });
  });

  group('MapObjectType tests', () {
    test('Is created when parsing a Map type', () {
      final referenceType = parseFieldType('Map<String, String>');

      expect(referenceType, isA<MapObjectType>());
      expect(referenceType.type, 'Map');
      expect((referenceType as MapObjectType).keyType.type, 'String');
      expect(referenceType.valueType.type, 'String');
    });
  });
}
