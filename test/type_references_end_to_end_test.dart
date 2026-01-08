import 'package:apex_reflection/src/model/members.dart';
import 'package:apex_reflection/src/model/type_references.dart';
import 'package:apex_reflection/src/model/types.dart';
import 'package:apex_reflection/src/service/case_insensitive_input_stream.dart';
import 'package:apex_reflection/src/service/walker.dart';
import 'package:test/test.dart';

ApexWalkerDefinition walkApex(String body) {
  final apexWalkerDefinition = ApexWalkerDefinition();
  Walker.walk(CaseInsensitiveInputStream.fromString(body), apexWalkerDefinition,
      (parser) => parser.compilationUnit());
  return apexWalkerDefinition;
}

main() {
  group('End-to-end ObjectTypeReference tests', () {
    test('Fields with primitive type', () {
      var classBody = '''
      public class MyClass {
        private String myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
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
      var classBody = '''
      public class MyClass {
        private List<String> myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
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
      var classBody = '''
      public class MyClass {
        private Set<String> myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
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
      var classBody = '''
      public class MyClass {
        private Map<Integer, String> myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
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

    test('Fields with Generic type', () {
      var classBody = '''
      public class MyClass {
        private Iterable<String> myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('Iterable'));
      expect((field1.typeReference as GenericObjectType).ofType.type,
          equals('String'));
    });

    test('Fields with List of List type', () {
      var classBody = '''
      public class MyClass {
        private List<List<String>> myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
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

    test('Fields with Iterable of List type', () {
      var classBody = '''
      public class MyClass {
        private Iterable<List<String>> myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('Iterable'));
      expect((field1.typeReference as GenericObjectType).ofType.type,
          equals('List'));
      expect(
          ((field1.typeReference as GenericObjectType).ofType as ListObjectType)
              .ofType
              .type,
          equals('String'));
    });

    test('Fields with Set of Set type', () {
      var classBody = '''
      public class MyClass {
        private Set<Set<String>> myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
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
      var classBody = '''
      public class MyClass {
        private Map<String, Map<Integer, String>> myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
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
      var classBody = '''
      public class MyClass {
        private String[] myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
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
      var classBody = '''
      public class MyClass {
        private String[][] myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
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

    test('Namespaced types', () {
      var classBody = '''
      public class MyClass {
        public Iterable<String> start(Database.BatchableContext info) {}
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;

      MethodMirror method = generatedClass.methods
          .firstWhere((element) => element.name == 'start');
      expect(method.parameters.length, equals(1));
      expect(method.parameters.first.typeReference.type,
          equals('Database.BatchableContext'));
    });

    test('Void methods', () {
      var classBody = '''
      public class MyClass {
        private static void myMethod() {}
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.methods.length, equals(1));

      MethodMirror myMethod = generatedClass.methods
          .firstWhere((element) => element.name == 'myMethod');
      expect(myMethod.isPrivate, isTrue);
      expect(myMethod.typeReference.type, equals('void'));
      expect(myMethod.typeReference.type, equals('void'));
    });
  });
}
