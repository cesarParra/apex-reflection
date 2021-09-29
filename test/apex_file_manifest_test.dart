import 'dart:convert';

import 'package:apexdocs_dart/src/model/apex_file_manifest.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/parsers.dart';
import 'package:test/test.dart';

main() {
  test('Can serialize and deserialize from object', () {
    var classModel = ClassModel(name: 'ClassName');
    var manifest = ApexFileManifest([classModel]);
    final manifestAsJson = jsonEncode(manifest);
    var decodedManifest = ApexFileManifest.fromJson(jsonDecode(manifestAsJson));
    expect(decodedManifest.generatedTypes.length, equals(1));
  });
}
