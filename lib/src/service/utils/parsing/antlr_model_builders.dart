import 'package:apex_reflection/src/model/modifiers.dart';
import 'package:apex_reflection/src/model/type_references.dart';

import '../../../antlr/grammars/apex/ApexParser.dart';

/// Model construction from ANTLR parse-tree contexts.
///
/// This is the only place where model objects are built from ANTLR types,
/// which keeps the model classes themselves parser-agnostic. It exists solely
/// to serve the legacy ANTLR pipeline and is deleted together with it.

ObjectTypeReference typeReferenceFromContext(TypeRefContext? typeRefContext) {
  if (typeRefContext == null) {
    // If null is received, then we are dealing with a "void" type.
    return ReferenceObjectType('void');
  }

  final hasArrays = typeRefContext.arraySubscripts() == null
      ? false
      : typeRefContext.arraySubscripts()!.text.isNotEmpty;
  if (hasArrays) {
    // If the type is an array (has [] at the end), we treat received
    // TypeRefContext as a list
    // This removes the first 2 characters: '[' and ']'
    typeRefContext.arraySubscripts()!.children!.removeRange(0, 2);

    return ListObjectType(
        typeReferenceFromContext(typeRefContext), typeRefContext.text);
  }
  if (typeRefContext.typeName(0)!.LIST() != null) {
    // In Apex a list can have at MOST one type argument
    final childTypeRefContext =
        typeRefContext.typeName(0)!.typeArguments()!.typeList()!.typeRef(0)!;
    return ListObjectType(
        typeReferenceFromContext(childTypeRefContext), typeRefContext.text);
  }
  if (typeRefContext.typeName(0)!.SET() != null) {
    // In Apex a list can have at MOST one type argument
    final childTypeRefContext =
        typeRefContext.typeName(0)!.typeArguments()!.typeList()!.typeRef(0)!;
    return SetObjectType(
        typeReferenceFromContext(childTypeRefContext), typeRefContext.text);
  }
  if (typeRefContext.typeName(0)!.MAP() != null) {
    // In Apex a list can have at MOST two type arguments (key and value)
    final keyTypeRefContext =
        typeRefContext.typeName(0)!.typeArguments()!.typeList()!.typeRef(0)!;
    final valueTypeRefContext =
        typeRefContext.typeName(0)!.typeArguments()!.typeList()!.typeRef(1)!;
    return MapObjectType(
      typeReferenceFromContext(keyTypeRefContext),
      typeReferenceFromContext(valueTypeRefContext),
      typeRefContext.text,
    );
  }
  if (typeRefContext.typeName(0)!.typeArguments() != null) {
    // If there are type arguments (arguments between < >), it means we are dealing with a Generic type
    final type = typeRefContext.typeName(0)!.id()!.text;
    final childTypeRefContext =
        typeRefContext.typeName(0)!.typeArguments()!.typeList()!.typeRef(0)!;
    return GenericObjectType(
        type, typeReferenceFromContext(childTypeRefContext), typeRefContext.text);
  }

  // If we got to this point that means we are dealing with a regular (non-collection)
  // type reference.
  return ReferenceObjectType(typeRefContext.text);
}

Annotation annotationFromContext(AnnotationContext ctx) {
  final annotation = Annotation(ctx.text);
  annotation.elementValues = ctx
          .elementValuePairs()
          ?.elementValuePairs()
          .map((valuePair) => AnnotationElementValue(
              valuePair.id()!.text, valuePair.elementValue()!.text))
          .toList() ??
      [];
  return annotation;
}

dynamic getModifierFromStringDeclaration(dynamic modifierDeclarationContext,
    {isMember = false}) {
  if (modifierDeclarationContext is AnnotationContext) {
    return annotationFromContext(modifierDeclarationContext);
  }

  if (modifierDeclarationContext is ModifierContext &&
      modifierDeclarationContext.annotation() != null) {
    return annotationFromContext(modifierDeclarationContext.annotation()!);
  }

  return modifierFromKeyword(modifierDeclarationContext.text,
      isMember: isMember);
}
