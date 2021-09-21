import 'dart:convert';

import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:test/test.dart';

void main() {
  group('Class serialization', () {
    test('Classes can be serialized', () {
      var classModel = ClassModel(
          name: 'ClassName',
          extendedClass: 'ParentClass',
          implementedInterfaces: ['Interface1', 'Interface2'],
          accessModifiers: ['namespaceaccessible', 'public']);
      classModel.addInterface(InterfaceModel(name: 'ChildInterface'));
      classModel.addEnum(EnumModel(name: 'ChildEnum'));
      classModel.addClass(ClassModel(name: 'ChildClass'));
      classModel.addProperty(Property(name: 'Prop1', type: 'String'));
      classModel.addConstructor(
          Constructor(accessModifiers: ['namespaceaccessible', 'public']));
      classModel.addMethod(Method(name: 'doSomething'));
      classModel.addField(Field(name: 'var1', type: 'String'));

      String encodedClass = jsonEncode(classModel);
      expect(encodedClass, isNotNull);
    });

    test('Classes can be deserialized', () {
      final classAsJson = '''
      {
        "name": "ClassName",
        "extended_class": "ParentClass",
        "implemented_interfaces": [
          "Interface1",
          "Interface2"
        ],
        "access_modifiers": [
          "namespaceaccessible",
          "public"
        ],
        "fields": [
          {
            "name": "var1",
            "type": "String",
            "access_modifiers": []
          }
        ],
        "constructors": [
          {
            "access_modifiers": [
              "namespaceaccessible",
              "public"
            ],
            "parameters": []
          }
        ],
        "properties": [
          {
            "name": "Prop1",
            "type": "String",
            "access_modifiers": []
          }
        ],
        "methods": [
          {
            "name": "doSomething",
            "type": "void",
            "access_modifiers": [],
            "parameters": []
          }
        ],
        "interfaces": [
          {
            "name": "ChildInterface",
            "extended_interfaces": [],
            "access_modifiers": [],
            "methods": []
          }
        ],
        "enums": [
          {
            "name": "ChildEnum",
            "access_modifiers": []
          }
        ],
        "classes": [
          {
            "name": "ChildClass",
            "implemented_interfaces": [],
            "access_modifiers": [],
            "fields": [],
            "constructors": [],
            "properties": [],
            "methods": [],
            "interfaces": [],
            "enums": [],
            "classes": []
          }
        ]
      }
      ''';

      final classModel = ClassModel.fromJson(jsonDecode(classAsJson));
      expect(classModel.name, equals('ClassName'));
      expect(classModel.extendedClass, equals('ParentClass'));
      expect(classModel.implementedInterfaces,
          equals(['Interface1', 'Interface2']));
      expect(classModel.accessModifiers,
          equals(['namespaceaccessible', 'public']));
      expect(classModel.fields, hasLength(1));
      expect(classModel.properties, hasLength(1));
      expect(classModel.constructors, hasLength(1));
      expect(classModel.methods, hasLength(1));
      expect(classModel.classes, hasLength(1));
      expect(classModel.enums, hasLength(1));
      expect(classModel.interfaces, hasLength(1));
    });
  });

  group('Interface serialization', () {
    test('Interfaces can be serialized', () {
      var interfaceModel = InterfaceModel(
          name: 'InterfaceName',
          extendedInterfaces: ['Interface1', 'Interface2'],
          accessModifiers: ['namespaceaccessible', 'public']);
      interfaceModel.addMethod(Method(name: 'doSomething'));

      String encodedClass = jsonEncode(interfaceModel);
      expect(encodedClass, isNotNull);
    });

    test('Interfaces can be deserialized', () {
      final interfaceAsJson = '''
      {
        "name": "InterfaceName",
        "extended_interfaces": [
          "Interface1",
          "Interface2"
        ],
        "access_modifiers": [
          "namespaceaccessible",
          "public"
        ],
        "methods": [
          {
            "name": "doSomething",
            "type": "void",
            "access_modifiers": [],
            "parameters": []
          }
        ]
      }
      ''';

      final interfaceModel =
          InterfaceModel.fromJson(jsonDecode(interfaceAsJson));
      expect(interfaceModel.name, equals('InterfaceName'));
      expect(interfaceModel.accessModifiers,
          equals(['namespaceaccessible', 'public']));
      expect(interfaceModel.methods, hasLength(1));
      expect(interfaceModel.methods.first.name, 'doSomething');
    });
  });

  group('Enum serialization', () {
    test('Enums can be serialized', () {
      var enumModel = EnumModel(
          name: 'EnumName', accessModifiers: ['namespaceaccessible', 'public']);

      String encodedEnum = jsonEncode(enumModel);
      expect(encodedEnum, isNotNull);
    });

    test('Fields can be deserialized', () {
      final enumAsJson = '''
      {
        "name": "EnumName",
        "access_modifiers": [
          "namespaceaccessible",
          "public"
        ]
      }
      ''';

      final enumModel = EnumModel.fromJson(jsonDecode(enumAsJson));
      expect(enumModel.name, equals('EnumName'));
      expect(
          enumModel.accessModifiers, equals(['namespaceaccessible', 'public']));
    });
  });
}
