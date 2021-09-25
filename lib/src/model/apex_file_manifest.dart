import 'package:apexdocs_dart/src/model/types.dart';

class ApexFileManifest {
  late final List<Type> generatedTypes;

  ApexFileManifest(this.generatedTypes);

  ApexFileManifest.fromJson(Map<String, dynamic> json) {
    List<dynamic> generatedTypesString = json['generated_types'];
    generatedTypes = generatedTypesString.map((e) {
      final typeName = e['type'];
      if (typeName == 'class') {
        return ClassModel.fromJson(e);
      } else if (typeName == 'interface') {
        return InterfaceModel.fromJson(e);
      }
      return EnumModel.fromJson(e);
    }).toList();
  }

  Map<String, dynamic> toJson() =>
      {'generated_types': generatedTypes.map((e) => e.toJson()).toList()};
}
