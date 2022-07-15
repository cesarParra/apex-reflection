List<String> sanitizeLines(List<String> lines) {
  final List<String> cleanLines = [];
  for (String currentLine in lines) {
    List<String> splitLines = currentLine.split('\n');
    for (String splitLine in splitLines) {
      String trimmedLine = splitLine.trimRight();
      if (trimmedLine == '*') {
        trimmedLine = '';
      }

      if (trimmedLine.isNotEmpty) {
        cleanLines.add(trimmedLine);
      } else {
        // To keep things clean we only allow one empty line at a time,
        // so here we check if the previous line is already empty, and only
        // add if it isn't;.
        var previousLine = cleanLines.isEmpty ? '' : cleanLines.last;
        if (previousLine.isNotEmpty) {
          cleanLines.add(trimmedLine);
        }
      }
    }
  }

  if (cleanLines.isNotEmpty && cleanLines.last.isEmpty) {
    // Additional clean up to prevent the last line from being empty.
    cleanLines.removeLast();
  }
  return cleanLines;
}
