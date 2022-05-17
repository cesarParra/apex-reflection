import 'package:apexdocs_dart/src/model/modifiers.dart';

List<dynamic> getAccessModifiers(dynamic ctx) {
  final List<dynamic> modifiersAndAnnotations = [
    ...ctx.modifiers(),
    ...ctx.annotations()
  ];
  return modifiersAndAnnotations
      .map((modifierContext) =>
          getModifierFromStringDeclaration(modifierContext.text))
      .toList();
}
