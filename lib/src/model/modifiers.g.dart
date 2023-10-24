// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Annotation _$AnnotationFromJson(Map<String, dynamic> json) => Annotation(
      json['rawDeclaration'] as String,
    )
      ..name = json['name'] as String
      ..type = $enumDecode(_$AnnotationTypeEnumMap, json['type'])
      ..elementValues = (json['elementValues'] as List<dynamic>?)
          ?.map(
              (e) => AnnotationElementValue.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AnnotationToJson(Annotation instance) =>
    <String, dynamic>{
      'rawDeclaration': instance.rawDeclaration,
      'name': instance.name,
      'type': _$AnnotationTypeEnumMap[instance.type]!,
      'elementValues': instance.elementValues,
    };

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

AnnotationElementValue _$AnnotationElementValueFromJson(
        Map<String, dynamic> json) =>
    AnnotationElementValue(
      json['key'] as String,
      json['value'] as String,
    );

Map<String, dynamic> _$AnnotationElementValueToJson(
        AnnotationElementValue instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
