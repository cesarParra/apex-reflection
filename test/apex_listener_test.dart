// Disabling null safety since this test relies on the antrl4 package
// @dart=2.10

import 'package:antlr4/antlr4.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/apex_listener.dart';
import 'package:test/test.dart';

import 'package:apexdocs_dart/src/service/walker.dart';

void main() {
  group('Parses Apex Classes', () {
    test('Creates a simple class', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('class MyClass{}'), listener);
      expect(listener.generatedType, isNotNull);
      expect(listener.generatedType.name, 'MyClass');
    });

    test('Classes without access modifiers are private by default', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('class MyClass{}'), listener);
      expect(listener.generatedType.isPrivate, isTrue);
    });

    test('Classes with private access modifiers are private', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('private class MyClass{}'), listener);
      expect(listener.generatedType.isPrivate, isTrue);
    });

    test('Classes with public access modifiers are public', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('public class MyClass{}'), listener);
      expect(listener.generatedType.isPrivate, isFalse);
      expect(listener.generatedType.isPublic, isTrue);
    });

    test('Classes with global access modifiers are global', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('global class MyClass{}'), listener);
      expect(listener.generatedType.isPrivate, isFalse);
      expect(listener.generatedType.isPublic, isFalse);
      expect(listener.generatedType.isGlobal, isTrue);
    });

    test('Classes with protected access modifiers are protected', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString('protected class MyClass{}'), listener);
      expect(listener.generatedType.isPrivate, isFalse);
      expect(listener.generatedType.isPublic, isFalse);
      expect(listener.generatedType.isGlobal, isFalse);
      expect(listener.generatedType.isProtected, isTrue);
    });

    test('Classes with protected access modifiers are protected', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString('protected class MyClass{}'), listener);
      expect(listener.generatedType.isPrivate, isFalse);
      expect(listener.generatedType.isPublic, isFalse);
      expect(listener.generatedType.isGlobal, isFalse);
      expect(listener.generatedType.isProtected, isTrue);
    });

    test('Virtual classes are supported', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString('public virtual class MyClass{}'), listener);
      expect(listener.generatedType.isVirtual, isTrue);
    });

    test('Supports the NamespaceAccessible annotation', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString(
              '@NamespaceAccessible public virtual class MyClass{}'),
          listener);
      expect(listener.generatedType.isNamespaceAccessible, isTrue);
    });

    test('Supports the IsTest annotation', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString('@IsTest private class MyClass{}'), listener);
      expect(listener.generatedType.isTest, isTrue);
    });

    test('Supports annotations with extra parameters', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString(
              '@IsTest(Parallel=true) private class MyClass{}'),
          listener);
      expect(listener.generatedType.isTest, isTrue);
    });

    test('Does not extend any class by default', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('public class MyClass{}'), listener);
      var generatedClass = listener.generatedType as ClassModel;
      expect(generatedClass.extendedClass, isNull);
    });

    test('Classes can extend another class', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString('public class MyClass extends ParentClass{}'),
          listener);
      var generatedClass = listener.generatedType as ClassModel;
      expect(generatedClass.extendedClass, equals('ParentClass'));
    });
  });

  group('Parses Apex Interfaces', () {
    test('Creates a simple interface', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('interface MyInterface{}'), listener);
      expect(listener.generatedType, isNotNull);
      expect(listener.generatedType.name, 'MyInterface');
    });

    test('Interfaces without access modifiers are private by default', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('interface MyClass{}'), listener);
      expect(listener.generatedType.isPrivate, isTrue);
    });

    test('Interfaces with private access modifiers are private', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString('private interface MyClass{}'), listener);
      expect(listener.generatedType.isPrivate, isTrue);
    });

    test('Interfaces can extend other interfaces', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString(
              'public interface MyInterface extends Interface1, Interface2{}'),
          listener);
      var generatedInterface = listener.generatedType as InterfaceModel;
      expect(generatedInterface.extendedInterfaces, isNotEmpty);
      expect(generatedInterface.extendedInterfaces[0], 'Interface1');
      expect(generatedInterface.extendedInterfaces[1], 'Interface2');
    });

    test('Does not implement any interfaces by default', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('public class MyClass{}'), listener);
      var generatedClass = listener.generatedType as ClassModel;
      expect(generatedClass.implementedInterfaces, isEmpty);
    });

    test('Can implement interfaces', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString(
              'public class MyClass implements Interface1, Interface2{}'),
          listener);
      var generatedClass = listener.generatedType as ClassModel;
      expect(generatedClass.implementedInterfaces, hasLength(2));
      expect(generatedClass.implementedInterfaces[0], 'Interface1');
      expect(generatedClass.implementedInterfaces[1], 'Interface2');
    });
  });

  group('Parses Apex enums', () {
    test('Creates a simple enum', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('enum MyEnum{}'), listener);
      expect(listener.generatedType, isNotNull);
      expect(listener.generatedType.name, 'MyEnum');
    });

    test('Supports enums with access modifiers', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString('@NamespaceAccessible public enum MyEnum{}'),
          listener);
      expect(listener.generatedType, isNotNull);
      expect(listener.generatedType.isPublic, isTrue);
      expect(listener.generatedType.isNamespaceAccessible, isTrue);
      expect(listener.generatedType.isPrivate, isFalse);
    });
  });
}
