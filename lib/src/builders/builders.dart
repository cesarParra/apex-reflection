import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/modifiers.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/apex_listener.dart';
import 'package:apexdocs_dart/src/service/utils/parsing/parsing_utils.dart';

import '../model/type_references.dart';

// Types

ClassMirror buildClass(
    DeclarationDescriptor descriptor, ClassDeclarationContext ctx) {
  final className = ctx.id()!.text;
  final extendedClass = ctx.EXTENDS() != null ? ctx.typeRef()!.text : null;
  final implementedInterfaces = ctx.IMPLEMENTS() != null
      ? ctx.typeList()!.typeRefs().map((e) => e.text).toList()
      : <String>[];

  return ClassMirror(
      name: className,
      rawDocComment: descriptor.docComment,
      extendedClass: extendedClass,
      implementedInterfaces: implementedInterfaces)
    ..accessModifier = descriptor.accessModifier
    ..sharingModifier = descriptor.sharingModifier
    ..classModifier = descriptor.classModifier
    ..annotations = descriptor.annotations;
}

InterfaceMirror buildInterface(
    DeclarationDescriptor descriptor, InterfaceDeclarationContext ctx) {
  final interfaceName = ctx.id()!.text;
  final extendsInterfaces = ctx.EXTENDS() != null
      ? ctx.typeList()!.typeRefs().map((e) => e.text).toList()
      : <String>[];
  return InterfaceMirror(
      name: interfaceName,
      rawDocComment: descriptor.docComment,
      extendedInterfaces: extendsInterfaces)
    ..accessModifier = descriptor.accessModifier
    ..sharingModifier = descriptor.sharingModifier
    ..annotations = descriptor.annotations;
}

EnumMirror buildEnum(
    DeclarationDescriptor descriptor, EnumDeclarationContext ctx) {
  final enumName = ctx.id()!.text;
  return EnumMirror(name: enumName, rawDocComment: descriptor.docComment)
    ..accessModifier = descriptor.accessModifier
    ..annotations = descriptor.annotations;
}

// Members

PropertyMirror buildProperty(
    DeclarationDescriptor descriptor, PropertyDeclarationContext ctx) {
  final propertyName = ctx.id()!.text;

  return PropertyMirror(
      name: propertyName,
      rawDocComment: descriptor.docComment,
      typeReference: ObjectTypeReference(ctx.typeRef()!))
    ..accessModifier = descriptor.accessModifier
    ..annotations = descriptor.annotations
    ..memberModifiers = descriptor.memberModifiers;
}

List<FieldMirror> buildFields(
    DeclarationDescriptor descriptor, FieldDeclarationContext ctx) {
  final fieldNames =
      ctx.variableDeclarators()!.variableDeclarators().map((e) => e.id()!.text);

  return fieldNames
      .map((e) => FieldMirror(
          name: e,
          rawDocComment: descriptor.docComment,
          typeReference: ObjectTypeReference(ctx.typeRef()!))
        ..accessModifier = descriptor.accessModifier
        ..annotations = descriptor.annotations
        ..memberModifiers = descriptor.memberModifiers)
      .toList();
}

MethodMirror buildMethod(
    DeclarationDescriptor descriptor, MethodDeclarationContext ctx) {
  final methodName = ctx.id()!.text;

  List<ParameterMirror>? parameters = parseParameters(ctx);

  return MethodMirror(
      name: methodName,
      rawDocComment: descriptor.docComment,
      typeReference: ObjectTypeReference(ctx.typeRef()))
    ..parameters = parameters ?? []
    ..accessModifier = descriptor.accessModifier
    ..annotations = descriptor.annotations
    ..memberModifiers = descriptor.memberModifiers;
}

MethodMirror buildInterfaceMethod(InterfaceMethodDeclarationContext ctx,
    AccessModifier? parentAccessModifier, List<Annotation> parentAnnotations) {
  final docComment = ctx.DOC_COMMENT()?.text;
  final methodName = ctx.id()!.text;

  List<ParameterMirror>? parameters = parseParameters(ctx);

  return MethodMirror(
      name: methodName,
      rawDocComment: docComment,
      typeReference: ObjectTypeReference(ctx.typeRef()))
    ..parameters = parameters ?? []
    ..accessModifier = parentAccessModifier
    ..annotations = parentAnnotations;
}

ConstructorMirror buildConstructor(
    DeclarationDescriptor descriptor, ConstructorDeclarationContext ctx) {
  List<ParameterMirror>? parameters = parseParameters(ctx);
  return ConstructorMirror(rawDocComment: descriptor.docComment)
    ..parameters = parameters ?? []
    ..accessModifier = descriptor.accessModifier
    ..annotations = descriptor.annotations;
}
