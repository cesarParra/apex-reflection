List<String> getAccessModifiers(dynamic ctx) {
  bool _hasNoVisibilityModifiers(dynamic ctx) {
    var modifiers = _allModifiers(ctx);
    return !modifiers.contains('private') &&
        !modifiers.contains('public') &&
        !modifiers.contains('global') &&
        !modifiers.contains('protected');
  }

  var accessModifiers = [
    // In Apex a declaration with no visibility modifier is private by default
    if (_hasNoVisibilityModifiers(ctx)) 'private',
    ..._allModifiers(ctx)
  ];
  return accessModifiers;
}

List<String> _allModifiers(dynamic ctx) {
  String _sanitizeModifier(String modifier) {
    var sanitizedString = modifier.replaceFirst('@', '').toLowerCase();
    if (sanitizedString.contains('(')) {
      sanitizedString = sanitizedString.replaceRange(
          modifier.indexOf('(') - 1, modifier.indexOf(')'), '');
    }
    return sanitizedString;
  }

  return ctx
      .modifiers()
      .map((modifierContext) => _sanitizeModifier(modifierContext.text))
      .toList()
      .cast<String>();
}
