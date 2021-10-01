extension ContainsIgnoringCase<E> on Iterable<E> {
  bool containsIgnoreCase(String target) {
    for (final currentElement in this) {
      if (currentElement is String) {
        if (currentElement.toLowerCase() == target.toLowerCase()) {
          return true;
        }
      }
    }
    return false;
  }
}
