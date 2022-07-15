import 'package:test/test.dart';
import 'package:apexdocs_dart/src/service/case_insensitive_input_stream.dart';

import 'package:apexdocs_dart/src/service/walker.dart';

void main() {
  group('Single line Apex docs', () {
    test('Doc can be a single lined description without tag', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /** MyClass description */
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
    });

    test('Doc can be a single lined description with description tag', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /** @description MyClass description */
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
    });

    test('Doc can be a single lined description with inline links', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /** MyClass description {@link https://www.example.com} */
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description {@link https://www.example.com}'));
    });

    test('Doc can be a single lined description with inline emails', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /** MyClass description {@contact example+test@email.com} */
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description {@contact example+test@email.com}'));
    });

    test('Doc can be a single line with a tag', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /** MyClass description @group MyGroup */
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .getAnnotationBody('group'),
          equals('MyGroup'));
    });

    test('Doc can be a single line with multiple tags', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /** MyClass description @author John Smith @group MyGroup*/
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .getAnnotationBody('author'),
          equals('John Smith'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .getAnnotationBody('group'),
          equals('MyGroup'));
    });
  });

  group('Multi-line doc', () {
    test('Doc can be a multi-lined description without tag', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /** 
       * MyClass description 
       */
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
    });

    test('Doc can be a multi-lined description with a lot of whitespace', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /** 
       *
       *
       * @description MyClass description 
       *
       *
       */
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()?.docDescription,
          equals('MyClass description'));
    });

    test('Doc can be a multi-lined description with description tag', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /** 
       * @description MyClass description 
       */
      class MyClass{}
      ''';

      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      String docDescription =
          apexWalkerDefinition.getGeneratedApexType()!.docDescription!;
      expect(docDescription, equals('MyClass description'));
    });

    test('Doc can be a multi-lined description with inline links', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /** 
       * MyClass description {@link https://www.example.com} 
       */
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description {@link https://www.example.com}'));
    });

    test('Doc can be a multi-lined description with inline emails', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /** 
       * MyClass description {@contact example+test@email.com} 
       */
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description {@contact example+test@email.com}'));
    });

    test('Doc can be multi-line with a tag', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /** 
       * MyClass description
       * @group MyGroup 
       */
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .getAnnotationBody('group'),
          equals('MyGroup'));
    });

    test('Doc can be multi-lined with multiple tags', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /** 
       * MyClass description 
       * @author John Smith 
       * @group MyGroup
       */
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .getAnnotationBody('author'),
          equals('John Smith'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .getAnnotationBody('group'),
          equals('MyGroup'));
    });
  });

  group("Block styled docs", () {
    test('Doc blocked styled without tag', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /********************* 
       * MyClass description 
       *********************/
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
    });

    test(
        'Doc blocked style with description without a tag with a lot of whitespace',
        () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /**********************
       **********************
       **********************
       * MyClass description
       **********************
       **********************
       **********************/
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()?.docDescription,
          equals('MyClass description'));
    });

    test('Doc can block styled with description tag', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /**********************************
       * @description MyClass description
       **********************************/
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
    });

    test('Doc can be block styled with inline links', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /*****************************************************
       * MyClass description {@link https://www.example.com}
       *****************************************************/
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description {@link https://www.example.com}'));
    });

    test('Doc can be blocked description with inline emails', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /*******************************************************
       * MyClass description {@contact example+test@email.com}
       *******************************************************/
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description {@contact example+test@email.com}'));
    });

    test('Doc can be block styled with a tag', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /**********************
       * MyClass description
       *********************
       * @group  MyGroup
       *********************/
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .getAnnotationBody('group'),
          equals('MyGroup'));
    });

    test('Doc can be block styled with multiple tags', () {
      final apexWalkerDefinition = ApexWalkerDefinition();
      const classBody = '''
      /************************************
       * @description MyClass description
       * @author      John Smith
       * @group       MyGroup
       ***********************************/
      class MyClass{}
      ''';
      Walker.walk(CaseInsensitiveInputStream.fromString(classBody),
          apexWalkerDefinition);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .getAnnotationBody('author'),
          equals('John Smith'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .getAnnotationBody('group'),
          equals('MyGroup'));
    });
  });
}
