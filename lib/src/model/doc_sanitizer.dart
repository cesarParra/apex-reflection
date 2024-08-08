String sanitizeLineStart(String line) {
  var sanitizedLine = line.trimLeft();
  if (sanitizedLine.startsWith('*')) {
    sanitizedLine = sanitizedLine.replaceFirst('*', '');
  }
  if (sanitizedLine.startsWith(' ')) {
    sanitizedLine = sanitizedLine.replaceFirst(' ', '');
  }
  return sanitizedLine.trimRight();
}
