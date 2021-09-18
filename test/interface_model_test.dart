import 'package:test/test.dart';

import 'package:apexdocs_dart/src/model/interface_model.dart';

void main() {
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
