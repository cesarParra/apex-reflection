import 'dart:convert';

import 'package:test/test.dart';
import 'package:apexdocs_dart/src/model/members.dart';

void main() {
  group('Property serialization', () {
    test('Properties can be serialized', () {
      final property = PropertyMirror(
          name: 'PropName',
          type: 'String',
          accessModifiers: ['namespaceaccessible', 'public']);

      String encodedProperty = jsonEncode(property);
      expect(encodedProperty, isNotNull);
      final decodedProperty = PropertyMirror.fromJson(jsonDecode(encodedProperty));
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

      final property = PropertyMirror.fromJson(jsonDecode(propertyAsJson));
      expect(property.name, equals('PropName'));
      expect(property.type, equals('String'));
      expect(
          property.accessModifiers, equals(['namespaceaccessible', 'public']));
    });
  });

  group('Field serialization', () {
    test('Fields can be serialized', () {
      var field = FieldMirror(
          name: 'FieldNAme',
          type: 'String',
          accessModifiers: ['namespaceaccessible', 'public']);

      String encodedField = jsonEncode(field);
      expect(encodedField, isNotNull);
      final decodedField = FieldMirror.fromJson(jsonDecode(encodedField));
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

      final field = FieldMirror.fromJson(jsonDecode(fieldAsJson));
      expect(field.name, equals('FieldName'));
      expect(field.type, equals('String'));
      expect(field.accessModifiers, equals(['namespaceaccessible', 'public']));
    });
  });

  group('Method serialization', () {
    test('Methods can be serialized', () {
      var method = MethodMirror(
          name: 'MethodName',
          type: 'String',
          accessModifiers: ['namespaceaccessible', 'public']);
      method.addParameter(ParameterMirror(name: 'Param1', type: 'String'));

      String encodedMethod = jsonEncode(method);
      expect(encodedMethod, isNotNull);
      final decodedMethod = MethodMirror.fromJson(jsonDecode(encodedMethod));
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

      final method = MethodMirror.fromJson(jsonDecode(methodAsJson));
      expect(method.name, equals('MethodName'));
      expect(method.type, equals('String'));
      expect(method.accessModifiers, equals(['namespaceaccessible', 'public']));
      expect(method.parameters.length, equals(1));
      expect(method.parameters.first.name, equals('Param1'));
    });
  });

  group('Parameter serialization', () {
    test('Parameters can be serialized', () {
      var parameter = ParameterMirror(
          name: 'ParameterName',
          type: 'String',
          accessModifiers: ['namespaceaccessible', 'public']);

      String encodedParameter = jsonEncode(parameter);
      expect(encodedParameter, isNotNull);
      final decodedParameter = ParameterMirror.fromJson(jsonDecode(encodedParameter));
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

      final parameter = ParameterMirror.fromJson(jsonDecode(parameterAsJson));
      expect(parameter.name, equals('ParameterName'));
      expect(parameter.type, equals('String'));
      expect(
          parameter.accessModifiers, equals(['namespaceaccessible', 'public']));
    });
  });

  group('Constructor serialization', () {
    test('Constructors can be serialized', () {
      var constructor =
          ConstructorMirror(accessModifiers: ['namespaceaccessible', 'public']);
      constructor.addParameter(ParameterMirror(name: 'Param1', type: 'String'));

      String encodedConstructor = jsonEncode(constructor);
      expect(encodedConstructor, isNotNull);
      final decodedConstructor =
          ConstructorMirror.fromJson(jsonDecode(encodedConstructor));
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

      final constructor = ConstructorMirror.fromJson(jsonDecode(constructorAsJson));
      expect(constructor.accessModifiers,
          equals(['namespaceaccessible', 'public']));
      expect(constructor.parameters.length, equals(1));
      expect(constructor.parameters.first.name, equals('Param1'));
    });
  });
}
