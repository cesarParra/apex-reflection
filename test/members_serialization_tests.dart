import 'dart:convert';

import 'package:test/test.dart';
import 'package:apexdocs_dart/src/model/members.dart';

void main() {
  group('Property serialization', () {
    test('Properties can be serialized', () {
      var property = Property(
          name: 'PropName',
          type: 'String',
          accessModifiers: ['namespaceaccessible', 'public']);

      String encodedProperty = jsonEncode(property);
      expect(encodedProperty, isNotNull);
    });

    test('Properties can be deserialized', () {
      final propertyAsJson = '''
      {
        "name": "PropName",
        "type": "String",
        "access_modifiers": ["namespaceaccessible", "public"]
      }
      ''';

      final property = Property.fromJson(jsonDecode(propertyAsJson));
      expect(property.name, equals('PropName'));
      expect(property.type, equals('String'));
      expect(
          property.accessModifiers, equals(['namespaceaccessible', 'public']));
    });
  });
}
