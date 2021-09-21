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

  group('Method serialization', () {
    test('Methods can be serialized', () {
      var method = Method(
          name: 'MethodName',
          type: 'String',
          accessModifiers: ['namespaceaccessible', 'public']);
      method.addParameter(Parameter(name: 'Param1', type: 'String'));

      String encodedMethod = jsonEncode(method);
      expect(encodedMethod, isNotNull);
    });

    test('Methods can be deserialized', () {
      final methodAsJson = '''
      {
        "name":"MethodName",
        "type":"String",
        "access_modifiers":["namespaceaccessible","public"],
        "parameters":[{"name":"Param1","type":"String","access_modifiers":[]}]
      }
      ''';

      final method = Method.fromJson(jsonDecode(methodAsJson));
      expect(method.name, equals('MethodName'));
      expect(method.type, equals('String'));
      expect(method.accessModifiers, equals(['namespaceaccessible', 'public']));
      //expect(method.para)
    });
  });

  group('Parameter serialization', () {
    test('Parameters can be serialized', () {
      var parameter = Parameter(
          name: 'ParameterName',
          type: 'String',
          accessModifiers: ['namespaceaccessible', 'public']);

      String encodedParameter = jsonEncode(parameter);
      expect(encodedParameter, isNotNull);
    });

    test('Parameters can be deserialized', () {
      final parameterAsJson = '''
      {
        "name": "ParameterName",
        "type": "String",
        "access_modifiers": ["namespaceaccessible", "public"]
      }
      ''';

      final parameter = Parameter.fromJson(jsonDecode(parameterAsJson));
      expect(parameter.name, equals('ParameterName'));
      expect(parameter.type, equals('String'));
      expect(
          parameter.accessModifiers, equals(['namespaceaccessible', 'public']));
    });
  });
}
