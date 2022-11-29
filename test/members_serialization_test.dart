import 'dart:convert';

import 'package:apexdocs_dart/src/model/modifiers.dart';
import 'package:apexdocs_dart/src/model/type_references.dart';
import 'package:test/test.dart';
import 'package:apexdocs_dart/src/model/members.dart';

void main() {
  group('Property serialization', () {
    test('Properties can be serialized', () {
      final property = PropertyMirror(
          name: 'PropName', typeReference: ReferenceObjectType('String'))
        ..rawDocComment = '/** My property description */'
        ..accessModifier = AccessModifier.public
        ..annotations = [Annotation('@NamespaceAccessible')];

      String encodedProperty = jsonEncode(property);
      expect(encodedProperty, isNotNull);
      final decodedProperty =
          PropertyMirror.fromJson(jsonDecode(encodedProperty));
      expect(property.name, equals(decodedProperty.name));
    });

    test('Properties can be deserialized', () {
      final propertyAsJson = '''
      {
        "name": "PropName",
        "typeReference": {"type": "String"},
        "memberModifiers": [],
        "access_modifier": "public",
        "annotations": [{
          "rawDeclaration": "@NamespaceAccessible",
          "name": "namespaceaccessible",
          "type": "namespaceAccessible"
        }]
      }
      ''';

      final property = PropertyMirror.fromJson(jsonDecode(propertyAsJson));
      expect(property.name, equals('PropName'));
      expect(property.type, equals('String'));
      expect(property.accessModifier, equals(AccessModifier.public));
      expect(property.isNamespaceAccessible, equals(true));
    });
  });

  group('Field serialization', () {
    test('Fields can be serialized', () {
      var field = FieldMirror(name: 'FieldName', typeReference: ReferenceObjectType('String'))
        ..annotations = [Annotation('@NamespaceAccessible')]
        ..accessModifier = AccessModifier.public;

      String encodedField = jsonEncode(field);
      expect(encodedField, isNotNull);
      final decodedField = FieldMirror.fromJson(jsonDecode(encodedField));
      expect(field.name, equals(decodedField.name));
    });

    test('Fields can be deserialized', () {
      final fieldAsJson = '''
      {
        "access_modifier": "public",
        "annotations": [
          {
            "rawDeclaration": "@NamespaceAccessible",
            "name": "namespaceaccessible",
            "type": "namespaceAccessible"
          }
        ],
        "name": "FieldName",
        "memberModifiers": [],
        "typeReference": {"type": "String"}
      }
      ''';

      final field = FieldMirror.fromJson(jsonDecode(fieldAsJson));
      expect(field.name, equals('FieldName'));
      expect(field.type, equals('String'));
      expect(field.accessModifier, equals(AccessModifier.public));
      expect(field.isNamespaceAccessible, equals(true));
    });
  });

  group('Method serialization', () {
    test('Methods can be serialized', () {
      var method = MethodMirror(name: 'MethodName', typeReference: ReferenceObjectType('String'))
        ..annotations = [Annotation('@NamespaceAccessible')]
        ..accessModifier = AccessModifier.public;
      method.addParameter(ParameterMirror(name: 'Param1', type: 'String'));

      String encodedMethod = jsonEncode(method);
      expect(encodedMethod, isNotNull);
      final decodedMethod = MethodMirror.fromJson(jsonDecode(encodedMethod));
      expect(method.name, equals(decodedMethod.name));
    });

    test('Methods can be deserialized', () {
      final methodAsJson = '''
      {
        "access_modifier": "public",
        "annotations": [
          {
            "rawDeclaration": "@NamespaceAccessible",
            "name": "namespaceaccessible",
            "type": "namespaceAccessible"
          }
        ],
        "name": "MethodName",
        "memberModifiers": [],
        "typeReference": {"type": "String"},
        "parameters": [
          {
            "name": "Param1",
            "memberModifiers": [],
            "type": "String"
          }
        ]
      }
      ''';

      final method = MethodMirror.fromJson(jsonDecode(methodAsJson));
      expect(method.name, equals('MethodName'));
      expect(method.type, equals('String'));
      expect(method.accessModifier, equals(AccessModifier.public));
      expect(method.isNamespaceAccessible, equals(true));
      expect(method.parameters.length, equals(1));
      expect(method.parameters.first.name, equals('Param1'));
    });
  });

  group('Parameter serialization', () {
    test('Parameters can be serialized', () {
      var parameter = ParameterMirror(name: 'ParameterName', type: 'String');

      String encodedParameter = jsonEncode(parameter);
      expect(encodedParameter, isNotNull);
      final decodedParameter =
          ParameterMirror.fromJson(jsonDecode(encodedParameter));
      expect(parameter.name, equals(decodedParameter.name));
    });

    test('Parameters can be deserialized', () {
      final parameterAsJson = '''
      {
        "memberModifiers": [],
        "name": "ParameterName",
        "type": "String"
      }
      ''';

      final parameter = ParameterMirror.fromJson(jsonDecode(parameterAsJson));
      expect(parameter.name, equals('ParameterName'));
      expect(parameter.type, equals('String'));
    });
  });

  group('Constructor serialization', () {
    test('Constructors can be serialized', () {
      var constructor = ConstructorMirror()
        ..annotations = [Annotation('@NamespaceAccessible')]
        ..accessModifier = AccessModifier.public;
      constructor.addParameter(ParameterMirror(name: 'Param1', type: 'String'));

      String encodedConstructor = jsonEncode(constructor);
      expect(encodedConstructor, isNotNull);
      final decodedConstructor =
          ConstructorMirror.fromJson(jsonDecode(encodedConstructor));
      expect(decodedConstructor.isPublic, equals(true));
      expect(decodedConstructor.isNamespaceAccessible, equals(true));
    });

    test('Constructors can be deserialized', () {
      final constructorAsJson = '''
      {
        "access_modifier": "public",
        "annotations": [
          {
            "rawDeclaration": "@NamespaceAccessible",
            "name": "namespaceaccessible",
            "type": "namespaceAccessible"
          }
        ],
        "parameters": [
          {
            "memberModifiers": [],
            "name": "Param1",
            "type": "String"
          }
        ]
      }
      ''';

      final constructor =
          ConstructorMirror.fromJson(jsonDecode(constructorAsJson));
      expect(constructor.isPublic, equals(true));
      expect(constructor.isNamespaceAccessible, equals(true));
      expect(constructor.parameters.length, equals(1));
      expect(constructor.parameters.first.name, equals('Param1'));
    });
  });
}
