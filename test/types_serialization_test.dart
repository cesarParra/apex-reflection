import 'dart:convert';

import 'package:apex_reflection/src/model/members.dart';
import 'package:apex_reflection/src/model/modifiers.dart';
import 'package:apex_reflection/src/model/type_references.dart';
import 'package:apex_reflection/src/model/types.dart';
import 'package:test/test.dart';

void main() {
  group('Class serialization', () {
    test('Classes can be serialized', () {
      var classModel = ClassMirror(
          name: 'ClassName',
          extendedClass: 'ParentClass',
          implementedInterfaces: ['Interface1', 'Interface2'])
        ..classModifier = ClassModifier.abstract
        ..rawDocComment = '/** Class description */'
        ..sharingModifier = SharingModifier.withSharing
        ..accessModifier = AccessModifier.public
        ..annotations = [Annotation('@NamespaceAccessible')];
      classModel.addInterface(InterfaceMirror(name: 'ChildInterface'));
      classModel.addEnum(EnumMirror(name: 'ChildEnum'));
      classModel.addClass(ClassMirror(name: 'ChildClass'));
      classModel.addProperty(PropertyMirror(
          name: 'Prop1', typeReference: ReferenceObjectType('String')));
      classModel.addConstructor(ConstructorMirror()
        ..accessModifier = AccessModifier.public
        ..annotations = [Annotation('@NamespaceAccessible')]);
      final methodDocComment = '''
      /**
       * @description Method description
       * @param param1 Param1 description
       * @return Returns description
       * @throws ExceptionName exception description
       * @see Other Class
       * @example An Example
       */
      ''';
      classModel.addMethod(MethodMirror(
          name: 'doSomething', rawDocComment: methodDocComment.trim())
        ..addParameter(ParameterMirror(
            name: 'param1', typeReference: ReferenceObjectType('String'))
          ..memberModifiers = [MemberModifier.isFinal]));
      classModel.addField(FieldMirror(
          name: 'var1', typeReference: ReferenceObjectType('String')));

      String encodedClass = jsonEncode(classModel);
      expect(encodedClass, isNotNull);
    });

    test('Classes can be deserialized', () {
      final classAsJson = '''
      {
      "access_modifier": "public",
      "annotations": [
        {
          "rawDeclaration": "@NamespaceAccessible",
          "name": "namespaceaccessible",
          "type": "namespaceAccessible"
        }
      ],
      "name": "ClassName",
      "type_name": "class",
      "methods": [
        {
          "annotations": [],
          "name": "doSomething",
          "memberModifiers": [],
          "type": "void",
          "typeReference": {"type": "void", "rawDeclaration": "void"},
          "parameters": []
        }
      ],
      "classModifiers": [],
      "extended_class": "ParentClass",
      "implemented_interfaces": [
        "Interface1",
        "Interface2"
      ],
      "properties": [
        {
          "annotations": [],
          "name": "Prop1",
          "memberModifiers": [],
          "type": "String",
          "typeReference": {"type": "String", "rawDeclaration": "String"}
        }
      ],
      "fields": [
        {
          "annotations": [],
          "name": "var1",
          "memberModifiers": [],
          "type": "String",
          "typeReference": {"type": "String", "rawDeclaration": "String"}
        }
      ],
      "constructors": [
        {
          "access_modifier": "public",
          "annotations": [
            {
              "rawDeclaration": "@NamespaceAccessible",
              "name": "namespaceaccessible",
              "type": "namespaceAccessible"
            }
          ],
          "parameters": []
        }
      ],
      "enums": [
        {
          "annotations": [],
          "name": "ChildEnum",
          "type_name": "enum",
          "values": []
        }
      ],
      "interfaces": [
        {
          "annotations": [],
          "name": "ChildInterface",
          "type_name": "interface",
          "methods": [],
          "extended_interfaces": []
        }
      ],
      "classes": [
        {
          "annotations": [],
          "name": "ChildClass",
          "type_name": "class",
          "methods": [],
          "classModifiers": [],
          "implemented_interfaces": [],
          "properties": [],
          "fields": [],
          "constructors": [],
          "enums": [],
          "interfaces": [],
          "classes": []
        }
      ]
    }
      ''';

      final classModel = ClassMirror.fromJson(jsonDecode(classAsJson));
      expect(classModel.name, equals('ClassName'));
      expect(classModel.extendedClass, equals('ParentClass'));
      expect(classModel.implementedInterfaces,
          equals(['Interface1', 'Interface2']));
      expect(classModel.isNamespaceAccessible, equals(true));
      expect(classModel.isPublic, equals(true));
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
      var interfaceModel = InterfaceMirror(
          name: 'InterfaceName',
          extendedInterfaces: ['Interface1', 'Interface2'])
        ..accessModifier = AccessModifier.public
        ..annotations = [Annotation('@NamespaceAccessible')];
      interfaceModel.addMethod(MethodMirror(name: 'doSomething'));

      String encodedInterface = jsonEncode(interfaceModel);
      expect(encodedInterface, isNotNull);
    });

    test('Interfaces can be deserialized', () {
      final interfaceAsJson = '''
      {
        "access_modifier": "public",
        "annotations": [
          {
            "rawDeclaration": "@NamespaceAccessible",
            "name": "namespaceaccessible",
            "type": "namespaceAccessible"
          }
        ],
        "name": "InterfaceName",
        "type_name": "interface",
        "methods": [
          {
            "annotations": [],
            "name": "doSomething",
            "memberModifiers": [],
            "type": "void",
            "typeReference": {"type": "void", "rawDeclaration": "void"},
            "parameters": []
          }
        ],
        "extended_interfaces": [
          "Interface1",
          "Interface2"
        ]
      }
      ''';

      final interfaceModel =
          InterfaceMirror.fromJson(jsonDecode(interfaceAsJson));
      expect(interfaceModel.name, equals('InterfaceName'));
      expect(interfaceModel.isPublic, equals(true));
      expect(interfaceModel.isNamespaceAccessible, equals(true));
      expect(interfaceModel.methods, hasLength(1));
      expect(interfaceModel.methods.first.name, 'doSomething');
    });
  });

  group('Enum serialization', () {
    test('Enums can be serialized', () {
      var enumModel = EnumMirror(name: 'EnumName')
        ..accessModifier = AccessModifier.public
        ..annotations = [Annotation('@NamespaceAccessible')];

      String encodedEnum = jsonEncode(enumModel);
      expect(encodedEnum, isNotNull);
    });

    test('Fields can be deserialized', () {
      final enumAsJson = '''
      {
        "access_modifier": "public",
        "annotations": [
          {
            "rawDeclaration": "@NamespaceAccessible",
            "name": "namespaceaccessible",
            "type": "namespaceAccessible"
          }
        ],
        "name": "EnumName",
        "type_name": "enum",
        "values": []
      }
      ''';

      final enumModel = EnumMirror.fromJson(jsonDecode(enumAsJson));
      expect(enumModel.name, equals('EnumName'));
      expect(enumModel.isPublic, equals(true));
      expect(enumModel.isNamespaceAccessible, equals(true));
    });
  });
}
