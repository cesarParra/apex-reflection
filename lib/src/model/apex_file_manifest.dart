import 'package:apexdocs_dart/src/model/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apex_file_manifest.g.dart';

@JsonSerializable()
class ApexFileManifest {
  @JsonKey(fromJson: typeFromJson, toJson: typeToJson)
  late final List<Type> generatedTypes;

  ApexFileManifest(this.generatedTypes);

  factory ApexFileManifest.fromJson(Map<String, dynamic> json) =>
      _$ApexFileManifestFromJson(json);

  Map<String, dynamic> toJson() => _$ApexFileManifestToJson(this);

  static List<Type> typeFromJson(List<dynamic> json) {
    return json.map((e) {
      final currentJsonMap = e as Map<String, dynamic>;
      switch (currentJsonMap['type_name'] as String) {
        case 'class':
          return ClassModel.fromJson(currentJsonMap);
        case 'interface':
          return InterfaceModel.fromJson(currentJsonMap);
        case 'enum':
          return EnumModel.fromJson(currentJsonMap);
        default:
          throw Exception('Unknown type');
      }
    }).toList();
  }

  static List<dynamic> typeToJson(List<Type> types) {
    return types.map((e) => e.toJson()).toList();
  }
}
