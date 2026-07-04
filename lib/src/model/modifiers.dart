import 'package:json_annotation/json_annotation.dart';

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

@JsonSerializable()
class Annotation {
  String rawDeclaration;
  late String name;
  late AnnotationType type;
  List<AnnotationElementValue>? elementValues = [];

  /// [name] is the annotation's identifier when the caller already parsed it
  /// (the grammar does); otherwise it is extracted from [rawDeclaration].
  Annotation(this.rawDeclaration, {String? name}) {
    this.name = (name ?? _nameFromDeclaration(rawDeclaration)).toLowerCase();
    type = _annotationTypesByName[this.name] ?? AnnotationType.other;
  }

  factory Annotation.fromJson(Map<String, dynamic> json) =>
      _$AnnotationFromJson(json);

  Map<String, dynamic> toJson() => _$AnnotationToJson(this);

  static final RegExp _namePattern = RegExp(r'[A-Za-z_$][A-Za-z0-9_$]*');

  /// Extracts the annotation's name: the identifier after `@`, regardless of
  /// any whitespace or `(...)` parameters that follow it in the raw text.
  static String _nameFromDeclaration(String declaration) =>
      _namePattern.firstMatch(declaration)?.group(0) ?? '';

  static final Map<String, AnnotationType> _annotationTypesByName = {
    for (final type in AnnotationType.values) type.name.toLowerCase(): type,
  };
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
