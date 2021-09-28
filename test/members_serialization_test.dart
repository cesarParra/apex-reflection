import 'dart:convert';

import 'package:test/test.dart';
import 'package:apexdocs_dart/src/model/members.dart';

void main() {
  group('Property serialization', () {
    test('Properties can be serialized', () {
      final property = Property(
          name: 'PropName',
          type: 'String',
          accessModifiers: ['namespaceaccessible', 'public']);

      String encodedProperty = jsonEncode(property);
      expect(encodedProperty, isNotNull);
      final decodedProperty = Property.fromJson(jsonDecode(encodedProperty));
      expect(property.name, equals(decodedProperty.name));
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
      final decodedField = Field.fromJson(jsonDecode(encodedField));
      expect(field.name, equals(decodedField.name));
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
      final decodedMethod = Method.fromJson(jsonDecode(encodedMethod));
      expect(method.name, equals(decodedMethod.name));
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
      expect(method.parameters.length, equals(1));
      expect(method.parameters.first.name, equals('Param1'));
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
      final decodedParameter = Parameter.fromJson(jsonDecode(encodedParameter));
      expect(parameter.name, equals(decodedParameter.name));
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

  group('Constructor serialization', () {
    test('Constructors can be serialized', () {
      var constructor =
          Constructor(accessModifiers: ['namespaceaccessible', 'public']);
      constructor.addParameter(Parameter(name: 'Param1', type: 'String'));

      String encodedConstructor = jsonEncode(constructor);
      expect(encodedConstructor, isNotNull);
      final decodedConstructor =
          Constructor.fromJson(jsonDecode(encodedConstructor));
      expect(constructor.accessModifiers,
          equals(decodedConstructor.accessModifiers));
    });

    test('Constructors can be deserialized', () {
      final constructorAsJson = '''
      {
        "access_modifiers":["namespaceaccessible","public"],
        "parameters":[{"name":"Param1","type":"String","access_modifiers":[]}]
      }
      ''';

      final constructor = Constructor.fromJson(jsonDecode(constructorAsJson));
      expect(constructor.accessModifiers,
          equals(['namespaceaccessible', 'public']));
      expect(constructor.parameters.length, equals(1));
      expect(constructor.parameters.first.name, equals('Param1'));
    });
  });
}
