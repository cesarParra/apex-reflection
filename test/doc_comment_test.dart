import 'dart:convert';

import 'package:apex_reflection/src/model/doc_comment.dart';
import 'package:test/test.dart';

main() {
  group('Doc Comment', () {
    test('Has a description', () {
      final comment = DocComment('Any Description');
      expect(comment.description, equals('Any Description'));
    });

    test(
        'Supports the description being a tag when there is no default description',
        () {
      final comment = DocComment('');
      comment.annotations.add(DocCommentAnnotation('description', 'some body'));
      expect(comment.description, equals('some body'));
    });

    test('Can have param annotations', () {
      final comment = DocComment('Any Description');
      comment.paramAnnotations
          .add(ParamDocCommentAnnotation('param1', 'Some description'));
      expect(comment.paramAnnotations.length, equals(1));
      expect(comment.paramAnnotations.first.paramName, equals('param1'));
    });

    test('Can have a return annotation', () {
      final comment = DocComment('Any Description');
      comment.returnAnnotation = ReturnDocCommentAnnotation('description');
      expect(comment.returnAnnotation, isNotNull);
    });

    test('Can have annotations', () {
      final comment = DocComment('Any Description');
      comment.annotations.add(DocCommentAnnotation('see', 'body'));
      expect(comment.annotations.length, equals(1));
      expect(comment.annotations.first.name, equals('see'));
    });
  });

  group('Doc Comment Annotation', () {
    test('Has a name', () {
      final annotation = DocCommentAnnotation('description', 'body');
      expect(annotation.name, equals('description'));
    });

    test('Can have a body', () {
      final annotation = DocCommentAnnotation('description', ['body']);
      expect(annotation.body, equals('body'));
    });
  });

  group('Param annotations', () {
    test('Has an annotation name of param, the parameter name, and a body', () {
      final paramAnnotation =
          ParamDocCommentAnnotation('param1', 'Some description');
      expect(paramAnnotation.name, equals('param'));
      expect(paramAnnotation.paramName, equals('param1'));
      expect(paramAnnotation.body, equals('Some description'));
    });
  });

  group('Return annotations', () {
    test('Has a body', () {
      final returnAnnotation = ReturnDocCommentAnnotation('Some description');
      expect(returnAnnotation.name, equals('return'));
      expect(returnAnnotation.body, equals('Some description'));
    });
  });

  group('Throws annotations', () {
    test('Has an annotation name of throws, the exception name, and a body',
        () {
      final throwsAnnotation =
          ThrowsDocCommentAnnotation('ExceptionName', 'Some description');
      expect(throwsAnnotation.name, equals('throws'));
      expect(throwsAnnotation.exceptionName, equals('ExceptionName'));
      expect(throwsAnnotation.body, equals('Some description'));
    });
  });

  group('Example annotations', () {
    test('Has a body', () {
      final exampleAnnotation =
          ExampleDocCommentAnnotation(['Some description']);
      expect(exampleAnnotation.name, equals('example'));
      expect(exampleAnnotation.body, equals('Some description'));
    });
  });

  group('JSON round-trip deserialization', () {
    test('DocCommentAnnotation survives JSON round-trip', () {
      final annotation = DocCommentAnnotation('see', 'SomeClass');
      final json = jsonEncode(annotation.toJson());
      final deserialized = DocCommentAnnotation.fromJson(
          jsonDecode(json) as Map<String, dynamic>);
      expect(deserialized.name, equals('see'));
      expect(deserialized.bodyLines, equals(['SomeClass']));
      expect(deserialized.body, equals('SomeClass'));
    });

    test('ParamDocCommentAnnotation survives JSON round-trip', () {
      final annotation =
          ParamDocCommentAnnotation('param1', 'Param description');
      final json = jsonEncode(annotation.toJson());
      final deserialized = ParamDocCommentAnnotation.fromJson(
          jsonDecode(json) as Map<String, dynamic>);
      expect(deserialized.paramName, equals('param1'));
      expect(deserialized.bodyLines, equals(['Param description']));
      expect(deserialized.body, equals('Param description'));
    });

    test('ReturnDocCommentAnnotation survives JSON round-trip', () {
      final annotation = ReturnDocCommentAnnotation('Returns a value');
      final json = jsonEncode(annotation.toJson());
      final deserialized = ReturnDocCommentAnnotation.fromJson(
          jsonDecode(json) as Map<String, dynamic>);
      expect(deserialized.bodyLines, equals(['Returns a value']));
      expect(deserialized.body, equals('Returns a value'));
    });

    test('ThrowsDocCommentAnnotation survives JSON round-trip', () {
      final annotation = ThrowsDocCommentAnnotation(
          'IllegalArgumentException', 'if arg is null');
      final json = jsonEncode(annotation.toJson());
      final deserialized = ThrowsDocCommentAnnotation.fromJson(
          jsonDecode(json) as Map<String, dynamic>);
      expect(deserialized.exceptionName, equals('IllegalArgumentException'));
      expect(deserialized.bodyLines, equals(['if arg is null']));
      expect(deserialized.body, equals('if arg is null'));
    });

    test('ExampleDocCommentAnnotation survives JSON round-trip', () {
      final annotation = ExampleDocCommentAnnotation(
          ['String s = "hello";', 'System.debug(s);']);
      final json = jsonEncode(annotation.toJson());
      final deserialized = ExampleDocCommentAnnotation.fromJson(
          jsonDecode(json) as Map<String, dynamic>);
      expect(deserialized.bodyLines,
          equals(['String s = "hello";', 'System.debug(s);']));
    });

    test('DocComment with annotations survives JSON round-trip', () {
      final comment = DocComment('A class description');
      comment.paramAnnotations
          .add(ParamDocCommentAnnotation('input', 'the input value'));
      comment.returnAnnotation =
          ReturnDocCommentAnnotation('the computed result');
      comment.throwsAnnotations.add(
          ThrowsDocCommentAnnotation('CustomException', 'when input is bad'));
      comment.exampleAnnotation =
          ExampleDocCommentAnnotation(['doSomething();']);
      comment.annotations.add(DocCommentAnnotation('see', 'OtherClass'));

      final json = jsonEncode(comment.toJson());
      final deserialized =
          DocComment.fromJson(jsonDecode(json) as Map<String, dynamic>);

      expect(deserialized.description, equals('A class description'));
      expect(deserialized.paramAnnotations, hasLength(1));
      expect(deserialized.paramAnnotations.first.paramName, equals('input'));
      expect(
          deserialized.paramAnnotations.first.body, equals('the input value'));
      expect(deserialized.returnAnnotation, isNotNull);
      expect(
          deserialized.returnAnnotation!.body, equals('the computed result'));
      expect(deserialized.throwsAnnotations, hasLength(1));
      expect(deserialized.throwsAnnotations.first.exceptionName,
          equals('CustomException'));
      expect(deserialized.throwsAnnotations.first.body,
          equals('when input is bad'));
      expect(deserialized.exampleAnnotation, isNotNull);
      expect(deserialized.exampleAnnotation!.bodyLines,
          equals(['doSomething();']));
      expect(deserialized.annotations, hasLength(1));
      expect(deserialized.annotations.first.name, equals('see'));
      expect(deserialized.annotations.first.body, equals('OtherClass'));
    });

    test(
        'ParamDocCommentAnnotation deserializes from raw JSON with List<dynamic>',
        () {
      // Simulates what jsonDecode produces — all lists are List<dynamic>
      final rawJson = {
        'paramName': 'myParam',
        'bodyLines': <dynamic>['line one', 'line two'],
      };
      final deserialized = ParamDocCommentAnnotation.fromJson(rawJson);
      expect(deserialized.paramName, equals('myParam'));
      expect(deserialized.bodyLines, equals(['line one', 'line two']));
    });

    test(
        'ReturnDocCommentAnnotation deserializes from raw JSON with List<dynamic>',
        () {
      final rawJson = {
        'bodyLines': <dynamic>['returns something'],
      };
      final deserialized = ReturnDocCommentAnnotation.fromJson(rawJson);
      expect(deserialized.bodyLines, equals(['returns something']));
    });

    test(
        'ThrowsDocCommentAnnotation deserializes from raw JSON with List<dynamic>',
        () {
      final rawJson = {
        'exceptionName': 'SomeException',
        'bodyLines': <dynamic>['when things go wrong'],
      };
      final deserialized = ThrowsDocCommentAnnotation.fromJson(rawJson);
      expect(deserialized.exceptionName, equals('SomeException'));
      expect(deserialized.bodyLines, equals(['when things go wrong']));
    });

    test(
        'ExampleDocCommentAnnotation deserializes from raw JSON with List<dynamic>',
        () {
      final rawJson = {
        'bodyLines': <dynamic>['example line 1', 'example line 2'],
      };
      final deserialized = ExampleDocCommentAnnotation.fromJson(rawJson);
      expect(
          deserialized.bodyLines, equals(['example line 1', 'example line 2']));
    });
  });
}
