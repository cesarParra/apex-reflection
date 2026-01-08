import 'package:apex_reflection/src/model/multi_line_apex_doc_annotation.dart';
import 'package:test/test.dart';

main() {
  group('sanitizes line start', () {
    test('removes a leading *', () {
      const input = '* line 1';
      final result = sanitizeLineStart(input);
      expect(result, equals('line 1'));
    });

    test('removes all leading *', () {
      const input = '*** line 1';
      final result = sanitizeLineStart(input);
      expect(result, equals('line 1'));
    });
  });

  group('parses and sanitizes doc content', () {
    test('does nothing when the lines are already sanitized', () {
      const input = 'line 1\nline 2\nline 3';
      final result = sanitizeDocContent(input);
      expect(result, equals(['line 1', 'line 2', 'line 3']));
    });

    test('sanitizes line starts', () {
      const input = 'line 1\n* line 2\nline 3';
      final result = sanitizeDocContent(input);
      expect(result, equals(['line 1', 'line 2', 'line 3']));
    });

    test('sanitization of line starts keeps extra white spaces after the *',
        () {
      const input = 'line 1\n *  line 2\nline 3';
      final result = sanitizeDocContent(input);
      expect(result, equals(['line 1', ' line 2', 'line 3']));
    });

    test('breaks up lines with new lines', () {
      const input = 'line 1\nline 2\nline3\nline 4';
      final result = sanitizeDocContent(input);
      expect(result, equals(['line 1', 'line 2', 'line3', 'line 4']));
    });

    test('gets rid of leading empty lines', () {
      const input = '\nline 2\nline 3';
      final result = sanitizeDocContent(input);
      expect(result, equals(['line 2', 'line 3']));
    });

    test('gets rid of trailing empty lines', () {
      const input = 'line 1\nline 2\n';
      final result = sanitizeDocContent(input);
      expect(result, equals(['line 1', 'line 2']));
    });

    test('gets rid of repeating empty lines', () {
      const input = 'line 1\n\n\nline 2\n';
      final result = sanitizeDocContent(input);
      expect(result, equals(['line 1', '', 'line 2']));
    });
  });

  group('parses code block content', () {
    test('sanitizes a single-line code block', () {
      const input = '``` print(\'Hello, World!\'); ```';
      final result = sanitizeDocContent(input);
      expect(result, equals(['``` print(\'Hello, World!\'); ```']));
    });

    test('sanitizes a multi-line code block', () {
      const input =
          '```\nprint(\'Hello, World!\');\nprint(\'Goodbye, World!\');\n```';
      final result = sanitizeDocContent(input);
      expect(
          result,
          equals([
            '```',
            'print(\'Hello, World!\');',
            'print(\'Goodbye, World!\');',
            '```'
          ]));
    });
  });
}
