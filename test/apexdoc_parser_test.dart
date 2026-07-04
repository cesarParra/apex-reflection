import 'package:apex_reflection/src/service/parsers.dart';
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
    expect(docComment.description,
        'This is a description\n\nThis is more description');
    expect(docComment.hidden, isTrue);
  });

  test('Comments without {@hidden} are not marked as hidden', () {
    final docComment =
        ApexdocParser.parseFromBody('/** This is a description */');
    expect(docComment.hidden, isFalse);
  });

  test('A bare {@hidden} tag marks the comment as hidden', () {
    final docComment =
        ApexdocParser.parseFromBody('/** This is a description {@hidden} */');
    expect(docComment.hidden, isTrue);
    expect(docComment.description, 'This is a description');
  });

  test('{@hidden} in a tag body marks the comment as hidden', () {
    final docBody = '''
    /**
      * This is a description
      * @param name The name. {@hidden internal note}
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.hidden, isTrue);
    expect(docComment.paramAnnotations.single.body, 'The name.');
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

  test(
      'Ticks can be placed wherever in description blocks without @description tags',
      () {
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
    expect(
        docComment.exampleAnnotation!.body,
        equals(
            "```\nString testString = 'MyString';\nSystem.debug(testString);\nprivate static void helperMethod() {\n  // do something\n}\n```"));
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
    expect(docComment.annotationsByName('group').first.body,
        equals('Sample Enums'));
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
    expect(
        docComment.descriptionLines.first,
        equals(
            'This is a sample enum. This references {@link ReferencedEnum}.'));
  });

  group('Tag keyword matching', () {
    test('@returns is an alias of @return', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        * @returns The computed result.
        */
      ''');
      expect(docComment.returnAnnotation, isNotNull);
      expect(docComment.returnAnnotation!.body, equals('The computed result.'));
    });

    test('A tag that merely starts with a keyword is a custom tag', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        * @paramountConcern Speed.
        */
      ''');
      expect(docComment.paramAnnotations, isEmpty);
      expect(docComment.annotations.single.name, equals('paramountConcern'));
      expect(docComment.annotations.single.body, equals('Speed.'));
    });

    test('@exception is an alias of @throws', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        * @exception AuraHandledException When the request is malformed.
        */
      ''');
      final thrown = docComment.throwsAnnotations.single;
      expect(thrown.exceptionName, equals('AuraHandledException'));
      expect(thrown.body, equals('When the request is malformed.'));
    });
  });

  group('Parameter and exception name extraction', () {
    test('A dotted exception name is captured whole', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        * @throws System.DmlException When saving fails.
        */
      ''');
      final thrown = docComment.throwsAnnotations.single;
      expect(thrown.exceptionName, equals('System.DmlException'));
      expect(thrown.body, equals('When saving fails.'));
    });

    test('A generic parameter name is captured whole', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        * @param Map<Id, Account> accountsById The accounts.
        */
      ''');
      expect(docComment.paramAnnotations.single.paramName,
          equals('Map<Id, Account>'));
    });

    test('An array parameter name is captured whole', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        * @param String[] names The names.
        */
      ''');
      expect(docComment.paramAnnotations.single.paramName, equals('String[]'));
    });

    test('An unbalanced angle bracket is not part of the name', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        * @param count must be < 10.
        */
      ''');
      expect(docComment.paramAnnotations.single.paramName, equals('count'));
      expect(docComment.paramAnnotations.single.body, equals('must be < 10.'));
    });
  });

  group('Fenced code blocks', () {
    test('An @ inside a fenced code block does not start a tag', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
       * @example
       * ```apex
       * List<String> recordNames = (List<String>) expression.Evaluator.run(
       *   'MAP(@context, Name)',
       *   records
       * );
       * ```
       */
      ''');
      expect(docComment.annotations, isEmpty);
      expect(docComment.exampleAnnotation, isNotNull);
      final exampleBody = docComment.exampleAnnotation!.body;
      expect(exampleBody, contains("'MAP(@context, Name)',"));
      expect(exampleBody, contains('records'));
      expect(exampleBody, contains(');'));
    });

    test('A fence without a language tag also protects its content', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
       * Call it like this:
       * ```
       * run('@context');
       * ```
       */
      ''');
      expect(docComment.annotations, isEmpty);
      expect(docComment.description, contains("run('@context');"));
    });

    test('An unclosed fence does not swallow the rest of the comment', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
       * Broken sample: ```apex code
       * @param name The name.
       */
      ''');
      expect(docComment.paramAnnotations.single.paramName, equals('name'));
    });
  });

  group('Whitespace and malformed content', () {
    test('Leading whitespace on the first description line is dropped', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        *\t\tTab-indented description.
        */
      ''');
      expect(docComment.description, equals('Tab-indented description.'));
    });

    test('Indentation beyond one space is kept on later lines', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        * First line.
        *    indented continuation
        */
      ''');
      expect(docComment.descriptionLines,
          equals(['First line.', '   indented continuation']));
    });

    test('An unbalanced brace does not derail the following tags', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        * Produces { "name": "Fred" and more
        * @param name The name.
        */
      ''');
      expect(docComment.description, contains('Produces {'));
      expect(docComment.paramAnnotations.single.paramName, equals('name'));
    });
  });

  group('Official ApexDoc spec coverage', () {
    test('A capitalized @Description tag still populates the description', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        * @Description This is a description
        */
      ''');
      expect(docComment.description, 'This is a description');
    });

    test('Preserves official @see reference forms verbatim', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        * Description.
        * @see AccountManager#getAccount(Id, Boolean)
        * @see "Salesforce Security Guide"
        * @see <a href="https://example.com">Example</a>
        */
      ''');
      final seeAnnotations = docComment.annotationsByName('see');
      expect(seeAnnotations, hasLength(3));
      expect(seeAnnotations[0].body, 'AccountManager#getAccount(Id, Boolean)');
      expect(seeAnnotations[1].body, '"Salesforce Security Guide"');
      expect(
          seeAnnotations[2].body, '<a href="https://example.com">Example</a>');
    });

    test('Preserves {@link Class#member} inline references verbatim', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        * See {@link AccountManager#getAccount(Id)} for details.
        */
      ''');
      expect(docComment.description,
          'See {@link AccountManager#getAccount(Id)} for details.');
    });

    test('Multiple @author tags are all captured', () {
      final docComment = ApexdocParser.parseFromBody('''
      /**
        * Description.
        * @author First Author
        * @author Second Author
        */
      ''');
      final authors = docComment.annotationsByName('author');
      expect(authors, hasLength(2));
      expect(authors[0].body, 'First Author');
      expect(authors[1].body, 'Second Author');
    });
  });
}
