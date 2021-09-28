// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassModel _$ClassModelFromJson(Map<String, dynamic> json) {
  return ClassModel(
    name: json['name'] as String,
    docComment: json['docComment'] as String?,
    accessModifiers: (json['access_modifiers'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    extendedClass: json['extended_class'] as String?,
    implementedInterfaces: (json['implemented_interfaces'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )
    ..rawDocComment = json['rawDocComment'] as String?
    ..typeName = json['type_name'] as String
    ..methods = (json['methods'] as List<dynamic>)
        .map((e) => Method.fromJson(e as Map<String, dynamic>))
        .toList()
    ..properties = (json['properties'] as List<dynamic>)
        .map((e) => Property.fromJson(e as Map<String, dynamic>))
        .toList()
    ..fields = (json['fields'] as List<dynamic>)
        .map((e) => Field.fromJson(e as Map<String, dynamic>))
        .toList()
    ..constructors = (json['constructors'] as List<dynamic>)
        .map((e) => Constructor.fromJson(e as Map<String, dynamic>))
        .toList()
    ..enums = (json['enums'] as List<dynamic>)
        .map((e) => EnumModel.fromJson(e as Map<String, dynamic>))
        .toList()
    ..interfaces = (json['interfaces'] as List<dynamic>)
        .map((e) => InterfaceModel.fromJson(e as Map<String, dynamic>))
        .toList()
    ..classes = (json['classes'] as List<dynamic>)
        .map((e) => ClassModel.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$ClassModelToJson(ClassModel instance) =>
    <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'docComment': instance.docComment,
      'name': instance.name,
      'type_name': instance.typeName,
      'methods': instance.methods,
      'extended_class': instance.extendedClass,
      'implemented_interfaces': instance.implementedInterfaces,
      'properties': instance.properties,
      'fields': instance.fields,
      'constructors': instance.constructors,
      'enums': instance.enums,
      'interfaces': instance.interfaces,
      'classes': instance.classes,
    };

InterfaceModel _$InterfaceModelFromJson(Map<String, dynamic> json) {
  return InterfaceModel(
    name: json['name'] as String,
    docComment: json['docComment'] as String?,
    accessModifiers: (json['access_modifiers'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    extendedInterfaces: (json['extended_interfaces'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )
    ..rawDocComment = json['rawDocComment'] as String?
    ..typeName = json['type_name'] as String
    ..methods = (json['methods'] as List<dynamic>)
        .map((e) => Method.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$InterfaceModelToJson(InterfaceModel instance) =>
    <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'docComment': instance.docComment,
      'name': instance.name,
      'type_name': instance.typeName,
      'methods': instance.methods,
      'extended_interfaces': instance.extendedInterfaces,
    };

EnumModel _$EnumModelFromJson(Map<String, dynamic> json) {
  return EnumModel(
    name: json['name'] as String,
    docComment: json['docComment'] as String?,
    accessModifiers: (json['access_modifiers'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )
    ..rawDocComment = json['rawDocComment'] as String?
    ..typeName = json['type_name'] as String;
}

Map<String, dynamic> _$EnumModelToJson(EnumModel instance) => <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'docComment': instance.docComment,
      'name': instance.name,
      'type_name': instance.typeName,
    };
