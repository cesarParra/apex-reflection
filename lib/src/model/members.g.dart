// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'members.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyMirror _$PropertyFromJson(Map<String, dynamic> json) {
  return PropertyMirror(
    name: json['name'] as String,
    docComment: json['docComment'] as String?,
    type: json['type'] as String,
    accessModifiers: (json['access_modifiers'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )..rawDocComment = json['rawDocComment'] as String?;
}

Map<String, dynamic> _$PropertyToJson(PropertyMirror instance) => <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'docComment': instance.docComment,
      'name': instance.name,
      'type': instance.type,
    };

FieldMirror _$FieldFromJson(Map<String, dynamic> json) {
  return FieldMirror(
    name: json['name'] as String,
    docComment: json['docComment'] as String?,
    type: json['type'] as String,
    accessModifiers: (json['access_modifiers'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )..rawDocComment = json['rawDocComment'] as String?;
}

Map<String, dynamic> _$FieldToJson(FieldMirror instance) => <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'docComment': instance.docComment,
      'name': instance.name,
      'type': instance.type,
    };

MethodMirror _$MethodFromJson(Map<String, dynamic> json) {
  return MethodMirror(
    name: json['name'] as String,
    docComment: json['docComment'] as String?,
    type: json['type'] as String,
    accessModifiers: (json['access_modifiers'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )
    ..rawDocComment = json['rawDocComment'] as String?
    ..parameters = (json['parameters'] as List<dynamic>)
        .map((e) => ParameterMirror.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$MethodToJson(MethodMirror instance) => <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'docComment': instance.docComment,
      'name': instance.name,
      'type': instance.type,
      'parameters': instance.parameters,
    };

ParameterMirror _$ParameterFromJson(Map<String, dynamic> json) {
  return ParameterMirror(
    name: json['name'] as String,
    type: json['type'] as String,
    accessModifiers: (json['access_modifiers'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )..rawDocComment = json['rawDocComment'] as String?;
}

Map<String, dynamic> _$ParameterToJson(ParameterMirror instance) => <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'name': instance.name,
      'type': instance.type,
    };

ConstructorMirror _$ConstructorFromJson(Map<String, dynamic> json) {
  return ConstructorMirror(
    accessModifiers: json['access_modifiers'],
    docComment: json['docComment'] as String?,
  )
    ..rawDocComment = json['rawDocComment'] as String?
    ..parameters = (json['parameters'] as List<dynamic>)
        .map((e) => ParameterMirror.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$ConstructorToJson(ConstructorMirror instance) =>
    <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'docComment': instance.docComment,
      'parameters': instance.parameters,
    };
