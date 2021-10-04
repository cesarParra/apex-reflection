// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Annotation _$AnnotationFromJson(Map<String, dynamic> json) {
  return Annotation(
    json['rawDeclaration'] as String,
  )
    ..name = json['name'] as String
    ..type = _$enumDecode(_$AnnotationTypeEnumMap, json['type']);
}

Map<String, dynamic> _$AnnotationToJson(Annotation instance) =>
    <String, dynamic>{
      'rawDeclaration': instance.rawDeclaration,
      'name': instance.name,
      'type': _$AnnotationTypeEnumMap[instance.type],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$AnnotationTypeEnumMap = {
  AnnotationType.auraEnabled: 'auraEnabled',
  AnnotationType.deprecated: 'deprecated',
  AnnotationType.future: 'future',
  AnnotationType.invocableMethod: 'invocableMethod',
  AnnotationType.invocableVariable: 'invocableVariable',
  AnnotationType.isTest: 'isTest',
  AnnotationType.jsonAccess: 'jsonAccess',
  AnnotationType.namespaceAccessible: 'namespaceAccessible',
  AnnotationType.readOnly: 'readOnly',
  AnnotationType.remoteAction: 'remoteAction',
  AnnotationType.suppressWarnings: 'suppressWarnings',
  AnnotationType.testSetup: 'testSetup',
  AnnotationType.testVisible: 'testVisible',
  AnnotationType.restResource: 'restResource',
  AnnotationType.httpDelete: 'httpDelete',
  AnnotationType.httpGet: 'httpGet',
  AnnotationType.httpPatch: 'httpPatch',
  AnnotationType.httpPost: 'httpPost',
  AnnotationType.httpPut: 'httpPut',
  AnnotationType.other: 'other',
};
