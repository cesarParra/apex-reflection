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
    expect(docComment.annotationsByName('param').length, equals(1));
    expect(docComment.annotationsByName('param').first.body,
        equals('param1 description'));
  });

  test('Can parse multiple of the same tag', () {
    final docBody = '''
    /**
      * @description This is a description.
      * @param param1 description
      * @param param2 
      */
    ''';
    final docComment = ApexdocParser.parseFromBody(docBody);
    expect(docComment.annotationsByName('param').length, equals(1));
    expect(docComment.annotationsByName('param').first.body,
        equals('param1 description'));
  });

  // multiple param tags
  // param tag that spawns multiple lines
  // throws tag
  // exception tag
  // example tag
  // multiple tags
  // Inline {@name link}
}
