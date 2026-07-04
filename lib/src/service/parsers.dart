import 'package:apex_reflection/src/model/doc_comment.dart';
import 'package:apex_reflection/src/model/types.dart';
import 'package:apex_reflection/src/service/grammar/apex_grammar.dart';
import 'package:apex_reflection/src/service/grammar/apexdoc_grammar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:petitparser/petitparser.dart';

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
    return _parseOrThrow(ApexGrammar.instance.compilationUnit, body);
  }
}

class TriggerParser {
  static TriggerMirror parseFromBody(String body) {
    return _parseOrThrow(ApexGrammar.instance.triggerUnit, body);
  }
}

class ApexdocParser {
  static DocComment parseFromBody(String body) {
    return ApexdocGrammar.parse(body);
  }
}

T _parseOrThrow<T>(Parser<T> parser, String body) {
  // No trimming: the grammar consumes leading and trailing hidden whitespace
  // itself, and trimming would copy the whole source string first.
  final result = parser.parse(body);
  if (result is Failure) {
    throw Exception(
        'Error parsing Apex Body. ${result.message} at ${result.position}');
  }
  return result.value;
}
