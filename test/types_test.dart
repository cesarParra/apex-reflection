import 'package:apexdocs_dart/src/model/members.dart';
import 'package:test/test.dart';

import 'package:apexdocs_dart/src/model/types.dart';

void main() {
  group('Class Model Tests', () {
    test('Has a name', () {
      final expectedClassName = 'ClassName';
      final classModel = ClassModel(name: expectedClassName);
      expect(classModel.name, expectedClassName);
    });

    test('Does not have access modifiers by default', () {
      final classModel = ClassModel(name: 'AnyName');
      expect(classModel.accessModifiers.length, 0);
    });

    test('Can receive access modifiers', () {
      final classModel =
          ClassModel(name: 'AnyName', accessModifiers: ['public']);
      expect(classModel.accessModifiers.length, 1);
    });

    test('Does not extend another class by default', () {
      final classModel = ClassModel(name: 'AnyName');
      expect(classModel.extendedClass, null);
    });

    test('Can extend another class', () {
      final classModel =
          ClassModel(name: 'AnyName', extendedClass: 'ParentClass');
      expect(classModel.extendedClass, 'ParentClass');
    });

    test('Does not implement interfaces by default', () {
      final classModel = ClassModel(name: 'AnyName');
      expect(classModel.implementedInterfaces.length, 0);
    });

    test('Can implement interfaces', () {
      final classModel = ClassModel(
          name: 'AnyName', implementedInterfaces: ['InterfaceA', 'InterfaceB']);
      expect(classModel.implementedInterfaces.length, 2);
    });

    test('Can determine if is private', () {
      final classModel =
          ClassModel(name: 'AnyName', accessModifiers: ['private']);
      expect(classModel.isPrivate, isTrue);
    });

    test('Can determine if is public', () {
      final classModel =
          ClassModel(name: 'AnyName', accessModifiers: ['public']);
      expect(classModel.isPublic, isTrue);
    });

    test('Can determine if is global', () {
      final classModel =
          ClassModel(name: 'AnyName', accessModifiers: ['global']);
      expect(classModel.isGlobal, isTrue);
    });

    test('Can determine if is protected', () {
      final classModel =
          ClassModel(name: 'AnyName', accessModifiers: ['protected']);
      expect(classModel.isProtected, isTrue);
    });

    test('Can determine if is virtual', () {
      final classModel =
          ClassModel(name: 'AnyName', accessModifiers: ['public', 'virtual']);
      expect(classModel.isVirtual, isTrue);
    });

    test('Can determine if is NamespaceAccessible', () {
      final classModel =
          ClassModel(name: 'AnyName', accessModifiers: ['namespaceaccessible']);
      expect(classModel.isNamespaceAccessible, isTrue);
    });

    test('Can determine if is test', () {
      final classModel =
          ClassModel(name: 'AnyName', accessModifiers: ['istest']);
      expect(classModel.isTest, isTrue);
    });

    test('Can determine if is deprecated', () {
      final classModel =
          ClassModel(name: 'AnyName', accessModifiers: ['deprecated']);
      expect(classModel.isDeprecated, isTrue);
    });

    test('Does not have any properties by default', () {
      var classModel = ClassModel(name: 'AnyName');
      expect(classModel.properties.isEmpty, isTrue);
    });

    test('Can have a list of properties', () {
      var classModel = ClassModel(name: 'AnyName');
      var property1 = Property(name: 'Prop1', type: 'String');
      var property2 = Property(name: 'Prop2', type: 'String');

      classModel.addProperty(property1);
      classModel.addProperty(property2);

      expect(classModel.properties.length, equals(2));
      expect(classModel.properties.contains(property1), isTrue);
      expect(classModel.properties.contains(property2), isTrue);
    });

    test('Does not have any fields by default', () {
      var classModel = ClassModel(name: 'AnyName');
      expect(classModel.fields.isEmpty, isTrue);
    });

    test('Can have a list of fields', () {
      var classModel = ClassModel(name: 'AnyName');
      var field1 = Field(name: 'Field1', type: 'String');
      var field2 = Field(name: 'Field2', type: 'String');

      classModel.addField(field1);
      classModel.addField(field2);

      expect(classModel.fields.length, equals(2));
      expect(classModel.fields.contains(field1), isTrue);
      expect(classModel.fields.contains(field2), isTrue);
    });

    test('Can have a list of methods', () {
      var classModel = ClassModel(name: 'AnyName');
      var method1 = Method(name: 'method1', type: 'String');
      var method2 = Method(name: 'method2', type: 'String');

      classModel.addMethod(method1);
      classModel.addMethod(method2);

      expect(classModel.methods.length, equals(2));
      expect(classModel.methods.contains(method1), isTrue);
      expect(classModel.methods.contains(method2), isTrue);
    });

    // TODO: can have a constructor
    // TODO: can have a list of inner classes
    // TODO: can have a list of inner enums
    // TODO: can have a list of inner interfaces
  });

  group('Interface Model Tests', () {
    test('Has a name', () {
      final expectedClassName = 'ClassName';
      final interfaceModel = InterfaceModel(name: expectedClassName);
      expect(interfaceModel.name, expectedClassName);
    });

    test('Does not have access modifiers by default', () {
      final interfaceModel = InterfaceModel(name: 'AnyName');
      expect(interfaceModel.accessModifiers.length, 0);
    });

    test('Can receive access modifiers', () {
      final interfaceModel =
          InterfaceModel(name: 'AnyName', accessModifiers: ['public']);
      expect(interfaceModel.accessModifiers.length, 1);
    });

    test('Does not extend another interface by default', () {
      final interfaceModel = InterfaceModel(name: 'AnyName');
      expect(interfaceModel.extendedInterfaces, isEmpty);
    });

    test('Can extend other interfaces', () {
      final interfaceModel = InterfaceModel(
          name: 'AnyName', extendedInterfaces: ['Interface1', 'Interface2']);
      expect(interfaceModel.extendedInterfaces, isNotEmpty);
      expect(interfaceModel.extendedInterfaces[0], 'Interface1');
      expect(interfaceModel.extendedInterfaces[1], 'Interface2');
    });

    test('Can determine if is private', () {
      final interfaceModel =
          InterfaceModel(name: 'AnyName', accessModifiers: ['private']);
      expect(interfaceModel.isPrivate, isTrue);
    });

    test('Can determine if is public', () {
      final interfaceModel =
          InterfaceModel(name: 'AnyName', accessModifiers: ['public']);
      expect(interfaceModel.isPublic, isTrue);
    });

    test('Can determine if is global', () {
      final interfaceModel =
          InterfaceModel(name: 'AnyName', accessModifiers: ['global']);
      expect(interfaceModel.isGlobal, isTrue);
    });

    test('Can determine if is protected', () {
      final interfaceModel =
          InterfaceModel(name: 'AnyName', accessModifiers: ['protected']);
      expect(interfaceModel.isProtected, isTrue);
    });

    test('Can determine if is virtual', () {
      final interfaceModel = InterfaceModel(
          name: 'AnyName', accessModifiers: ['public', 'virtual']);
      expect(interfaceModel.isVirtual, isTrue);
    });

    test('Can determine if is NamespaceAccessible', () {
      final interfaceModel = InterfaceModel(
          name: 'AnyName', accessModifiers: ['namespaceaccessible']);
      expect(interfaceModel.isNamespaceAccessible, isTrue);
    });

    test('Can determine if is test', () {
      final interfaceModel =
          InterfaceModel(name: 'AnyName', accessModifiers: ['istest']);
      expect(interfaceModel.isTest, isTrue);
    });

    test('Can determine if is deprecated', () {
      final interfaceModel =
          InterfaceModel(name: 'AnyName', accessModifiers: ['deprecated']);
      expect(interfaceModel.isDeprecated, isTrue);
    });

    // // TODO: can have a list of methods
  });
}
