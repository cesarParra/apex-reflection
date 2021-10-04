import 'package:apexdocs_dart/src/model/modifiers.dart';

List<dynamic> getAccessModifiers(dynamic ctx) {
  return ctx
      .modifiers()
      .map((modifierContext) =>
          getModifierFromStringDeclaration(modifierContext.text))
      .toList();
}
