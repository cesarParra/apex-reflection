// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassMirror _$ClassModelFromJson(Map<String, dynamic> json) {
  return ClassMirror(
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
        .map((e) => MethodMirror.fromJson(e as Map<String, dynamic>))
        .toList()
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

Map<String, dynamic> _$ClassModelToJson(ClassMirror instance) =>
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

InterfaceMirror _$InterfaceModelFromJson(Map<String, dynamic> json) {
  return InterfaceMirror(
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
        .map((e) => MethodMirror.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$InterfaceModelToJson(InterfaceMirror instance) =>
    <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'docComment': instance.docComment,
      'name': instance.name,
      'type_name': instance.typeName,
      'methods': instance.methods,
      'extended_interfaces': instance.extendedInterfaces,
    };

EnumMirror _$EnumModelFromJson(Map<String, dynamic> json) {
  return EnumMirror(
    name: json['name'] as String,
    docComment: json['docComment'] as String?,
    accessModifiers: (json['access_modifiers'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  )
    ..rawDocComment = json['rawDocComment'] as String?
    ..typeName = json['type_name'] as String;
}

Map<String, dynamic> _$EnumModelToJson(EnumMirror instance) => <String, dynamic>{
      'access_modifiers': instance.accessModifiers,
      'rawDocComment': instance.rawDocComment,
      'docComment': instance.docComment,
      'name': instance.name,
      'type_name': instance.typeName,
    };
