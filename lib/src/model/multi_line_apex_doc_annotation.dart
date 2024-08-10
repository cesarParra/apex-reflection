List<String> sanitizeDocContent(String input) {
  return _split(input)
      .map(sanitizeLineStart)
      .withoutLeadingEmptyLines()
      .withoutTrailingEmptyLines()
      .withoutConsecutiveEmptyLines()
      .toList();
}

List<String> _split(String line) {
  return line.split('\n');
}

String sanitizeLineStart(String line) {
  var sanitizedLine = line.trimLeft();

  // Remove all leading starts
  while (sanitizedLine.startsWith('*')) {
    sanitizedLine = sanitizedLine.replaceFirst('*', '');
  }

  if (sanitizedLine.startsWith(' ')) {
    sanitizedLine = sanitizedLine.replaceFirst(' ', '');
  }
  return sanitizedLine.trimRight();
}

extension on Iterable<String> {
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

extension ReversedIterable<E> on Iterable<E> {
  Iterable<E> get reversed {
    return toList().reversed;
  }
}
