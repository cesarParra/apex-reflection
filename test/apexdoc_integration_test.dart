import 'package:test/test.dart';
import 'package:apex_reflection/src/service/case_insensitive_input_stream.dart';

import 'package:apex_reflection/src/service/walker.dart';

ApexWalkerDefinition walkApex(String body) {
  final apexWalkerDefinition = ApexWalkerDefinition();
  Walker.walk(CaseInsensitiveInputStream.fromString(body), apexWalkerDefinition,
      (parser) => parser.compilationUnit());
  return apexWalkerDefinition;
}

void main() {
  group('Single line Apex docs', () {
    test('Doc can be a single lined description without tag', () {
      const classBody = '''
      /** MyClass description */
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
    });

    test('Doc can be a single lined description with description tag', () {
      const classBody = '''
      /** @description MyClass description */
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
    });

    test('Doc can be a single lined description with inline links', () {
      const classBody = '''
      /** MyClass description {@link https://www.example.com} */
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description {@link https://www.example.com}'));
    });

    test('Doc can be a single lined description with inline emails', () {
      const classBody = '''
      /** MyClass description {@contact example+test@email.com} */
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description {@contact example+test@email.com}'));
    });

    test('Doc can be a single line with a tag', () {
      const classBody = '''
      /** MyClass description @group MyGroup */
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .getAnnotationBody('group'),
          equals('MyGroup'));
    });

    test('Doc can be a single line with multiple tags', () {
      const classBody = '''
      /** MyClass description @author John Smith @group MyGroup*/
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
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
      const classBody = '''
      /**
       * MyClass description
       */
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
    });

    test('Doc can be a multi-lined description with a lot of whitespace', () {
      const classBody = '''
      /**
       *
       *
       * MyClass description
       *
       *
       */
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()?.docDescription,
          equals('MyClass description'));
    });

    test('Doc can be a multi-lined description with description tag', () {
      const classBody = '''
      /**
       * @description MyClass description
       */
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
    });

    test('Doc can be a multi-lined description with inline links', () {
      const classBody = '''
      /**
       * MyClass description {@link https://www.example.com}
       */
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description {@link https://www.example.com}'));
    });

    test('Doc can be a multi-lined description with inline emails', () {
      const classBody = '''
      /**
       * MyClass description {@contact example+test@email.com}
       */
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description {@contact example+test@email.com}'));
    });

    test('Doc can be multi-line with a tag', () {
      const classBody = '''
      /**
       * MyClass description
       * @group MyGroup
       */
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .getAnnotationBody('group'),
          equals('MyGroup'));
    });

    test('Doc can be multi-lined with multiple tags', () {
      const classBody = '''
      /**
       * MyClass description
       * @author John Smith
       * @group MyGroup
       */
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
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
      const classBody = '''
      /*********************
       * MyClass description
       *********************/
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
    });

    test(
        'Doc blocked style with description without a tag with a lot of whitespace',
        () {
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
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()?.docDescription,
          equals('MyClass description'));
    });

    test('Doc can block styled with description tag', () {
      const classBody = '''
      /**********************************
       * @description MyClass description
       **********************************/
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
    });

    test('Doc can be block styled with inline links', () {
      const classBody = '''
      /*****************************************************
       * MyClass description {@link https://www.example.com}
       *****************************************************/
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description {@link https://www.example.com}'));
    });

    test('Doc can be blocked description with inline emails', () {
      const classBody = '''
      /*******************************************************
       * MyClass description {@contact example+test@email.com}
       *******************************************************/
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description {@contact example+test@email.com}'));
    });

    test('Doc can be block styled with a tag', () {
      const classBody = '''
      /**********************
       * MyClass description
       *********************
       * @group  MyGroup
       *********************/
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
      expect(apexWalkerDefinition.getGeneratedApexType()!.docDescription,
          equals('MyClass description'));
      expect(
          apexWalkerDefinition
              .getGeneratedApexType()!
              .getAnnotationBody('group'),
          equals('MyGroup'));
    });

    test('Doc can be block styled with multiple tags', () {
      const classBody = '''
      /************************************
       * @description MyClass description
       * @author      John Smith
       * @group       MyGroup
       ***********************************/
      class MyClass{}
      ''';
      final apexWalkerDefinition = walkApex(classBody);
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
