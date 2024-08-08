import 'package:apexdocs_dart/src/model/multi_line_apex_doc_annotation.dart';
import 'package:test/test.dart';

main() {
  test('returns the same list of strings when there is nothing to sanitize', () {
    final descriptionLines = ['line 1', 'line 2', 'line 3'];
    final multiLine = MultiLineApexDocAnnotation.parse(descriptionLines);
    expect(multiLine.lines, descriptionLines);
  });

  test('sanitizes line starts', () {
    final descriptionLines = ['line 1', '* line 2', 'line 3'];
    final multiLine = MultiLineApexDocAnnotation.parse(descriptionLines);
    expect(multiLine.lines, ['line 1', 'line 2', 'line 3']);
  });

  test('breaks up lines with newlines', () {
    final descriptionLines = ['line 1', 'line 2\nline3', 'line 4'];
    final multiLine = MultiLineApexDocAnnotation.parse(descriptionLines);
    expect(multiLine.lines, ['line 1', 'line 2', 'line3', 'line 4']);
  });

  test('trims leading and trailing whitespace', () {
    final descriptionLines = ['  line 1  ', '  line 2  ', '  line 3  '];
    final multiLine = MultiLineApexDocAnnotation.parse(descriptionLines);
    expect(multiLine.lines, ['line 1', 'line 2', 'line 3']);
  });

  test('remove all leading empty lines', () {
    final descriptionLines = ['', '', 'line 1', 'line 2', 'line 3'];
    final multiLine = MultiLineApexDocAnnotation.parse(descriptionLines);
    expect(multiLine.lines, ['line 1', 'line 2', 'line 3']);
  });

  test('keeps empty lines in the middle', () {
    final descriptionLines = ['line 1', '', 'line 2', '', 'line 3'];
    final multiLine = MultiLineApexDocAnnotation.parse(descriptionLines);
    expect(multiLine.lines, ['line 1', '', 'line 2', '', 'line 3']);
  });

  test('removes all trailing empty lines', () {
    final descriptionLines = ['line 1', 'line 2', 'line 3', '', ''];
    final multiLine = MultiLineApexDocAnnotation.parse(descriptionLines);
    expect(multiLine.lines, ['line 1', 'line 2', 'line 3']);
  });

  test('removes consecutive empty lines', () {
    final descriptionLines = ['line 1', '', '', 'line 2', '', '', 'line 3'];
    final multiLine = MultiLineApexDocAnnotation.parse(descriptionLines);
    expect(multiLine.lines, ['line 1', '', 'line 2', '', 'line 3']);
  });
}
