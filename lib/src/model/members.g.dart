// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'members.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyMirror _$PropertyMirrorFromJson(Map<String, dynamic> json) =>
    PropertyMirror(
      name: json['name'] as String,
      typeReference:
          objectTypeFromJson(json['typeReference'] as Map<String, dynamic>?),
    )
      ..docComment = json['docComment'] == null
          ? null
          : DocComment.fromJson(json['docComment'] as Map<String, dynamic>)
      ..accessModifier =
          $enumDecodeNullable(_$AccessModifierEnumMap, json['access_modifier'])
      ..annotations = (json['annotations'] as List<dynamic>)
          .map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList()
      ..group = json['group'] as String?
      ..groupDescription = json['groupDescription'] as String?
      ..memberModifiers = (json['memberModifiers'] as List<dynamic>)
          .map((e) => $enumDecode(_$MemberModifierEnumMap, e))
          .toList();

Map<String, dynamic> _$PropertyMirrorToJson(PropertyMirror instance) =>
    <String, dynamic>{
      'docComment': instance.docComment,
      'access_modifier': _$AccessModifierEnumMap[instance.accessModifier],
      'annotations': instance.annotations,
      'name': instance.name,
      'group': instance.group,
      'groupDescription': instance.groupDescription,
      'memberModifiers': instance.memberModifiers
          .map((e) => _$MemberModifierEnumMap[e]!)
          .toList(),
      'typeReference': objectTypeToJson(instance.typeReference),
    };

const _$AccessModifierEnumMap = {
  AccessModifier.private: 'private',
  AccessModifier.protected: 'protected',
  AccessModifier.public: 'public',
  AccessModifier.global: 'global',
};

const _$MemberModifierEnumMap = {
  MemberModifier.static: 'static',
  MemberModifier.webService: 'webService',
  MemberModifier.isFinal: 'final',
  MemberModifier.override: 'override',
  MemberModifier.testMethod: 'testMethod',
  MemberModifier.transient: 'transient',
  MemberModifier.virtual: 'virtual',
  MemberModifier.abstract: 'abstract',
};

FieldMirror _$FieldMirrorFromJson(Map<String, dynamic> json) => FieldMirror(
      name: json['name'] as String,
      typeReference:
          objectTypeFromJson(json['typeReference'] as Map<String, dynamic>?),
    )
      ..docComment = json['docComment'] == null
          ? null
          : DocComment.fromJson(json['docComment'] as Map<String, dynamic>)
      ..accessModifier =
          $enumDecodeNullable(_$AccessModifierEnumMap, json['access_modifier'])
      ..annotations = (json['annotations'] as List<dynamic>)
          .map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList()
      ..group = json['group'] as String?
      ..groupDescription = json['groupDescription'] as String?
      ..memberModifiers = (json['memberModifiers'] as List<dynamic>)
          .map((e) => $enumDecode(_$MemberModifierEnumMap, e))
          .toList();

Map<String, dynamic> _$FieldMirrorToJson(FieldMirror instance) =>
    <String, dynamic>{
      'docComment': instance.docComment,
      'access_modifier': _$AccessModifierEnumMap[instance.accessModifier],
      'annotations': instance.annotations,
      'name': instance.name,
      'group': instance.group,
      'groupDescription': instance.groupDescription,
      'memberModifiers': instance.memberModifiers
          .map((e) => _$MemberModifierEnumMap[e]!)
          .toList(),
      'typeReference': objectTypeToJson(instance.typeReference),
    };

MethodMirror _$MethodMirrorFromJson(Map<String, dynamic> json) => MethodMirror(
      name: json['name'] as String,
      typeReference:
          objectTypeFromJson(json['typeReference'] as Map<String, dynamic>?),
    )
      ..docComment = json['docComment'] == null
          ? null
          : DocComment.fromJson(json['docComment'] as Map<String, dynamic>)
      ..accessModifier =
          $enumDecodeNullable(_$AccessModifierEnumMap, json['access_modifier'])
      ..annotations = (json['annotations'] as List<dynamic>)
          .map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList()
      ..group = json['group'] as String?
      ..groupDescription = json['groupDescription'] as String?
      ..memberModifiers = (json['memberModifiers'] as List<dynamic>)
          .map((e) => $enumDecode(_$MemberModifierEnumMap, e))
          .toList()
      ..parameters = (json['parameters'] as List<dynamic>)
          .map((e) => ParameterMirror.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MethodMirrorToJson(MethodMirror instance) =>
    <String, dynamic>{
      'docComment': instance.docComment,
      'access_modifier': _$AccessModifierEnumMap[instance.accessModifier],
      'annotations': instance.annotations,
      'name': instance.name,
      'group': instance.group,
      'groupDescription': instance.groupDescription,
      'memberModifiers': instance.memberModifiers
          .map((e) => _$MemberModifierEnumMap[e]!)
          .toList(),
      'typeReference': objectTypeToJson(instance.typeReference),
      'parameters': instance.parameters,
    };

ParameterMirror _$ParameterMirrorFromJson(Map<String, dynamic> json) =>
    ParameterMirror(
      name: json['name'] as String,
      typeReference:
          objectTypeFromJson(json['typeReference'] as Map<String, dynamic>?),
    )..memberModifiers = (json['memberModifiers'] as List<dynamic>)
        .map((e) => $enumDecode(_$MemberModifierEnumMap, e))
        .toList();

Map<String, dynamic> _$ParameterMirrorToJson(ParameterMirror instance) =>
    <String, dynamic>{
      'memberModifiers': instance.memberModifiers
          .map((e) => _$MemberModifierEnumMap[e]!)
          .toList(),
      'name': instance.name,
      'typeReference': objectTypeToJson(instance.typeReference),
    };

ConstructorMirror _$ConstructorMirrorFromJson(Map<String, dynamic> json) =>
    ConstructorMirror()
      ..docComment = json['docComment'] == null
          ? null
          : DocComment.fromJson(json['docComment'] as Map<String, dynamic>)
      ..accessModifier =
          $enumDecodeNullable(_$AccessModifierEnumMap, json['access_modifier'])
      ..annotations = (json['annotations'] as List<dynamic>)
          .map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList()
      ..group = json['group'] as String?
      ..groupDescription = json['groupDescription'] as String?
      ..parameters = (json['parameters'] as List<dynamic>)
          .map((e) => ParameterMirror.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ConstructorMirrorToJson(ConstructorMirror instance) =>
    <String, dynamic>{
      'docComment': instance.docComment,
      'access_modifier': _$AccessModifierEnumMap[instance.accessModifier],
      'annotations': instance.annotations,
      'group': instance.group,
      'groupDescription': instance.groupDescription,
      'parameters': instance.parameters,
    };
