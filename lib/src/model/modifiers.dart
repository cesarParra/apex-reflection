import 'package:apex_reflection/src/extension_methods/list_extensions.dart';
import 'package:apex_reflection/src/service/utils/parsing/parsing_utils.dart';
import 'package:json_annotation/json_annotation.dart';

import '../antlr/grammars/apex/ApexParser.dart';

part 'modifiers.g.dart';

enum AccessModifier { private, protected, public, global }

enum SharingModifier { withSharing, withoutSharing, inheritedSharing }

enum ClassModifier { virtual, abstract }

enum MemberModifier {
  static('static'),
  webService('webservice'),
  @JsonValue('final')
  isFinal('final'),
  override('override'),
  testMethod('testmethod'),
  transient('transient'),
  virtual('virtual'),
  abstract('abstract');

  final String value;

  const MemberModifier(this.value);
}

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

dynamic getModifierFromStringDeclaration(dynamic modifierDeclarationContext,
    {isMember = false}) {
  if (modifierDeclarationContext is AnnotationContext) {
    return Annotation.fromAnnotationContext(modifierDeclarationContext);
  }

  if (modifierDeclarationContext is ModifierContext &&
      modifierDeclarationContext.annotation() != null) {
    return Annotation.fromAnnotationContext(
        modifierDeclarationContext.annotation()!);
  }

  return modifierFromKeyword(modifierDeclarationContext.text,
      isMember: isMember);
}

/// Classifies a modifier keyword into its modifier enum value, or null when
/// the keyword is not a recognized modifier. Two-word sharing modifiers are
/// expected space-stripped (`withsharing`).
///
/// `virtual` and `abstract` exist in both [ClassModifier] and
/// [MemberModifier]; [isMember] decides which one wins: a `virtual` method
/// is a member modifier, a `virtual` class is a class modifier.
dynamic modifierFromKeyword(String keyword, {bool isMember = false}) {
  final normalizedKeyword = keyword.toLowerCase();

  dynamic enumValue = AccessModifier.values.firstWhereOrNull(
      (element) => describeEnum(element).toLowerCase() == normalizedKeyword);

  if (enumValue != null) {
    return enumValue;
  }

  if (!isMember) {
    enumValue = ClassModifier.values.firstWhereOrNull(
        (element) => describeEnum(element).toLowerCase() == normalizedKeyword);

    if (enumValue != null) {
      return enumValue;
    }
  }

  enumValue = SharingModifier.values.firstWhereOrNull(
      (element) => describeEnum(element).toLowerCase() == normalizedKeyword);

  if (enumValue != null) {
    return enumValue;
  }

  return MemberModifier.values
      .firstWhereOrNull((element) => element.value == normalizedKeyword);
}

@JsonSerializable()
class Annotation {
  String rawDeclaration;
  late String name;
  late AnnotationType type;
  List<AnnotationElementValue>? elementValues = [];

  Annotation(this.rawDeclaration) {
    name = _nameFromDeclaration(rawDeclaration);
    type = _parseAnnotationTypeFromString(name);
  }

  factory Annotation.fromAnnotationContext(AnnotationContext ctx) {
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

  factory Annotation.fromJson(Map<String, dynamic> json) =>
      _$AnnotationFromJson(json);

  Map<String, dynamic> toJson() => _$AnnotationToJson(this);

  /// Extracts the annotation's name: the identifier after `@`, regardless of
  /// any whitespace or `(...)` parameters that follow it in the raw text.
  static String _nameFromDeclaration(String declaration) {
    return RegExp(r'[A-Za-z_$][A-Za-z0-9_$]*')
            .firstMatch(declaration)
            ?.group(0)
            ?.toLowerCase() ??
        '';
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
