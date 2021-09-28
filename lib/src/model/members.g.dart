// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'members.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Property _$PropertyFromJson(Map<String, dynamic> json) {
  return Property(
    name: json['name'] as String,
    docComment: json['docComment'] as String?,
    type: json['type'] as String,
    accessModifiers: (json['access_modifiers'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )..rawDocComment = json['rawDocComment'] as String?;
}

Map<String, dynamic> _$PropertyToJson(Property instance) => <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'docComment': instance.docComment,
      'name': instance.name,
      'type': instance.type,
    };

Field _$FieldFromJson(Map<String, dynamic> json) {
  return Field(
    name: json['name'] as String,
    docComment: json['docComment'] as String?,
    type: json['type'] as String,
    accessModifiers: (json['access_modifiers'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )..rawDocComment = json['rawDocComment'] as String?;
}

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'docComment': instance.docComment,
      'name': instance.name,
      'type': instance.type,
    };

Method _$MethodFromJson(Map<String, dynamic> json) {
  return Method(
    name: json['name'] as String,
    docComment: json['docComment'] as String?,
    type: json['type'] as String,
    accessModifiers: (json['access_modifiers'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )
    ..rawDocComment = json['rawDocComment'] as String?
    ..parameters = (json['parameters'] as List<dynamic>)
        .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$MethodToJson(Method instance) => <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'docComment': instance.docComment,
      'name': instance.name,
      'type': instance.type,
      'parameters': instance.parameters,
    };

Parameter _$ParameterFromJson(Map<String, dynamic> json) {
  return Parameter(
    name: json['name'] as String,
    type: json['type'] as String,
    accessModifiers: (json['access_modifiers'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )..rawDocComment = json['rawDocComment'] as String?;
}

Map<String, dynamic> _$ParameterToJson(Parameter instance) => <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'name': instance.name,
      'type': instance.type,
    };

Constructor _$ConstructorFromJson(Map<String, dynamic> json) {
  return Constructor(
    accessModifiers: json['access_modifiers'],
    docComment: json['docComment'] as String?,
  )
    ..rawDocComment = json['rawDocComment'] as String?
    ..parameters = (json['parameters'] as List<dynamic>)
        .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$ConstructorToJson(Constructor instance) =>
    <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'docComment': instance.docComment,
      'parameters': instance.parameters,
    };
