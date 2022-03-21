// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassMirror _$ClassMirrorFromJson(Map<String, dynamic> json) {
  return ClassMirror(
    name: json['name'] as String,
    extendedClass: json['extended_class'] as String?,
    implementedInterfaces: (json['implemented_interfaces'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )
    ..docComment = json['docComment'] == null
        ? null
        : DocComment.fromJson(json['docComment'] as Map<String, dynamic>)
    ..accessModifier =
        _$enumDecodeNullable(_$AccessModifierEnumMap, json['access_modifier'])
    ..annotations = (json['annotations'] as List<dynamic>)
        .map((e) => Annotation.fromJson(e as Map<String, dynamic>))
        .toList()
    ..group = json['group'] as String?
    ..typeName = json['type_name'] as String
    ..methods = (json['methods'] as List<dynamic>)
        .map((e) => MethodMirror.fromJson(e as Map<String, dynamic>))
        .toList()
    ..sharingModifier =
        _$enumDecodeNullable(_$SharingModifierEnumMap, json['sharingModifier'])
    ..classModifier =
        _$enumDecodeNullable(_$ClassModifierEnumMap, json['classModifier'])
    ..properties = (json['properties'] as List<dynamic>)
        .map((e) => PropertyMirror.fromJson(e as Map<String, dynamic>))
        .toList()
    ..fields = (json['fields'] as List<dynamic>)
        .map((e) => FieldMirror.fromJson(e as Map<String, dynamic>))
        .toList()
    ..constructors = (json['constructors'] as List<dynamic>)
        .map((e) => ConstructorMirror.fromJson(e as Map<String, dynamic>))
        .toList()
    ..enums = (json['enums'] as List<dynamic>)
        .map((e) => EnumMirror.fromJson(e as Map<String, dynamic>))
        .toList()
    ..interfaces = (json['interfaces'] as List<dynamic>)
        .map((e) => InterfaceMirror.fromJson(e as Map<String, dynamic>))
        .toList()
    ..classes = (json['classes'] as List<dynamic>)
        .map((e) => ClassMirror.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$ClassMirrorToJson(ClassMirror instance) =>
    <String, dynamic>{
      'docComment': instance.docComment,
      'access_modifier': _$AccessModifierEnumMap[instance.accessModifier],
      'annotations': instance.annotations,
      'name': instance.name,
      'group': instance.group,
      'type_name': instance.typeName,
      'methods': instance.methods,
      'sharingModifier': _$SharingModifierEnumMap[instance.sharingModifier],
      'classModifier': _$ClassModifierEnumMap[instance.classModifier],
      'extended_class': instance.extendedClass,
      'implemented_interfaces': instance.implementedInterfaces,
      'properties': instance.properties,
      'fields': instance.fields,
      'constructors': instance.constructors,
      'enums': instance.enums,
      'interfaces': instance.interfaces,
      'classes': instance.classes,
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

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$AccessModifierEnumMap = {
  AccessModifier.private: 'private',
  AccessModifier.protected: 'protected',
  AccessModifier.public: 'public',
  AccessModifier.global: 'global',
};

const _$SharingModifierEnumMap = {
  SharingModifier.withSharing: 'withSharing',
  SharingModifier.withoutSharing: 'withoutSharing',
  SharingModifier.inheritedSharing: 'inheritedSharing',
};

const _$ClassModifierEnumMap = {
  ClassModifier.virtual: 'virtual',
  ClassModifier.abstract: 'abstract',
};

InterfaceMirror _$InterfaceMirrorFromJson(Map<String, dynamic> json) {
  return InterfaceMirror(
    name: json['name'] as String,
    extendedInterfaces: (json['extended_interfaces'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )
    ..docComment = json['docComment'] == null
        ? null
        : DocComment.fromJson(json['docComment'] as Map<String, dynamic>)
    ..accessModifier =
        _$enumDecodeNullable(_$AccessModifierEnumMap, json['access_modifier'])
    ..annotations = (json['annotations'] as List<dynamic>)
        .map((e) => Annotation.fromJson(e as Map<String, dynamic>))
        .toList()
    ..group = json['group'] as String?
    ..typeName = json['type_name'] as String
    ..methods = (json['methods'] as List<dynamic>)
        .map((e) => MethodMirror.fromJson(e as Map<String, dynamic>))
        .toList()
    ..sharingModifier =
        _$enumDecodeNullable(_$SharingModifierEnumMap, json['sharingModifier']);
}

Map<String, dynamic> _$InterfaceMirrorToJson(InterfaceMirror instance) =>
    <String, dynamic>{
      'docComment': instance.docComment,
      'access_modifier': _$AccessModifierEnumMap[instance.accessModifier],
      'annotations': instance.annotations,
      'name': instance.name,
      'group': instance.group,
      'type_name': instance.typeName,
      'methods': instance.methods,
      'sharingModifier': _$SharingModifierEnumMap[instance.sharingModifier],
      'extended_interfaces': instance.extendedInterfaces,
    };

EnumMirror _$EnumMirrorFromJson(Map<String, dynamic> json) {
  return EnumMirror(
    name: json['name'] as String,
  )
    ..docComment = json['docComment'] == null
        ? null
        : DocComment.fromJson(json['docComment'] as Map<String, dynamic>)
    ..accessModifier =
        _$enumDecodeNullable(_$AccessModifierEnumMap, json['access_modifier'])
    ..annotations = (json['annotations'] as List<dynamic>)
        .map((e) => Annotation.fromJson(e as Map<String, dynamic>))
        .toList()
    ..group = json['group'] as String?
    ..typeName = json['type_name'] as String;
}

Map<String, dynamic> _$EnumMirrorToJson(EnumMirror instance) =>
    <String, dynamic>{
      'docComment': instance.docComment,
      'access_modifier': _$AccessModifierEnumMap[instance.accessModifier],
      'annotations': instance.annotations,
      'name': instance.name,
      'group': instance.group,
      'type_name': instance.typeName,
    };
