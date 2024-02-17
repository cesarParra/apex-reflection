import 'package:apexdocs_dart/src/extension_methods/list_extensions.dart';
import 'package:apexdocs_dart/src/service/utils/parsing/parsing_utils.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';

part 'modifiers.g.dart';

enum AccessModifier { private, protected, public, global }

enum SharingModifier { withSharing, withoutSharing, inheritedSharing }

enum ClassModifier { virtual, abstract }

enum MemberModifier { static, webService, isFinal, override, testMethod, transient, virtual }

enum AnnotationType {
  auraEnabled,
  deprecated,
  future,
  invocableMethod,
  invocableVariable,
  isTest,
  jsonAccess,
  namespaceAccessible,
  readOnly,
  remoteAction,
  suppressWarnings,
  testSetup,
  testVisible,
  restResource,
  httpDelete,
  httpGet,
  httpPatch,
  httpPost,
  httpPut,
  other
}

dynamic getModifierFromStringDeclaration(dynamic modifierDeclarationContext, {isMember = false}) {
  final modifierDeclaration = modifierDeclarationContext.text;
  if (modifierDeclarationContext is AnnotationContext) {
    return Annotation.fromAnnotationContext(modifierDeclarationContext);
  }

  if (modifierDeclarationContext is ModifierContext && modifierDeclarationContext.annotation() != null) {
    return Annotation.fromAnnotationContext(modifierDeclarationContext.annotation()!);
  }

  dynamic enumValue = AccessModifier.values.firstWhereOrNull((element) =>
  describeEnum(element).toLowerCase() == modifierDeclaration.toLowerCase());

  if (enumValue != null) {
    return enumValue;
  }

  if (!isMember) {
    enumValue = ClassModifier.values.firstWhereOrNull((element) =>
    describeEnum(element).toLowerCase() == modifierDeclaration.toLowerCase());

    if (enumValue != null) {
      return enumValue;
    }
  }

  enumValue = SharingModifier.values.firstWhereOrNull((element) =>
      describeEnum(element).toLowerCase() == modifierDeclaration.toLowerCase());

  if (enumValue != null) {
    return enumValue;
  }

  enumValue = MemberModifier.values.firstWhereOrNull((element) =>
      describeEnum(element).toLowerCase() == modifierDeclaration.toLowerCase());

  return enumValue;
}

@JsonSerializable()
class Annotation {
  String rawDeclaration;
  late String name;
  late AnnotationType type;
  List<AnnotationElementValue>? elementValues = [];

  Annotation(this.rawDeclaration) {
    name = _sanitizeDeclaration(rawDeclaration).toLowerCase();
    type = _parseAnnotationTypeFromString(name);
  }

  factory Annotation.fromAnnotationContext(AnnotationContext ctx) {
    final annotation = Annotation(ctx.text);
    annotation.elementValues = ctx.elementValuePairs()?.elementValuePairs().map((valuePair) =>
        AnnotationElementValue(
            valuePair.id()!.text, valuePair.elementValue()!.text)).toList() ?? [];
    return annotation;
  }

  factory Annotation.fromJson(Map<String, dynamic> json) =>
      _$AnnotationFromJson(json);

  Map<String, dynamic> toJson() => _$AnnotationToJson(this);

  String _sanitizeDeclaration(String declaration) {
    var sanitizedString = declaration.replaceFirst('@', '').toLowerCase();
    if (sanitizedString.contains('(')) {
      sanitizedString = sanitizedString.replaceRange(
          declaration.indexOf('(') - 1, declaration.indexOf(')'), '');
    }
    return sanitizedString;
  }

  AnnotationType _parseAnnotationTypeFromString(String name) {
    return AnnotationType.values.firstWhere(
        (element) => describeEnum(element).toLowerCase() == name,
        orElse: () => AnnotationType.other);
  }
}

@JsonSerializable()
class AnnotationElementValue {
  String key;
  String value;

  AnnotationElementValue(this.key, this.value);

  factory AnnotationElementValue.fromJson(Map<String, dynamic> json) =>
      _$AnnotationElementValueFromJson(json);

  Map<String, dynamic> toJson() => _$AnnotationElementValueToJson(this);
}

mixin AccessModifierAwareness {
  @JsonKey(name: 'access_modifier')
  AccessModifier? accessModifier;

  get isPrivate =>
      accessModifier == AccessModifier.private || accessModifier == null;

  get isPublic => accessModifier == AccessModifier.public;

  get isGlobal => accessModifier == AccessModifier.global;

  get isProtected => accessModifier == AccessModifier.protected;
}

mixin SharingModifierAwareness {
  SharingModifier? sharingModifier;
}

mixin AnnotationsAwareness {
  List<Annotation> annotations = [];

  get isNamespaceAccessible => annotations
      .any((element) => element.type == AnnotationType.namespaceAccessible);

  get isTest =>
      annotations.any((element) => element.type == AnnotationType.isTest);

  get isDeprecated =>
      annotations.any((element) => element.type == AnnotationType.deprecated);
}

mixin ClassModifiersAwareness {
  ClassModifier? classModifier;

  get isVirtual => classModifier == ClassModifier.virtual;

  get isAbstract => classModifier == ClassModifier.abstract;
}

mixin MemberModifiersAwareness {
  List<MemberModifier> memberModifiers = [];
}
