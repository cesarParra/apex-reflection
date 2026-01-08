import 'package:apex_reflection/src/extension_methods/list_extensions.dart';
import 'package:apex_reflection/src/model/members.dart';
import 'package:apex_reflection/src/model/modifiers.dart';
import 'package:apex_reflection/src/model/type_references.dart';
import 'package:apex_reflection/src/model/types.dart';
import 'package:apex_reflection/src/service/case_insensitive_input_stream.dart';
import 'package:test/test.dart';

import 'package:apex_reflection/src/service/walker.dart';

ApexWalkerDefinition walkApex(String body) {
  final apexWalkerDefinition = ApexWalkerDefinition();
  Walker.walk(CaseInsensitiveInputStream.fromString(body), apexWalkerDefinition,
      (parser) => parser.compilationUnit());
  return apexWalkerDefinition;
}

void main() {
  group('Parses Apex Classes', () {
    test('Creates a simple class', () {
      final apexWalkerDefinition = walkApex('class MyClass{}');
      expect(apexWalkerDefinition.getGeneratedApexType(), isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.name, 'MyClass');
    });

    test('Classes can have Apex docs', () {
      final apexWalkerDefinition = walkApex('''
      /**
       * @description Class description
       */
      class MyClass{}
      ''');
      expect(apexWalkerDefinition.getGeneratedApexType()!.rawDocComment,
          isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('Class description'));
    });

    test('Classes can have Apex block style docs', () {
      const classBody = '''
      /**********************************************************
      @group          Group Name
      @description    Class description
      ***********************************************************/
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.rawDocComment,
          isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('Class description'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .docComment
              ?.annotations
              .firstWhere((element) => element.name == 'group')
              .body,
          equals('Group Name'));
    });

    test('Classes can have docs-like comments anywhere', () {
      const classBody = '''
      public  class class_with_comments {
          private static void m0() {
              m1();
              /************************/
          }

          /***************************/
          private static void m1() {
          }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.name,
          equals('class_with_comments'));
    });

    test('Can have annotations before the docs', () {
      final apexWalkerDefinition = walkApex('''
      @IsTest
      /**
      * @group Integration Tests
      * @see SampleClass
      * @description This is a unit test class.
      */
      private class SampleTestClass {}
      ''');

      expect(apexWalkerDefinition.getGeneratedApexType()!.name,
          equals('SampleTestClass'));
      expect(apexWalkerDefinition.getGeneratedApexType()!.rawDocComment,
          isNotNull);
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .annotations
              .single
              .name
              .toLowerCase(),
          equals('istest'));
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('This is a unit test class.'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .docComment
              ?.annotations
              .firstWhere((element) => element.name == 'group')
              .body,
          equals('Integration Tests'));
    });

    test('Can have annotations after the docs', () {
      const classBody = '''
      /**
       * @description Account related operations.
       */
      @RestResource(urlMapping='/Account/*')
      private class SampleTestClass {}
      ''';
      final apexWalkerDefinition = walkApex(classBody);

      expect(apexWalkerDefinition.getGeneratedApexType()!.name,
          equals('SampleTestClass'));
      expect(apexWalkerDefinition.getGeneratedApexType()!.rawDocComment,
          isNotNull);
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .annotations
              .single
              .name
              .toLowerCase(),
          equals('restresource'));
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('Account related operations.'));
    });

    test('Classes without access modifiers are private by default', () {
      final apexWalkerDefinition = walkApex('class MyClass{}');
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isTrue);
    });

    test('Classes with private access modifiers are private', () {
      final apexWalkerDefinition = walkApex('private class MyClass{}');
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isTrue);
    });

    test('Classes with public access modifiers are public', () {
      final apexWalkerDefinition = walkApex('public class MyClass{}');
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPublic, isTrue);
    });

    test('Classes with global access modifiers are global', () {
      final apexWalkerDefinition = walkApex('global class MyClass{}');
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPublic, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isGlobal, isTrue);
    });

    test('Classes with protected access modifiers are protected', () {
      final apexWalkerDefinition = walkApex('protected class MyClass{}');
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPublic, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isGlobal, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isProtected, isTrue);
    });

    test('Classes with protected access modifiers are protected', () {
      final apexWalkerDefinition = walkApex('protected class MyClass{}');
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPublic, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isGlobal, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isProtected, isTrue);
    });

    test('Virtual classes are supported', () {
      final apexWalkerDefinition = walkApex('public virtual class MyClass{}');
      final generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.isVirtual, isTrue);
    });

    test('Supports the abstract access modifier', () {
      final apexWalkerDefinition = walkApex('public abstract class MyClass{}');
      final generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.isAbstract, isTrue);
    });

    test('Supports the NamespaceAccessible annotation', () {
      final apexWalkerDefinition =
          walkApex('@NamespaceAccessible public virtual class MyClass{}');
      expect(apexWalkerDefinition.getGeneratedApexType()!.isNamespaceAccessible,
          isTrue);
    });

    test('Supports the IsTest annotation', () {
      final apexWalkerDefinition = walkApex('@IsTest private class MyClass{}');
      expect(apexWalkerDefinition.getGeneratedApexType()!.isTest, isTrue);
    });

    test('Supports annotations with extra parameters', () {
      final apexWalkerDefinition =
          walkApex('@IsTest(Parallel=true) private class MyClass{}');
      expect(apexWalkerDefinition.getGeneratedApexType()!.isTest, isTrue);
    });

    test('Supports annotations with multiple parameters', () {
      final apexWalkerDefinition = walkApex(
          "@InvocableMethod(label='Get Account Names' description='Returns the list of account names corresponding to the specified account IDs.' category='Account') private class MyClass{}");
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .annotations
              .firstWhereOrNull(
                  (annotation) => annotation.name == 'invocablemethod'),
          isNotNull);

      final annotation =
          apexWalkerDefinition.getGeneratedApexType()!.annotations.first;
      expect(annotation.elementValues, isNotEmpty);
      expect(
          annotation.elementValues
              ?.firstWhereOrNull((element) => element.key == 'label'),
          isNotNull);
      expect(
          annotation.elementValues
              ?.firstWhereOrNull((element) => element.key == 'description'),
          isNotNull);
      expect(
          annotation.elementValues
              ?.firstWhereOrNull((element) => element.key == 'category'),
          isNotNull);
    });

    test('Does not extend any class by default', () {
      final apexWalkerDefinition = walkApex('public class MyClass{}');
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.extendedClass, isNull);
    });

    test('Classes can extend another class', () {
      final apexWalkerDefinition =
          walkApex('public class MyClass extends ParentClass{}');
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.extendedClass, equals('ParentClass'));
    });

    test('Classes can have properties', () {
      var classBody = '''
      public class MyClass {
        @NamespaceAccessible public String MyProperty1 { get; set; }
        private List<Integer> MyProperty2 { get; set; }
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.properties.length, equals(2));
      expect(
          generatedClass.properties
              .any((element) => element.name == 'MyProperty1'),
          isTrue);
      expect(
          generatedClass.properties
              .any((element) => element.name == 'MyProperty2'),
          isTrue);

      PropertyMirror property1 = generatedClass.properties
          .firstWhere((element) => element.name == 'MyProperty1');
      expect(property1.isNamespaceAccessible, isTrue);
      expect(property1.typeReference.type, equals('String'));
      expect(property1.isPublic, isTrue);

      PropertyMirror property2 = generatedClass.properties
          .firstWhere((element) => element.name == 'MyProperty2');
      expect(property2.isPrivate, isTrue);
      expect(property2.typeReference.type, equals('List'));
      expect(property2.typeReference, isA<ListObjectType>());
      expect(
          (property2.typeReference as ListObjectType).ofType.type, 'Integer');
    });

    test('Classes can have properties with apex docs', () {
      var classBody = '''
      public class MyClass {
        /**
         * @description Some description
         */
        @NamespaceAccessible public String MyProperty1 { get; set; }
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.properties.length, equals(1));
      expect(
          generatedClass.properties
              .any((element) => element.name == 'MyProperty1'),
          isTrue);

      PropertyMirror property1 = generatedClass.properties
          .firstWhere((element) => element.name == 'MyProperty1');
      expect(property1.rawDocComment, isNotNull);
    });

    test('Classes can have fields', () {
      var classBody = '''
      public class MyClass {
        private String myVar1, myVar2;
        private Integer myVar3;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(3));
      expect(generatedClass.fields.any((element) => element.name == 'myVar1'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar2'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar3'),
          isTrue);

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('String'));

      FieldMirror field2 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar2');
      expect(field2.isPrivate, isTrue);
      expect(field2.typeReference.type, equals('String'));

      FieldMirror field3 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar3');
      expect(field3.isPrivate, isTrue);
      expect(field3.typeReference.type, equals('Integer'));
    });

    test('Fields can be transient', () {
      var classBody = '''
      public class MyClass {
        transient String myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));
      expect(generatedClass.fields.any((element) => element.name == 'myVar1'),
          isTrue);

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.memberModifiers, contains(MemberModifier.transient));
      expect(field1.typeReference.type, equals('String'));
    });

    test('Fields can be final', () {
      var classBody = '''
      public class MyClass {
        final String myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));
      expect(generatedClass.fields.any((element) => element.name == 'myVar1'),
          isTrue);

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.memberModifiers, contains(MemberModifier.isFinal));
      expect(field1.typeReference.type, equals('String'));
    });

    test('Classes can have fields in groups', () {
      var classBody = '''
      public class MyClass {
        // @start-group Variables
        private String myVar1, myVar2;
        private Integer myVar3;
        // @end-group
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(3));
      expect(generatedClass.fields.any((element) => element.name == 'myVar1'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar2'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar3'),
          isTrue);

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('String'));
      expect(field1.group, equals('Variables'));

      FieldMirror field2 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar2');
      expect(field2.isPrivate, isTrue);
      expect(field2.typeReference.type, equals('String'));
      expect(field2.group, equals('Variables'));

      FieldMirror field3 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar3');
      expect(field3.isPrivate, isTrue);
      expect(field3.typeReference.type, equals('Integer'));
      expect(field2.group, equals('Variables'));
    });

    test('Classes can have fields in groups using traditional /** comments ',
        () {
      var classBody = '''
      public class MyClass {
        /** @start-group Variables */
        /** @description The description for the variables */
        private String myVar1, myVar2;
        private Integer myVar3;
        /** @end-group */
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(3));
      expect(generatedClass.fields.any((element) => element.name == 'myVar1'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar2'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar3'),
          isTrue);

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('String'));
      expect(field1.group, equals('Variables'));
      expect(
          field1.docDescription, equals('The description for the variables'));

      FieldMirror field2 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar2');
      expect(field2.isPrivate, isTrue);
      expect(field2.typeReference.type, equals('String'));
      expect(field2.group, equals('Variables'));

      FieldMirror field3 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar3');
      expect(field3.isPrivate, isTrue);
      expect(field3.typeReference.type, equals('Integer'));
      expect(field2.group, equals('Variables'));
    });

    test(
        'Classes can have fields in groups using traditional /** comments with a description',
        () {
      var classBody = '''
      public class MyClass {
        /**
         * @start-group Variables
         * @description Group description
         */
        /** @description The description for the variables */
        private String myVar1, myVar2;
        private Integer myVar3;
        /** @end-group */
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(3));
      expect(generatedClass.fields.any((element) => element.name == 'myVar1'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar2'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar3'),
          isTrue);

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('String'));
      expect(field1.group, equals('Variables'));
      expect(field1.groupDescription, equals('Group description'));
      expect(
          field1.docDescription, equals('The description for the variables'));

      FieldMirror field2 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar2');
      expect(field2.isPrivate, isTrue);
      expect(field2.typeReference.type, equals('String'));
      expect(field2.group, equals('Variables'));

      FieldMirror field3 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar3');
      expect(field3.isPrivate, isTrue);
      expect(field3.typeReference.type, equals('Integer'));
      expect(field2.group, equals('Variables'));
    });

    test(
        'Classes can have fields in groups using traditional /** comments with a description, but not having a description themselves',
        () {
      var classBody = '''
      public class MyClass {
        /**
         * @start-group Variables
         * @description Group description
         */
        private String myVar1, myVar2;
        private Integer myVar3;
        /** @end-group */
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(3));
      expect(generatedClass.fields.any((element) => element.name == 'myVar1'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar2'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar3'),
          isTrue);

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('String'));
      expect(field1.group, equals('Variables'));
      expect(field1.groupDescription, equals('Group description'));
      expect(field1.docDescription, isNull);

      FieldMirror field2 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar2');
      expect(field2.isPrivate, isTrue);
      expect(field2.typeReference.type, equals('String'));
      expect(field2.group, equals('Variables'));

      FieldMirror field3 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar3');
      expect(field3.isPrivate, isTrue);
      expect(field3.typeReference.type, equals('Integer'));
      expect(field2.group, equals('Variables'));
    });

    test('Classes can have properties in groups', () {
      var classBody = '''
      public with sharing class MyClass {
        /**
         * @start-group Group Name
         * @description Group Description
         */
        public String Prop1 { get; set; }
        public Integer Prop2 { get; set; }
        /** @end-group */
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.properties.length, equals(2));
      expect(
          generatedClass.properties.any((element) => element.name == 'Prop1'),
          isTrue);
      expect(
          generatedClass.properties.any((element) => element.name == 'Prop1'),
          isTrue);

      PropertyMirror property1 = generatedClass.properties
          .firstWhere((element) => element.name == 'Prop1');
      expect(property1.group, equals('Group Name'));
      expect(property1.groupDescription, equals('Group Description'));
      expect(property1.docDescription, isNull);

      PropertyMirror property2 = generatedClass.properties
          .firstWhere((element) => element.name == 'Prop2');
      expect(property2.groupDescription, equals('Group Description'));
      expect(property2.docDescription, isNull);
      expect(property2.docDescription, isNull);
    });

    test('Classes can have fields with values', () {
      var classBody = '''
      public class MyClass {
        private String myVar1 = 'some value';
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));
      expect(generatedClass.fields.any((element) => element.name == 'myVar1'),
          isTrue);

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('String'));
    });

    test('Groups can have descriptions', () {
      var classBody = '''
      public class MyClass {
        // @start-group This is a group description
        private String myVar1, myVar2;
        private Integer myVar3;
        // @end-group
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(3));
      expect(generatedClass.fields.any((element) => element.name == 'myVar1'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar2'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar3'),
          isTrue);

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('String'));
      expect(field1.group, equals('This is a group description'));

      FieldMirror field2 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar2');
      expect(field2.isPrivate, isTrue);
      expect(field2.typeReference.type, equals('String'));
      expect(field2.group, equals('This is a group description'));

      FieldMirror field3 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar3');
      expect(field3.isPrivate, isTrue);
      expect(field3.typeReference.type, equals('Integer'));
      expect(field2.group, equals('This is a group description'));
    });

    test('Groups can start with special characters', () {
      var classBody = '''
      public class MyClass {
        // @start-group 'Variable'
        private String myVar1, myVar2;
        private Integer myVar3;
        // @end-group
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(3));
      expect(generatedClass.fields.any((element) => element.name == 'myVar1'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar2'),
          isTrue);
      expect(generatedClass.fields.any((element) => element.name == 'myVar3'),
          isTrue);

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.isPrivate, isTrue);
      expect(field1.typeReference.type, equals('String'));
      expect(field1.group, equals("'Variable'"));

      FieldMirror field2 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar2');
      expect(field2.isPrivate, isTrue);
      expect(field2.typeReference.type, equals('String'));
      expect(field2.group, equals("'Variable'"));

      FieldMirror field3 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar3');
      expect(field3.isPrivate, isTrue);
      expect(field3.typeReference.type, equals('Integer'));
      expect(field2.group, equals("'Variable'"));
    });

    test('Classes can have fields with doc comments', () {
      var classBody = '''
      public class MyClass {
        /**
         * @description Some description
         */
        private String myVar1;
      }
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.fields.length, equals(1));
      expect(generatedClass.fields.any((element) => element.name == 'myVar1'),
          isTrue);

      FieldMirror field1 = generatedClass.fields
          .firstWhere((element) => element.name == 'myVar1');
      expect(field1.rawDocComment, isNotNull);
    });

    test('Classes can have methods', () {
      var classBody = '''
      public class MyClass {
        @NamespaceAccessible
        public void sayHi() {
          System.debug(getGreeting());
        }
        public String getGreeting() {
          return 'Hi!';
        }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.methods.length, equals(2));
      expect(generatedClass.methods.any((element) => element.name == 'sayHi'),
          isTrue);
      expect(
          generatedClass.methods
              .any((element) => element.name == 'getGreeting'),
          isTrue);

      MethodMirror method1 = generatedClass.methods
          .firstWhere((element) => element.name == 'sayHi');
      expect(method1.isPublic, isTrue);
      expect(method1.isNamespaceAccessible, isTrue);
      expect(method1.isVoid, isTrue);

      MethodMirror method2 = generatedClass.methods
          .firstWhere((element) => element.name == 'getGreeting');
      expect(method2.isPublic, isTrue);
      expect(method2.isNamespaceAccessible, isFalse);
      expect(method2.isVoid, isFalse);
      expect(method2.typeReference.type, equals('String'));
    });

    test('Methods can be virtual', () {
      var classBody = '''
      public virtual class MyClass {
        @NamespaceAccessible
        public virtual void sayHi() {
          System.debug(getGreeting());
        }
        public String getGreeting() {
          return 'Hi!';
        }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.methods.length, equals(2));
      expect(generatedClass.methods.any((element) => element.name == 'sayHi'),
          isTrue);
      expect(
          generatedClass.methods
              .any((element) => element.name == 'getGreeting'),
          isTrue);

      MethodMirror method1 = generatedClass.methods
          .firstWhere((element) => element.name == 'sayHi');
      expect(method1.isPublic, isTrue);
      expect(method1.isNamespaceAccessible, isTrue);
      expect(method1.isVoid, isTrue);
      expect(method1.memberModifiers, contains(MemberModifier.virtual));

      MethodMirror method2 = generatedClass.methods
          .firstWhere((element) => element.name == 'getGreeting');
      expect(method2.isPublic, isTrue);
      expect(method2.isNamespaceAccessible, isFalse);
      expect(method2.isVoid, isFalse);
      expect(method2.typeReference.type, equals('String'));
    });

    test('Methods can be abstract', () {
      var classBody = '''
      public abstract class MyClass {
        @NamespaceAccessible
        public abstract void sayHi() {
          System.debug(getGreeting());
        }
        public String getGreeting() {
          return 'Hi!';
        }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.methods.length, equals(2));
      expect(generatedClass.methods.any((element) => element.name == 'sayHi'),
          isTrue);
      expect(
          generatedClass.methods
              .any((element) => element.name == 'getGreeting'),
          isTrue);

      MethodMirror method1 = generatedClass.methods
          .firstWhere((element) => element.name == 'sayHi');
      expect(method1.isPublic, isTrue);
      expect(method1.isNamespaceAccessible, isTrue);
      expect(method1.isVoid, isTrue);
      expect(method1.memberModifiers, contains(MemberModifier.abstract));

      MethodMirror method2 = generatedClass.methods
          .firstWhere((element) => element.name == 'getGreeting');
      expect(method2.isPublic, isTrue);
      expect(method2.isNamespaceAccessible, isFalse);
      expect(method2.isVoid, isFalse);
      expect(method2.typeReference.type, equals('String'));
    });

    test('Classes can have methods with doc comments', () {
      var classBody = '''
      public class MyClass {
        /**
         * @description Some description
         */
        @NamespaceAccessible
        public void sayHi() {
          System.debug(getGreeting());
        }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.methods.length, equals(1));
      expect(generatedClass.methods.any((element) => element.name == 'sayHi'),
          isTrue);

      MethodMirror method1 = generatedClass.methods
          .firstWhere((element) => element.name == 'sayHi');
      expect(method1.rawDocComment, isNotNull);
    });

    test('Classes can have methods with doc comments after an annotation', () {
      var classBody = '''
      public class MyClass {
        @NamespaceAccessible
        /**
         * @description Some description
         */
        public void sayHi() {
          System.debug(getGreeting());
        }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.methods.length, equals(1));
      expect(generatedClass.methods.any((element) => element.name == 'sayHi'),
          isTrue);

      MethodMirror method1 = generatedClass.methods
          .firstWhere((element) => element.name == 'sayHi');
      expect(method1.rawDocComment, isNotNull);
    });

    test('Classes can have methods with doc comments and parameters', () {
      var classBody = '''
      public class MyClass {
        /**
         * @description Some description
         * @param param1 The description for param1
         */
        @NamespaceAccessible
        public void sayHi(String param1) {
          System.debug(getGreeting());
        }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.methods.length, equals(1));
      expect(generatedClass.methods.any((element) => element.name == 'sayHi'),
          isTrue);

      MethodMirror method1 = generatedClass.methods
          .firstWhere((element) => element.name == 'sayHi');
      expect(method1.docDescription, 'Some description');
      expect(method1.parameters.first.docDescription,
          'The description for param1');
    });

    test('Classes can have constructors', () {
      var classBody = '''
      public class MyClass {
        private final String var1;
        @NamespaceAccessible
        public MyClass() {
          this.var1 = 'Hello!';
        }

        public MyClass(String greeting) {
          this.var1 = greeting;
        }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.constructors.length, equals(2));
      expect(
          generatedClass.constructors
              .any((element) => element.isNamespaceAccessible),
          isTrue);
      expect(
          generatedClass.constructors
              .any((element) => !element.isNamespaceAccessible),
          isTrue);

      ConstructorMirror constructor1 = generatedClass.constructors
          .firstWhere((element) => element.isNamespaceAccessible);
      expect(constructor1.isPublic, isTrue);
      expect(constructor1.parameters.isEmpty, isTrue);

      ConstructorMirror constructor2 = generatedClass.constructors
          .firstWhere((element) => !element.isNamespaceAccessible);
      expect(constructor2.isPublic, isTrue);
      expect(constructor2.parameters.length, equals(1));
    });

    test('Classes can have constructors with doc comments', () {
      var classBody = '''
      public class MyClass {
        private final String var1;
        /**
         * @description Some description
         */
        @NamespaceAccessible
        public MyClass() {
          this.var1 = 'Hello!';
        }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.constructors.length, equals(1));
      expect(
          generatedClass.constructors
              .any((element) => element.isNamespaceAccessible),
          isTrue);

      ConstructorMirror constructor1 = generatedClass.constructors
          .firstWhere((element) => element.isNamespaceAccessible);
      expect(constructor1.rawDocComment, isNotNull);
    });

    test('Classes can have inner enums', () {
      var classBody = '''
      public class MyClass {
        @NamespaceAccessible
        public enum MyEnum {
          A,B,C
        }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.enums.length, equals(1));
      expect(generatedClass.enums.first.name, equals('MyEnum'));
      expect(generatedClass.enums.first.isNamespaceAccessible, isTrue);
      expect(generatedClass.enums.first.isPublic, isTrue);
    });

    test('Classes can have inner enums with documents', () {
      var classBody = '''
      public class MyClass {
        /**
         * @description Some description
         */
        @NamespaceAccessible
        public enum MyEnum {
          A,B,C
        }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.enums.length, equals(1));
      expect(generatedClass.enums.first.rawDocComment, isNotNull);
    });

    test('Classes can have inner interfaces', () {
      var classBody = '''
      public class MyClass {
        @NamespaceAccessible
        public interface MyInterface {
          String sampleMethod(String prop1, String prop2);
        }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.interfaces.length, equals(1));

      var innerInterface = generatedClass.interfaces.first;
      expect(innerInterface.name, equals('MyInterface'));
      expect(innerInterface.isNamespaceAccessible, isTrue);
      expect(innerInterface.isPublic, isTrue);
      expect(innerInterface.methods.length, equals(1));
      expect(innerInterface.methods.first.typeReference.type, 'String');
    });

    test('Classes can have inner interfaces with doc comments', () {
      var classBody = '''
      public class MyClass {
        /**
         * @description Some description
         */
        @NamespaceAccessible
        public interface MyInterface {
          String sampleMethod(String prop1, String prop2);
        }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.interfaces.length, equals(1));

      var innerInterface = generatedClass.interfaces.first;
      expect(innerInterface.rawDocComment, isNotNull);
    });

    test('Classes can have inner classes', () {
      var classBody = '''
      public class MyClass {
          public class InnerClass {
              public String innerMethod(String prop1, String prop2) {
                  return '';
              }
          }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.classes.length, equals(1));

      var innerClass = generatedClass.classes.first;
      expect(innerClass.name, equals('InnerClass'));
      expect(innerClass.isNamespaceAccessible, isFalse);
      expect(innerClass.isPublic, isTrue);
      expect(innerClass.methods.length, equals(1));
      expect(innerClass.methods.first.typeReference.type, 'String');
      expect(innerClass.methods.first.parameters.length, equals(2));
    });

    test('Classes can have inner classes with doc comments', () {
      var classBody = '''
      public class MyClass {
        /**
         * @description Some description
         */
          public class InnerClass {
              public String innerMethod(String prop1, String prop2) {
                  return '';
              }
          }
      }
      ''';

      final apexWalkerDefinition = walkApex(classBody);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.classes.length, equals(1));

      var innerClass = generatedClass.classes.first;
      expect(innerClass.rawDocComment, isNotNull);
    });

    test('Supports the null coalesce operator', () {
      var classBody = '''
      public class MyClass {
        /**
         * @description Some description
         */
          public class InnerClass {
              public String innerMethod(String prop1, String prop2) {
                  return null ?? 'test';
              }
          }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });

    test('Supports multi-level SOQL queries', () {
      var classBody = '''
      public class MyClass {
        /**
         * @description Some description
         */
         public class InnerClass {
             public List<SObject> innerMethod() {
                 return [SELECT Name, (SELECT Id, (SELECT Id, (SELECT Id, (SELECT Id FROM Child4 ) FROM Child3 ) FROM Child2 ) FROM Child1) FROM Parent];
             }
         }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });

    test('Supports switch when', () {
      var classBody = '''
      public class MyClass {
        public void doSomething() {
          switch on Account.SObjectType.newSObject() {
            when Schema.Account someAccount {
              System.debug(someAccount.Name);
            }
          }
        }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });
  });

  group('Parses Apex Interfaces', () {
    test('Creates a simple interface', () {
      final apexWalkerDefinition = walkApex('interface MyInterface{}');
      expect(apexWalkerDefinition.getGeneratedApexType(), isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.name, 'MyInterface');
    });

    test('Interfaces can have doc comments', () {
      const interfaceBody = '''
      /**
       * @description Some description
       */
      interface MyInterface{}
      ''';
      final apexWalkerDefinition = walkApex(interfaceBody);
      expect(apexWalkerDefinition.getGeneratedApexType(), isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.rawDocComment,
          isNotNull);
    });

    test('Interfaces without access modifiers are private by default', () {
      final apexWalkerDefinition = walkApex('interface MyClass{}');
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isTrue);
    });

    test('Interfaces with private access modifiers are private', () {
      final apexWalkerDefinition = walkApex('private interface MyClass{}');
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isTrue);
    });

    test('Interfaces can extend other interfaces', () {
      final apexWalkerDefinition = walkApex(
          'public interface MyInterface extends Interface1, Interface2{}');
      var generatedInterface =
          apexWalkerDefinition.getGeneratedApexType() as InterfaceMirror;
      expect(generatedInterface.extendedInterfaces, isNotEmpty);
      expect(generatedInterface.extendedInterfaces[0], 'Interface1');
      expect(generatedInterface.extendedInterfaces[1], 'Interface2');
    });

    test('Interfaces can have methods', () {
      var interfaceBody = '''
      @NamespaceAccessible
      public interface MyInterface {
        void sayHi();
        String getGreeting();
      }
      ''';

      final apexWalkerDefinition = walkApex(interfaceBody);
      var generatedInterface =
          apexWalkerDefinition.getGeneratedApexType() as InterfaceMirror;
      expect(generatedInterface.methods.length, equals(2));
      expect(
          generatedInterface.methods.any((element) => element.name == 'sayHi'),
          isTrue);
      expect(
          generatedInterface.methods
              .any((element) => element.name == 'getGreeting'),
          isTrue);

      MethodMirror method1 = generatedInterface.methods
          .firstWhere((element) => element.name == 'sayHi');
      // Interface methods must inherit the access modifiers of the parent interface
      expect(method1.isPublic, isTrue);
      expect(method1.isNamespaceAccessible, isTrue);
      expect(method1.isVoid, isTrue);

      MethodMirror method2 = generatedInterface.methods
          .firstWhere((element) => element.name == 'getGreeting');
      expect(method2.isPublic, isTrue);
      expect(method2.isNamespaceAccessible, isTrue);
      expect(method2.isVoid, isFalse);
      expect(method2.typeReference.type, equals('String'));
    });

    test('Interfaces can have methods with doc comments', () {
      var interfaceBody = '''
      @NamespaceAccessible
      public interface MyInterface {
       /**
        * @description Some description
        */
        void sayHi();
      }
      ''';

      final apexWalkerDefinition = walkApex(interfaceBody);
      var generatedInterface =
          apexWalkerDefinition.getGeneratedApexType() as InterfaceMirror;
      expect(generatedInterface.methods.length, equals(1));
      expect(
          generatedInterface.methods.any((element) => element.name == 'sayHi'),
          isTrue);

      MethodMirror method1 = generatedInterface.methods
          .firstWhere((element) => element.name == 'sayHi');
      expect(method1.rawDocComment, isNotNull);
    });

    test('Interfaces methods inherit the interface annotation', () {
      var interfaceBody = '''
      @NamespaceAccessible
      public interface MyInterface {
       /**
        * @description Some description
        */
        void sayHi();
      }
      ''';

      final apexWalkerDefinition = walkApex(interfaceBody);
      var generatedInterface =
          apexWalkerDefinition.getGeneratedApexType() as InterfaceMirror;
      expect(generatedInterface.methods.length, equals(1));
      expect(
          generatedInterface.methods.any((element) => element.name == 'sayHi'),
          isTrue);

      MethodMirror method1 = generatedInterface.methods
          .firstWhere((element) => element.name == 'sayHi');
      expect(method1.isNamespaceAccessible, isTrue);
    });

    test(
        'Interfaces methods inherit the interface annotation but also can have their own annotations',
        () {
      var interfaceBody = '''
      @NamespaceAccessible
      public interface MyInterface {
       /**
        * @description Some description
        */
        @Deprecated
        void sayHi();
      }
      ''';

      final apexWalkerDefinition = walkApex(interfaceBody);
      var generatedInterface =
          apexWalkerDefinition.getGeneratedApexType() as InterfaceMirror;
      expect(generatedInterface.methods.length, equals(1));
      expect(
          generatedInterface.methods.any((element) => element.name == 'sayHi'),
          isTrue);

      MethodMirror method1 = generatedInterface.methods
          .firstWhere((element) => element.name == 'sayHi');
      expect(method1.isNamespaceAccessible, isTrue);

      expect(method1.isDeprecated, isTrue);
    });
  });

  group('Parses Apex enums', () {
    test('Creates a simple enum', () {
      final apexWalkerDefinition = walkApex('enum MyEnum{}');
      expect(apexWalkerDefinition.getGeneratedApexType(), isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.name, 'MyEnum');
    });

    test('Enums can have doc comments', () {
      const enumBody = '''
      /**
       * @description Some description
       */
      enum MyEnum{}
      ''';
      final apexWalkerDefinition = walkApex(enumBody);
      expect(apexWalkerDefinition.getGeneratedApexType(), isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.rawDocComment,
          isNotNull);
    });

    test('Supports enums with access modifiers', () {
      final apexWalkerDefinition =
          walkApex('@NamespaceAccessible public enum MyEnum{}');
      expect(apexWalkerDefinition.getGeneratedApexType(), isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPublic, isTrue);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isNamespaceAccessible,
          isTrue);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isFalse);
    });

    test('Enums can have values', () {
      var enumBody = '''
      enum MyEnum {
        VALUE1, VALUE2, VALUE3
      }
      ''';

      final apexWalkerDefinition = walkApex(enumBody);
      var generatedEnum =
          apexWalkerDefinition.getGeneratedApexType() as EnumMirror;
      expect(generatedEnum.values.length, equals(3));
      expect(generatedEnum.values.any((element) => element.name == 'VALUE1'),
          isTrue);
      expect(generatedEnum.values.any((element) => element.name == 'VALUE2'),
          isTrue);
      expect(generatedEnum.values.any((element) => element.name == 'VALUE3'),
          isTrue);
    });

    // enum values can have descriptions
    test('enum values can have descriptions', () {
      var enumBody = '''
      enum MyEnum {
        /** @description Value 1 */
        VALUE1,
        /** @description Value 2 */
        VALUE2,
        /** @description Value 3 */
        VALUE3
      }
      ''';

      final apexWalkerDefinition = walkApex(enumBody);
      var generatedEnum =
          apexWalkerDefinition.getGeneratedApexType() as EnumMirror;
      expect(generatedEnum.values.length, equals(3));
      expect(generatedEnum.values.any((element) => element.name == 'VALUE1'),
          isTrue);
      expect(generatedEnum.values.any((element) => element.name == 'VALUE2'),
          isTrue);
      expect(generatedEnum.values.any((element) => element.name == 'VALUE3'),
          isTrue);
      expect(
          generatedEnum.values
              .firstWhere((element) => element.name == 'VALUE1')
              .docDescription,
          'Value 1');
      expect(
          generatedEnum.values
              .firstWhere((element) => element.name == 'VALUE2')
              .docDescription,
          'Value 2');
      expect(
          generatedEnum.values
              .firstWhere((element) => element.name == 'VALUE3')
              .docDescription,
          'Value 3');
    });
  });

  group('Parses SOQL', () {
    test('Parses SOQL with the DISTANCE keyword', () {
      var classBody = '''
      public class MyClass {
        public void myMethod() {
          List<Account> accounts =
            [SELECT Name, Location__c
              FROM Warehouse__c
              WHERE DISTANCE(Location__c, GEOLOCATION(37.775,-122.418), 'mi') < 20];
        }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });

    test('Parses SOQL with the GROUPING keyword', () {
      var classBody = '''
      public class MyClass {
        public void myMethod() {
          List<Object> groupedResults =
            [SELECT LeadSource, Rating,
              GROUPING(LeadSource) grpLS, GROUPING(Rating) grpRating,
              COUNT(Name) cnt
              FROM Lead
              GROUP BY ROLLUP(LeadSource, Rating)];
        }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });

    test('Parses SOQL with the convertCurrency function', () {
      var classBody = '''
      public class MyClass {
        public void myMethod() {
          List<Object> result = [ SELECT convertCurrency(Amount) FROM Opportunity ];
        }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });

    test('Parses SOQL with the convertCurrency and formatting', () {
      var classBody = '''
      public class MyClass {
        public void myMethod() {
          List<Object> result = [
              SELECT Amount, FORMAT(amount) Amt, convertCurrency(amount) convertedAmount,
                  FORMAT(convertCurrency(amount)) convertedCurrency
              FROM Opportunity where id = '006R00000024gDtIAI'
            ];
        }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });

    test('Parses SOQL with the format function with aggregate', () {
      var classBody = '''
      public class MyClass {
        public void myMethod() {
          List<Object> result = [ SELECT FORMAT(MIN(closedate)) Amt FROM opportunity ];
        }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });

    test('Parses SOQL with time literals', () {
      var classBody = '''
      public class MyClass {
        public void myMethod() {
          List<Object> result = [SELECT Break__c,Check_Out__c FROM VMS_Time_Card_Item__c WHERE Time_Card__c =:timeCard.Id AND Check_Out__c = 01:00:00.000Z];
        }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });
  });

  group('Parses SOSL', () {
    test('Parses SOSL with the toLabel keyword', () {
      var classBody = '''
      public class MyClass {
        public void myMethod() {
          String searchTerm = 'test';
          Object result =
            [FIND :searchTerm IN ALL FIELDS RETURNING Account(Id, toLabel(Name)) LIMIT 10];
        }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });

    test('Parses SOSL with the toLabel keyword using an alias', () {
      var classBody = '''
      public class MyClass {
        public void myMethod() {
          String searchTerm = 'test';
          Object result = [FIND :searchTerm IN ALL FIELDS RETURNING Account(Id, toLabel(Name) AliasName) LIMIT 10];
        }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });

    test('Parses SOSL that converts currency', () {
      var classBody = '''
      public class MyClass {
        public void myMethod() {
          Object result = [ FIND 'test' RETURNING Opportunity(Name, convertCurrency(Amount), convertCurrency(Amount) AliasCurrency) ];
        }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });

    test('Parses SOSL that converts and formats currency', () {
      var classBody = '''
      public class MyClass {
        public void myMethod() {
          Object result = [ FIND 'Acme' RETURNING Account(AnnualRevenue, FORMAT(convertCurrency(AnnualRevenue)) convertedCurrency) ];
        }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });

    test('Parses SOSL that formats with aggregate', () {
      var classBody = '''
      public class MyClass {
        public void myMethod() {
          Object result = [ FIND 'Acme' RETURNING Account(AnnualRevenue, FORMAT(MIN(CloseDate))) ];
        }
      }
      ''';

      expect(() => walkApex(classBody), returnsNormally);
    });
  });
}
