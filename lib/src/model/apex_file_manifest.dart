import 'package:apexdocs_dart/src/model/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apex_file_manifest.g.dart';

@JsonSerializable()
class ApexFileManifest {
  @JsonKey(fromJson: typeFromJson, toJson: typeToJson)
  late final List<TypeMirror> generatedTypes;

  ApexFileManifest(this.generatedTypes);

  factory ApexFileManifest.fromJson(Map<String, dynamic> json) =>
      _$ApexFileManifestFromJson(json);

  Map<String, dynamic> toJson() => _$ApexFileManifestToJson(this);

  static List<TypeMirror> typeFromJson(List<dynamic> json) {
    return json.map((e) {
      final currentJsonMap = e as Map<String, dynamic>;
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
    }).toList();
  }

  static List<dynamic> typeToJson(List<TypeMirror> types) {
    return types.map((e) => e.toJson()).toList();
  }
}
