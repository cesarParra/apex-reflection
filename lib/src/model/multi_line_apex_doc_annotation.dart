import 'dart:convert';

import 'package:apexdocs_dart/src/extension_methods/list_extensions.dart';

import 'doc_sanitizer.dart';

class MultiLineApexDocAnnotation {
  final List<String> lines;

  MultiLineApexDocAnnotation._(this.lines);

  factory MultiLineApexDocAnnotation.parse(List<String> lines) {
    return MultiLineApexDocAnnotation._(
      lines
          .expand(_split)
          .map(sanitizeLineStart)
          .withoutLeadingEmptyLines()
          .withoutTrailingEmptyLines()
          .withoutConsecutiveEmptyLines()
          .toList(),
    );
  }

  static List<String> _split(String line) {
    return line.split('\n');
  }
}

extension Sanitizer on Iterable<String> {
  Iterable<String> withoutLeadingEmptyLines() {
    return skipWhile((line) => line.isEmpty);
  }

  Iterable<String> withoutTrailingEmptyLines() {
    return reversed.skipWhile((line) => line.isEmpty).reversed;
  }

  Iterable<String> withoutConsecutiveEmptyLines() {
    return fold(<String>[], (List<String> acc, String line) {
      if (acc.isNotEmpty && acc.last.isEmpty && line.isEmpty) {
        return acc;
      }
      return [...acc, line];
    }).cast();
  }
}
