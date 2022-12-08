import 'package:apexdocs_dart/src/extension_methods/list_extensions.dart';
import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/modifiers.dart';
import 'package:apexdocs_dart/src/model/type_references.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/case_insensitive_input_stream.dart';
import 'package:test/test.dart';

import 'package:apexdocs_dart/src/service/walker.dart';

void main() {
  group('Parses Apex Classes', () {
    test('Creates a simple class', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(CaseInsensitiveInputStream.fromString('class MyClass{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType(), isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.name, 'MyClass');
    });

    test('Classes can have Apex docs', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /**
       * @description Class description
       */
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.rawDocComment,
          isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('Class description'));
    });

    test('Classes can have Apex block style docs', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /**********************************************************
      @group          Group Name
      @description    Class description
      ***********************************************************/
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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

    test('Can have annotations before the docs', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      @IsTest
      /**
      * @group Integration Tests
      * @see SampleClass
      * @description This is a unit test class.
      */
      private class SampleTestClass {}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);

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
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /**
       * @description Account related operations.
       */
      @RestResource(urlMapping='/Account/*')
      private class SampleTestClass {}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);

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
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(CaseInsensitiveInputStream.fromString('class MyClass{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isTrue);
    });

    test('Classes with private access modifiers are private', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString('private class MyClass{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isTrue);
    });

    test('Classes with public access modifiers are public', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString('public class MyClass{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPublic, isTrue);
    });

    test('Classes with global access modifiers are global', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString('global class MyClass{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPublic, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isGlobal, isTrue);
    });

    test('Classes with protected access modifiers are protected', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString('protected class MyClass{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPublic, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isGlobal, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isProtected, isTrue);
    });

    test('Classes with protected access modifiers are protected', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString('protected class MyClass{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPublic, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isGlobal, isFalse);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isProtected, isTrue);
    });

    test('Virtual classes are supported', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString(
              'public virtual class MyClass{}'),
          apexWalkerDefinition);
      final generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.isVirtual, isTrue);
    });

    test('Supports the abstract access modifier', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString(
              'public abstract class MyClass{}'),
          apexWalkerDefinition);
      final generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.isAbstract, isTrue);
    });

    test('Supports the NamespaceAccessible annotation', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString(
              '@NamespaceAccessible public virtual class MyClass{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isNamespaceAccessible,
          isTrue);
    });

    test('Supports the IsTest annotation', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString(
              '@IsTest private class MyClass{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isTest, isTrue);
    });

    test('Supports annotations with extra parameters', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString(
              '@IsTest(Parallel=true) private class MyClass{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isTest, isTrue);
    });

    test('Supports annotations with multiple parameters', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString(
              "@InvocableMethod(label='Get Account Names' description='Returns the list of account names corresponding to the specified account IDs.' category='Account') private class MyClass{}"),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString('public class MyClass{}'),
          apexWalkerDefinition);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.extendedClass, isNull);
    });

    test('Classes can extend another class', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString(
              'public class MyClass extends ParentClass{}'),
          apexWalkerDefinition);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.extendedClass, equals('ParentClass'));
    });

    test('Classes can have properties', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        @NamespaceAccessible public String MyProperty1 { get; set; }
        private List<Integer> MyProperty2 { get; set; }
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        /**
         * @description Some description
         */
        @NamespaceAccessible public String MyProperty1 { get; set; }
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        private String myVar1, myVar2;
        private Integer myVar3;
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        transient String myVar1;
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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

    test('Classes can have fields in groups', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        // @start-group Variables
        private String myVar1, myVar2;
        private Integer myVar3;
        // @end-group
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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

    test('Classes can have fields with values', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        private String myVar1 = 'some value';
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        // @start-group This is a group description
        private String myVar1, myVar2;
        private Integer myVar3;
        // @end-group
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        // @start-group 'Variable'
        private String myVar1, myVar2;
        private Integer myVar3;
        // @end-group
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        /**
         * @description Some description
         */
        private String myVar1;
      }
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
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

      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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

    test('Classes can have methods with doc comments', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
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

      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
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

      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
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

      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
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

      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
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

      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        @NamespaceAccessible
        public enum MyEnum {
          A,B,C
        }
      }
      ''';

      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.enums.length, equals(1));
      expect(generatedClass.enums.first.name, equals('MyEnum'));
      expect(generatedClass.enums.first.isNamespaceAccessible, isTrue);
      expect(generatedClass.enums.first.isPublic, isTrue);
    });

    test('Classes can have inner enums with documents', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
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

      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.enums.length, equals(1));
      expect(generatedClass.enums.first.rawDocComment, isNotNull);
    });

    test('Classes can have inner interfaces', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
        @NamespaceAccessible
        public interface MyInterface {
          String sampleMethod(String prop1, String prop2);
        }
      }
      ''';

      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
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

      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.interfaces.length, equals(1));

      var innerInterface = generatedClass.interfaces.first;
      expect(innerInterface.rawDocComment, isNotNull);
    });

    test('Classes can have inner classes', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var classBody = '''
      public class MyClass {
          public class InnerClass {
              public String innerMethod(String prop1, String prop2) {
                  return '';
              }
          }
      }
      ''';

      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
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

      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      var generatedClass =
          apexWalkerDefinition.getGeneratedApexType() as ClassMirror;
      expect(generatedClass.classes.length, equals(1));

      var innerClass = generatedClass.classes.first;
      expect(innerClass.rawDocComment, isNotNull);
    });
  });

  group('Parses Apex Interfaces', () {
    test('Creates a simple interface', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString('interface MyInterface{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType(), isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.name, 'MyInterface');
    });

    test('Interfaces can have doc comments', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const interfaceBody = '''
      /**
       * @description Some description
       */
      interface MyInterface{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(interfaceBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType(), isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.rawDocComment,
          isNotNull);
    });

    test('Interfaces without access modifiers are private by default', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(CaseInsensitiveInputStream.fromString('interface MyClass{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isTrue);
    });

    test('Interfaces with private access modifiers are private', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString('private interface MyClass{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isTrue);
    });

    test('Interfaces can extend other interfaces', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString(
              'public interface MyInterface extends Interface1, Interface2{}'),
          apexWalkerDefinition);
      var generatedInterface =
          apexWalkerDefinition.getGeneratedApexType() as InterfaceMirror;
      expect(generatedInterface.extendedInterfaces, isNotEmpty);
      expect(generatedInterface.extendedInterfaces[0], 'Interface1');
      expect(generatedInterface.extendedInterfaces[1], 'Interface2');
    });

    test('Interfaces can have methods', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      var interfaceBody = '''
      @NamespaceAccessible
      public interface MyInterface {
        void sayHi();
        String getGreeting();
      }
      ''';

      Walker.walk(CaseInsensitiveInputStream.fromString(interfaceBody),
          apexWalkerDefinition);
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
      final apexWalkerDefinition = ApexWalkerDefinition();
      var interfaceBody = '''
      @NamespaceAccessible
      public interface MyInterface {
       /**
        * @description Some description
        */
        void sayHi();
      }
      ''';

      Walker.walk(CaseInsensitiveInputStream.fromString(interfaceBody),
          apexWalkerDefinition);
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
  });

  group('Parses Apex enums', () {
    test('Creates a simple enum', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(CaseInsensitiveInputStream.fromString('enum MyEnum{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType(), isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.name, 'MyEnum');
    });

    test('Enums can have doc comments', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const enumBody = '''
      /**
       * @description Some description
       */
      enum MyEnum{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(enumBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType(), isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.rawDocComment,
          isNotNull);
    });

    test('Supports enums with access modifiers', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      Walker.walk(
          CaseInsensitiveInputStream.fromString(
              '@NamespaceAccessible public enum MyEnum{}'),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType(), isNotNull);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPublic, isTrue);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isNamespaceAccessible,
          isTrue);
      expect(apexWalkerDefinition.getGeneratedApexType()!.isPrivate, isFalse);
    });
  });
}
