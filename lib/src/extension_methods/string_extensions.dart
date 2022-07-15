extension StartsWithExtensions on String {
  bool startsWithIgnoreWhiteSpace(var comparison) {
    var stringWithoutLeadingWhitespace = trimLeft();
    return stringWithoutLeadingWhitespace.startsWith(comparison);
  }

  bool startsWithSingleSpace() {
    if (!startsWith(' ')) {
      return false;
    }

    var withoutLeadingSpace = replaceFirst(' ', '');
    return !withoutLeadingSpace.startsWith(' ');
  }
}
