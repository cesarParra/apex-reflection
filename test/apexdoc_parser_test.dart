// Disabling null safety since this test relies on the antrl4 package
// @dart=2.10

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
        'This is a description. The description continues here.');
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

  test('Can parse tagged description with multiple lines', () {
    final docBody = '''
    /**
      * @description This is a description.
      * The description continues here
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.description,
        'This is a description. The description continues here');
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
        equals('description1 The description continues here.'));
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
    expect(docComment.returnAnnotation.body, equals('Returns something'));
  });

  // throws tag
  // exception tag
  // example tag
  // multiple tags
  // Inline {@name link}
}
