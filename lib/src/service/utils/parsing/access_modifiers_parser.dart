import 'package:apex_reflection/src/model/modifiers.dart';

List<dynamic> getAccessModifiers(dynamic ctx, {isMember = false}) {
  final List<dynamic> modifiersAndAnnotations = [
    ...ctx.modifiers(),
    ...ctx.annotations()
  ];
  return modifiersAndAnnotations
      .map((modifierContext) =>
          getModifierFromStringDeclaration(modifierContext, isMember: isMember))
      .toList();
}
