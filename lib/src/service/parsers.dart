import 'package:antlr4/antlr4.dart';
import 'package:apexdocs_dart/src/model/doc_comment.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/case_insensitive_input_stream.dart';
import 'package:apexdocs_dart/src/service/walker.dart';
import 'package:json_annotation/json_annotation.dart';
import '../antlr/grammars/apex/ApexParser.dart' as antlr_apex_parser;
import '../antlr/grammars/Apexdoc/ApexdocParser.dart' as antlr_apexdoc_parser;

part 'parsers.g.dart';

@JsonSerializable()
class ReflectionResponse {
  @JsonKey(fromJson: typeFromJson, toJson: typeToJson)
  TypeMirror? typeMirror;
  ParsingError? error;

  ReflectionResponse();

  ReflectionResponse.success(this.typeMirror);

  ReflectionResponse.error(this.error);

  factory ReflectionResponse.fromJson(Map<String, dynamic> json) =>
      _$ReflectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReflectionResponseToJson(this);

  static TypeMirror? typeFromJson(json) {
    final currentJsonMap = json as Map<String, dynamic>;
    switch (currentJsonMap['type_name'] as String) {
      case 'class':
        return ClassMirror.fromJson(currentJsonMap);
      case 'interface':
        return InterfaceMirror.fromJson(currentJsonMap);
      case 'enum':
        return EnumMirror.fromJson(currentJsonMap);
      default:
        throw Exception('Unknown type');
    }
  }

  static dynamic typeToJson(TypeMirror? type) {
    return type?.toJson();
  }
}

@JsonSerializable()
class TriggerReflectionResponse {
  @JsonKey(fromJson: typeFromJson, toJson: typeToJson)
  TriggerMirror? triggerMirror;
  ParsingError? error;

  TriggerReflectionResponse();

  TriggerReflectionResponse.success(this.triggerMirror);

  TriggerReflectionResponse.error(this.error);

  factory TriggerReflectionResponse.fromJson(Map<String, dynamic> json) =>
      _$TriggerReflectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TriggerReflectionResponseToJson(this);

  static TriggerMirror? typeFromJson(json) {
    return TriggerMirror.fromJson(json as Map<String, dynamic>);
  }

  static dynamic typeToJson(TriggerMirror? type) {
    return type?.toJson();
  }
}

@JsonSerializable()
class ParsingError {
  String message;

  ParsingError(this.message);

  factory ParsingError.fromJson(Map<String, dynamic> json) =>
      _$ParsingErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ParsingErrorToJson(this);
}

class Reflection {
  static ReflectionResponse reflect(String body) {
    try {
      final typeResponse = ApexParser.parseFromBody(body);
      return ReflectionResponse.success(typeResponse);
    } catch (e) {
      final errorMessage = e.toString();
      final parsingError = ParsingError(errorMessage);
      return ReflectionResponse.error(parsingError);
    }
  }

  static TriggerReflectionResponse reflectTrigger(String body) {
    try {
      final triggerResponse = TriggerParser.parseFromBody(body);
      return TriggerReflectionResponse.success(triggerResponse);
    } catch (e) {
      final errorMessage = e.toString();
      final parsingError = ParsingError(errorMessage);
      return TriggerReflectionResponse.error(parsingError);
    }
  }
}

class ApexParser {
  static TypeMirror parseFromBody(String body) {
    final input = CaseInsensitiveInputStream.fromString(body);
    return _parse(input);
  }

  static TypeMirror _parse(InputStream input) {
    final walkerDefinition = ApexWalkerDefinition();
    Walker.walk(input, walkerDefinition,
        (antlr_apex_parser.ApexParser parser) => parser.compilationUnit());
    return walkerDefinition.getGeneratedApexType()!;
  }
}

class TriggerParser {
  static TriggerMirror parseFromBody(String body) {
    final input = CaseInsensitiveInputStream.fromString(body);
    return _parse(input);
  }

  static TriggerMirror _parse(InputStream input) {
    final walkerDefinition = ApexWalkerDefinition();
    Walker.walk(input, walkerDefinition,
        (antlr_apex_parser.ApexParser parser) => parser.triggerUnit());
    return walkerDefinition.getGeneratedTrigger()!;
  }
}

class ApexdocParser {
  static DocComment parseFromBody(String body) {
    var sanitizedBody = body.trimLeft().trimRight();
    final walkerDefinition = ApexdocWalkerDefinition();
    try {
      Walker.walk(
          InputStream.fromString(sanitizedBody),
          walkerDefinition,
          (antlr_apexdoc_parser.ApexdocParser parser) =>
              parser.documentation());
    } catch (error) {
      return DocComment.error(error.toString());
    }
    return walkerDefinition.getGeneratedDocComment();
  }
}
