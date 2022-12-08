import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/type_references.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/case_insensitive_input_stream.dart';
import 'package:apexdocs_dart/src/service/walker.dart';
import 'package:test/test.dart';

main() {
  group('End-to-end ObjectTypeReference tests', () {
    test('Fields with primitive type', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        private String myVar1;
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('String'));
      expect(field1.typeReference.type, equals('String'));
    });

    test('Fields with List type', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        private List<String> myVar1;
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('List'));
      expect((field1.typeReference as ListObjectType).ofType.type,
          equals('String'));
    });

    test('Fields with Set type', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        private Set<String> myVar1;
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('Set'));
      expect((field1.typeReference as SetObjectType).ofType.type,
          equals('String'));
    });

    test('Fields with Map type', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        private Map<Integer, String> myVar1;
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('Map'));
      expect((field1.typeReference as MapObjectType).keyType.type,
          equals('Integer'));
      expect((field1.typeReference as MapObjectType).valueType.type,
          equals('String'));
    });

    test('Fields with List of List type', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        private List<List<String>> myVar1;
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('List'));
      expect(
          (field1.typeReference as ListObjectType).ofType.type, equals('List'));
      expect(
          ((field1.typeReference as ListObjectType).ofType as ListObjectType)
              .ofType
              .type,
          equals('String'));
    });

    test('Fields with Set of Set type', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        private Set<Set<String>> myVar1;
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('Set'));
      expect(
          (field1.typeReference as SetObjectType).ofType.type, equals('Set'));
      expect(
          ((field1.typeReference as SetObjectType).ofType as SetObjectType)
              .ofType
              .type,
          equals('String'));
    });

    test('Fields with Map of Map type', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        private Map<String, Map<Integer, String>> myVar1;
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('Map'));
      expect((field1.typeReference as MapObjectType).keyType.type,
          equals('String'));
      expect((field1.typeReference as MapObjectType).valueType.type,
          equals('Map'));
      expect(
          ((field1.typeReference as MapObjectType).valueType as MapObjectType)
              .keyType
              .type,
          equals('Integer'));
      expect(
          ((field1.typeReference as MapObjectType).valueType as MapObjectType)
              .valueType
              .type,
          equals('String'));
    });

    // single level array
    test('Array fields', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        private String[] myVar1;
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
      apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('List'));
      expect((field1.typeReference as ListObjectType).ofType.type,
          equals('String'));
    });

    test('Multi-level array fields', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        private String[][] myVar1;
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
      apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('List'));
      expect(
          (field1.typeReference as ListObjectType).ofType.type, equals('List'));
      expect(
          ((field1.typeReference as ListObjectType).ofType as ListObjectType)
              .ofType
              .type,
          equals('String'));
    });

    test('Void methods', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        private static void myMethod() {}
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
      apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.methods.length, equals(1));

      MethodMirror myMethod = generatedClass.methods
          .firstWhere((element) => element.name == 'myMethod');
      expect(myMethod.isPrivate, isTrue);
      expect(myMethod.typeReference.type, equals('void'));
      expect(
          myMethod.typeReference.type, equals('void'));
    });
  });
}
