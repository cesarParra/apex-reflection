// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TriggerMirror _$TriggerMirrorFromJson(Map<String, dynamic> json) =>
    TriggerMirror(
      name: json['name'] as String,
      objectName: json['object_name'] as String,
      events:
          (json['events'] as List<dynamic>).map((e) => e as String).toList(),
    )..docComment = json['docComment'] == null
        ? null
        : DocComment.fromJson(json['docComment'] as Map<String, dynamic>);

Map<String, dynamic> _$TriggerMirrorToJson(TriggerMirror instance) =>
    <String, dynamic>{
      'docComment': instance.docComment,
      'name': instance.name,
      'object_name': instance.objectName,
      'events': instance.events,
    };

ClassMirror _$ClassMirrorFromJson(Map<String, dynamic> json) => ClassMirror(
      name: json['name'] as String,
      extendedClass: json['extended_class'] as String?,
      implementedInterfaces: (json['implemented_interfaces'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
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
      ..typeName = json['type_name'] as String
      ..methods = (json['methods'] as List<dynamic>)
          .map((e) => MethodMirror.fromJson(e as Map<String, dynamic>))
          .toList()
      ..sharingModifier =
          $enumDecodeNullable(_$SharingModifierEnumMap, json['sharingModifier'])
      ..classModifier =
          $enumDecodeNullable(_$ClassModifierEnumMap, json['classModifier'])
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

Map<String, dynamic> _$ClassMirrorToJson(ClassMirror instance) =>
    <String, dynamic>{
      'docComment': instance.docComment,
      'access_modifier': _$AccessModifierEnumMap[instance.accessModifier],
      'annotations': instance.annotations,
      'name': instance.name,
      'group': instance.group,
      'groupDescription': instance.groupDescription,
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

InterfaceMirror _$InterfaceMirrorFromJson(Map<String, dynamic> json) =>
    InterfaceMirror(
      name: json['name'] as String,
      extendedInterfaces: (json['extended_interfaces'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
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
      ..typeName = json['type_name'] as String
      ..methods = (json['methods'] as List<dynamic>)
          .map((e) => MethodMirror.fromJson(e as Map<String, dynamic>))
          .toList()
      ..sharingModifier = $enumDecodeNullable(
          _$SharingModifierEnumMap, json['sharingModifier']);

Map<String, dynamic> _$InterfaceMirrorToJson(InterfaceMirror instance) =>
    <String, dynamic>{
      'docComment': instance.docComment,
      'access_modifier': _$AccessModifierEnumMap[instance.accessModifier],
      'annotations': instance.annotations,
      'name': instance.name,
      'group': instance.group,
      'groupDescription': instance.groupDescription,
      'type_name': instance.typeName,
      'methods': instance.methods,
      'sharingModifier': _$SharingModifierEnumMap[instance.sharingModifier],
      'extended_interfaces': instance.extendedInterfaces,
    };

EnumValue _$EnumValueFromJson(Map<String, dynamic> json) => EnumValue(
      name: json['name'] as String,
      value: json['value'] as String?,
    )..docComment = json['docComment'] == null
        ? null
        : DocComment.fromJson(json['docComment'] as Map<String, dynamic>);

Map<String, dynamic> _$EnumValueToJson(EnumValue instance) => <String, dynamic>{
      'docComment': instance.docComment,
      'name': instance.name,
      'value': instance.value,
    };

EnumMirror _$EnumMirrorFromJson(Map<String, dynamic> json) => EnumMirror(
      name: json['name'] as String,
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
      ..typeName = json['type_name'] as String
      ..values = (json['values'] as List<dynamic>)
          .map((e) => EnumValue.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$EnumMirrorToJson(EnumMirror instance) =>
    <String, dynamic>{
      'docComment': instance.docComment,
      'access_modifier': _$AccessModifierEnumMap[instance.accessModifier],
      'annotations': instance.annotations,
      'name': instance.name,
      'group': instance.group,
      'groupDescription': instance.groupDescription,
      'type_name': instance.typeName,
      'values': instance.values,
    };
