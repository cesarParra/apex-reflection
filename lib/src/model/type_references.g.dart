// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_references.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferenceObjectType _$ReferenceObjectTypeFromJson(Map<String, dynamic> json) =>
    ReferenceObjectType(
      json['type'] as String,
    )..rawDeclaration = json['rawDeclaration'] as String;

Map<String, dynamic> _$ReferenceObjectTypeToJson(
        ReferenceObjectType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'rawDeclaration': instance.rawDeclaration,
    };

ListObjectType _$ListObjectTypeFromJson(Map<String, dynamic> json) =>
    ListObjectType(
      objectTypeFromJson(json['ofType'] as Map<String, dynamic>?),
      json['rawDeclaration'] as String,
    )..type = json['type'] as String;

Map<String, dynamic> _$ListObjectTypeToJson(ListObjectType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'rawDeclaration': instance.rawDeclaration,
      'ofType': objectTypeToJson(instance.ofType),
    };

MapObjectType _$MapObjectTypeFromJson(Map<String, dynamic> json) =>
    MapObjectType(
      objectTypeFromJson(json['keyType'] as Map<String, dynamic>?),
      objectTypeFromJson(json['valueType'] as Map<String, dynamic>?),
      json['rawDeclaration'] as String,
    )..type = json['type'] as String;

Map<String, dynamic> _$MapObjectTypeToJson(MapObjectType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'rawDeclaration': instance.rawDeclaration,
      'keyType': objectTypeToJson(instance.keyType),
      'valueType': objectTypeToJson(instance.valueType),
    };

SetObjectType _$SetObjectTypeFromJson(Map<String, dynamic> json) =>
    SetObjectType(
      objectTypeFromJson(json['ofType'] as Map<String, dynamic>?),
      json['rawDeclaration'] as String,
    )..type = json['type'] as String;

Map<String, dynamic> _$SetObjectTypeToJson(SetObjectType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'rawDeclaration': instance.rawDeclaration,
      'ofType': objectTypeToJson(instance.ofType),
    };

GenericObjectType _$GenericObjectTypeFromJson(Map<String, dynamic> json) =>
    GenericObjectType(
      json['type'] as String,
      objectTypeFromJson(json['ofType'] as Map<String, dynamic>?),
      json['rawDeclaration'] as String,
    );

Map<String, dynamic> _$GenericObjectTypeToJson(GenericObjectType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'rawDeclaration': instance.rawDeclaration,
      'ofType': objectTypeToJson(instance.ofType),
    };
