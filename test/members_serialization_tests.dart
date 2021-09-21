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

  group('Field serialization', () {
    test('Fields can be serialized', () {
      var field = Field(
          name: 'FieldNAme',
          type: 'String',
          accessModifiers: ['namespaceaccessible', 'public']);

      String encodedField = jsonEncode(field);
      expect(encodedField, isNotNull);
    });

    test('Fields can be deserialized', () {
      final fieldAsJson = '''
      {
        "name": "FieldName",
        "type": "String",
        "access_modifiers": ["namespaceaccessible", "public"]
      }
      ''';

      final field = Field.fromJson(jsonDecode(fieldAsJson));
      expect(field.name, equals('FieldName'));
      expect(field.type, equals('String'));
      expect(field.accessModifiers, equals(['namespaceaccessible', 'public']));
    });
  });
}
