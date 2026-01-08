import 'dart:convert';

import 'package:apex_reflection/src/model/apex_file_manifest.dart';
import 'package:apex_reflection/src/model/types.dart';
import 'package:test/test.dart';

main() {
  test('Can serialize and deserialize from object', () {
    var classModel = ClassMirror(name: 'ClassName');
    var manifest = ApexFileManifest([classModel]);
    final manifestAsJson = jsonEncode(manifest);
    var decodedManifest = ApexFileManifest.fromJson(jsonDecode(manifestAsJson));
    expect(decodedManifest.generatedTypes.length, equals(1));
  });
}
