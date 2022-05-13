// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocComment _$DocCommentFromJson(Map<String, dynamic> json) {
  return DocComment(
    json['description'] as String,
  )
    ..rawDeclaration = json['rawDeclaration'] as String?
    ..paramAnnotations = (json['paramAnnotations'] as List<dynamic>)
        .map((e) =>
            ParamDocCommentAnnotation.fromJson(e as Map<String, dynamic>))
        .toList()
    ..returnAnnotation = json['returnAnnotation'] == null
        ? null
        : ReturnDocCommentAnnotation.fromJson(
            json['returnAnnotation'] as Map<String, dynamic>)
    ..exampleAnnotation = json['exampleAnnotation'] == null
        ? null
        : ExampleDocCommentAnnotation.fromJson(
            json['exampleAnnotation'] as Map<String, dynamic>)
    ..throwsAnnotations = (json['throwsAnnotations'] as List<dynamic>)
        .map((e) =>
            ThrowsDocCommentAnnotation.fromJson(e as Map<String, dynamic>))
        .toList()
    ..annotations = (json['annotations'] as List<dynamic>)
        .map((e) => DocCommentAnnotation.fromJson(e as Map<String, dynamic>))
        .toList()
    ..error = json['error'] as String?
    ..descriptionLines = (json['descriptionLines'] as List<dynamic>)
        .map((e) => e as String)
        .toList();
}

Map<String, dynamic> _$DocCommentToJson(DocComment instance) =>
    <String, dynamic>{
      'rawDeclaration': instance.rawDeclaration,
      'paramAnnotations': instance.paramAnnotations,
      'returnAnnotation': instance.returnAnnotation,
      'exampleAnnotation': instance.exampleAnnotation,
      'throwsAnnotations': instance.throwsAnnotations,
      'annotations': instance.annotations,
      'error': instance.error,
      'descriptionLines': instance.descriptionLines,
      'description': instance.description,
    };

DocCommentAnnotation _$DocCommentAnnotationFromJson(Map<String, dynamic> json) {
  return DocCommentAnnotation(
    json['name'] as String,
    json['body'],
  )..bodyLines =
      (json['bodyLines'] as List<dynamic>).map((e) => e as String).toList();
}

Map<String, dynamic> _$DocCommentAnnotationToJson(
        DocCommentAnnotation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'bodyLines': instance.bodyLines,
      'body': instance.body,
    };

ParamDocCommentAnnotation _$ParamDocCommentAnnotationFromJson(
    Map<String, dynamic> json) {
  return ParamDocCommentAnnotation(
    json['paramName'] as String,
    json['bodyLines'],
  );
}

Map<String, dynamic> _$ParamDocCommentAnnotationToJson(
        ParamDocCommentAnnotation instance) =>
    <String, dynamic>{
      'bodyLines': instance.bodyLines,
      'paramName': instance.paramName,
    };

ReturnDocCommentAnnotation _$ReturnDocCommentAnnotationFromJson(
    Map<String, dynamic> json) {
  return ReturnDocCommentAnnotation(
    json['bodyLines'],
  );
}

Map<String, dynamic> _$ReturnDocCommentAnnotationToJson(
        ReturnDocCommentAnnotation instance) =>
    <String, dynamic>{
      'bodyLines': instance.bodyLines,
    };

ThrowsDocCommentAnnotation _$ThrowsDocCommentAnnotationFromJson(
    Map<String, dynamic> json) {
  return ThrowsDocCommentAnnotation(
    json['exceptionName'] as String,
    json['bodyLines'],
  );
}

Map<String, dynamic> _$ThrowsDocCommentAnnotationToJson(
        ThrowsDocCommentAnnotation instance) =>
    <String, dynamic>{
      'bodyLines': instance.bodyLines,
      'exceptionName': instance.exceptionName,
    };

ExampleDocCommentAnnotation _$ExampleDocCommentAnnotationFromJson(
    Map<String, dynamic> json) {
  return ExampleDocCommentAnnotation(
    json['bodyLines'],
  );
}

Map<String, dynamic> _$ExampleDocCommentAnnotationToJson(
        ExampleDocCommentAnnotation instance) =>
    <String, dynamic>{
      'bodyLines': instance.bodyLines,
    };
