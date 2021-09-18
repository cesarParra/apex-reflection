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

    // TODO: can have a constructor
    // TODO: can have a list of properties
    // TODO: can have a list of methods
    // TODO: can have a list of inner classes
  });
}
