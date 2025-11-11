import 'package:apexdocs_dart/src/service/parsers.dart';
import 'package:test/test.dart';

main() {
  test('Can parse a single line simple doc comment', () {
    final docBody = '/** This is a description */';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.description, 'This is a description');
  });

  test('Can parse a multi line simple doc comment', () {
    final docBody = '''
    /**
      * This is a description
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.description, 'This is a description');
  });

  test('Avoids parsing `{@hidden ...} content', () {
    final docBody = '''
    /**
      * This is a description
      * {@hidden This content should be hidden}
      * This is more description
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.description, 'This is a description\n\nThis is more description');
  });

  test('Can parse a multi line simple doc comment with multiple blank lines',
      () {
    final docBody = '''
      /**
        *
        * This is a description
        *
        */
      ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.description, 'This is a description');
  });

  test('Can parse description of multiple lines.', () {
    final docBody = '''
    /**
      * This is a description.
      * The description continues here.
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.description,
        'This is a description.\nThe description continues here.');
  });

  test('Can parse tagged description', () {
    final docBody = '''
    /**
      * @description This is a description
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.description, 'This is a description');
  });

  test('Multi-tagged lines produce multiple annotations', () {
    final docBody = '''
    /**
      * @first This is a description @second with another tag
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);

    expect(docComment.annotations.length, equals(2));
    expect(docComment.annotations.first.name, equals('first'));
    expect(docComment.annotations.last.name, equals('second'));
  });

  test('Tags within ticks are not treated as annotations', () {
    final docBody = '''
    /**
      * @first This is a description `@second` with another tag
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);

    expect(docComment.annotations.length, equals(1));
    expect(docComment.annotations.first.name, equals('first'));
    expect(docComment.annotations.first.body,
        equals('This is a description `@second` with another tag'));
  });

  test('Ticks can be placed wherever in description blocks without @description tags', () {
    final docBody = '''
    /**
     * This class features a 'circuit breaker' variable. 
     * For instance, `@future` methods must be
     * static void methods...
     */
    ''';

    final docComment = ApexdocParser.parseFromBody(docBody);

    expect(docComment.error, isNull);
  });

  test('Can parse tagged description with multiple lines', () {
    final docBody = '''
    /**
      * @description This is a description.
      * The description continues here
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.descriptionLines.length, equals(2));
    expect(docComment.description,
        equals('This is a description.\nThe description continues here'));
  });

  test('Can parse a tag', () {
    final docBody = '''
    /**
      * @description This is a description.
      * @param param1 description
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.paramAnnotations.length, equals(1));
    expect(docComment.paramAnnotations.first.paramName, equals('param1'));
    expect(docComment.paramAnnotations.first.body, equals('description'));
  });

  test('Can parse multiple of the same tag', () {
    final docBody = '''
    /**
      * @description This is a description.
      * @param param1 description1
      * @param param2 description2
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.paramAnnotations.length, equals(2));
    expect(docComment.paramAnnotations.first.paramName, equals('param1'));
    expect(docComment.paramAnnotations.first.body, equals('description1'));
    expect(docComment.paramAnnotations[1].paramName, equals('param2'));
    expect(docComment.paramAnnotations[1].body, equals('description2'));
  });

  test('Can parse a param with a multi line body', () {
    final docBody = '''
    /**
      * @description This is a description.
      * @param param1 description1
      * The description continues here.
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.paramAnnotations.length, equals(1));
    expect(docComment.paramAnnotations.first.paramName, equals('param1'));
    expect(docComment.paramAnnotations.first.body,
        equals('description1\nThe description continues here.'));
  });

  test('Can parse a return tag', () {
    final docBody = '''
    /**
      * @description This is a description.
      * @param param1 description1
      * @return Returns something
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.returnAnnotation, isNotNull);
    expect(docComment.returnAnnotation!.body, equals('Returns something'));
  });

  test('Can parse a throws tag', () {
    final docBody = '''
    /**
      * @description This is a description.
      * @param param1 description1
      * @return Returns something
      * @throws ExceptionName1 description1
      * @throws ExceptionName2 description2
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.throwsAnnotations.length, equals(2));
    expect(docComment.throwsAnnotations.first.exceptionName,
        equals('ExceptionName1'));
    expect(docComment.throwsAnnotations.first.body, equals('description1'));
    expect(docComment.throwsAnnotations[1].exceptionName,
        equals('ExceptionName2'));
    expect(docComment.throwsAnnotations[1].body, equals('description2'));
  });

  test('Can parse an example tag', () {
    final docBody = '''
    /**
      * @description This is a description.
      * @param param1 description1
      * @return Returns something
      * @throws ExceptionName1 description1
      * @throws ExceptionName2 description2
      * @author John Doe
      * @example
      * String testString = 'MyString';
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.exampleAnnotation, isNotNull);
    expect(docComment.exampleAnnotation!.bodyLines.length, equals(1));
    expect(docComment.exampleAnnotation!.body,
        equals("String testString = 'MyString';"));
  });

  test('Can parse an example tag using the `@code` format', () {
    final docBody = '''
    /**
      * @description This is a description.
      * @param param1 description1
      * @return Returns something
      * @throws ExceptionName1 description1
      * @throws ExceptionName2 description2
      * @author John Doe
      * @example
      * {@code
      * String testString = 'MyString';
      * System.debug(testString);
      * private static void helperMethod() {
      *   // do something
      * }
      * }
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.exampleAnnotation, isNotNull);
    expect(docComment.exampleAnnotation!.bodyLines.length, equals(5));
    expect(docComment.exampleAnnotation!.body,
        equals("String testString = 'MyString';\nSystem.debug(testString);\nprivate static void helperMethod() {\n  // do something\n}"));
  });

  test('Can parse custom tags', () {
    final docBody = '''
    /**
      * @author Some Author
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.annotationsByName('author').length, equals(1));
    expect(docComment.annotationsByName('author').first.body,
        equals('Some Author'));
  });

  test('Can parse group tags', () {
    final docBody = '''
      /**
       * @description This is a sample enum. This references {@link ReferencedEnum}.
       *
       * This description has several lines
       * @group Sample Enums
       * @author John Doe
       * @date 2022-01-01
       * @some-custom Test. I can also have a {@link ReferencedEnum} here.
       *                    And it can be multiline.
       * @see ReferencedEnum
       * @mermaid
       * graph TD
       *  A[SampleEnum] -->|references| B[ReferencedEnum]
       *  B -->|referenced by| A
       */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.annotationsByName('group').length, equals(1));
    expect(docComment.annotationsByName('group').first.body, equals('Sample Enums'));
  });

  test('Doc contents can have @links', () {
    final docBody = '''
      /**
       * @description This is a sample enum. This references {@link ReferencedEnum}.
       *
       * This description has several lines
       * @group Sample Enums
       * @author John Doe
       * @date 2022-01-01
       * @some-custom Test. I can also have a {@link ReferencedEnum} here.
       *                    And it can be multiline.
       * @see ReferencedEnum
       * @mermaid
       * graph TD
       *  A[SampleEnum] -->|references| B[ReferencedEnum]
       *  B -->|referenced by| A
       */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.descriptionLines.length, equals(3));
    expect(docComment.descriptionLines.first, equals('This is a sample enum. This references {@link ReferencedEnum}.'));
  });
}
