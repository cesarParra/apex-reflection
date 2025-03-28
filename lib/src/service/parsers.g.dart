// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parsers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReflectionResponse _$ReflectionResponseFromJson(Map<String, dynamic> json) =>
    ReflectionResponse()
      ..typeMirror = ReflectionResponse.typeFromJson(json['typeMirror'])
      ..error = json['error'] == null
          ? null
          : ParsingError.fromJson(json['error'] as Map<String, dynamic>);

Map<String, dynamic> _$ReflectionResponseToJson(ReflectionResponse instance) =>
    <String, dynamic>{
      'typeMirror': ReflectionResponse.typeToJson(instance.typeMirror),
      'error': instance.error,
    };

TriggerReflectionResponse _$TriggerReflectionResponseFromJson(
        Map<String, dynamic> json) =>
    TriggerReflectionResponse()
      ..triggerMirror =
          TriggerReflectionResponse.typeFromJson(json['triggerMirror'])
      ..error = json['error'] == null
          ? null
          : ParsingError.fromJson(json['error'] as Map<String, dynamic>);

Map<String, dynamic> _$TriggerReflectionResponseToJson(
        TriggerReflectionResponse instance) =>
    <String, dynamic>{
      'triggerMirror':
          TriggerReflectionResponse.typeToJson(instance.triggerMirror),
      'error': instance.error,
    };

ParsingError _$ParsingErrorFromJson(Map<String, dynamic> json) => ParsingError(
      json['message'] as String,
    );

Map<String, dynamic> _$ParsingErrorToJson(ParsingError instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
