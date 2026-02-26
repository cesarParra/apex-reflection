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
    final list = this is List<String> ? this as List<String> : toList();
    var end = list.length;
    while (end > 0 && list[end - 1].isEmpty) end--;
    return list.take(end);
  }

  Iterable<String> withoutConsecutiveEmptyLines() sync* {
    bool lastWasEmpty = false;
    for (final line in this) {
      if (line.isEmpty && lastWasEmpty) continue;
      lastWasEmpty = line.isEmpty;
      yield line;
    }
  }
}

extension ReversedIterable<E> on Iterable<E> {
  Iterable<E> get reversed {
    return toList().reversed;
  }
}
