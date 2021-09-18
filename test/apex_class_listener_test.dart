// Disabling null safety since this test relies on the antrl4 package
// @dart=2.10

import 'package:antlr4/antlr4.dart';
import 'package:apexdocs_dart/src/service/apex_class_listener.dart';
import 'package:test/test.dart';

import 'package:apexdocs_dart/src/service/walker.dart';

void main() {
  group('Parses Apex Classes', () {
    test('Creates a simple class', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('class MyClass{}'), listener);
      expect(listener.generatedClass, isNotNull);
      expect(listener.generatedClass.name, 'MyClass');
    });

    test('Classes without access modifiers are private by default', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('class MyClass{}'), listener);
      expect(listener.generatedClass.isPrivate, isTrue);
    });

    test('Classes with private access modifiers are private', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('private class MyClass{}'), listener);
      expect(listener.generatedClass.isPrivate, isTrue);
    });

    test('Classes with public access modifiers are public', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('public class MyClass{}'), listener);
      expect(listener.generatedClass.isPrivate, isFalse);
      expect(listener.generatedClass.isPublic, isTrue);
    });

    test('Classes with global access modifiers are global', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('global class MyClass{}'), listener);
      expect(listener.generatedClass.isPrivate, isFalse);
      expect(listener.generatedClass.isPublic, isFalse);
      expect(listener.generatedClass.isGlobal, isTrue);
    });

    test('Classes with protected access modifiers are protected', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString('protected class MyClass{}'), listener);
      expect(listener.generatedClass.isPrivate, isFalse);
      expect(listener.generatedClass.isPublic, isFalse);
      expect(listener.generatedClass.isGlobal, isFalse);
      expect(listener.generatedClass.isProtected, isTrue);
    });

    test('Classes with protected access modifiers are protected', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString('protected class MyClass{}'), listener);
      expect(listener.generatedClass.isPrivate, isFalse);
      expect(listener.generatedClass.isPublic, isFalse);
      expect(listener.generatedClass.isGlobal, isFalse);
      expect(listener.generatedClass.isProtected, isTrue);
    });

    test('Virtual classes are supported', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString('public virtual class MyClass{}'), listener);
      expect(listener.generatedClass.isVirtual, isTrue);
    });

    test('Supports the NamespaceAccessible annotation', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString(
              '@NamespaceAccessible public virtual class MyClass{}'),
          listener);
      expect(listener.generatedClass.isNamespaceAccessible, isTrue);
    });

    test('Supports the IsTest annotation', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString('@IsTest private class MyClass{}'), listener);
      expect(listener.generatedClass.isTest, isTrue);
    });

    test('Supports annotations with extra parameters', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString(
              '@IsTest(Parallel=true) private class MyClass{}'),
          listener);
      expect(listener.generatedClass.isTest, isTrue);
    });

    test('Does not extend any class by default', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('public class MyClass{}'), listener);
      expect(listener.generatedClass.extendedClass, isNull);
    });

    test('Can extend another class', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString('public class MyClass extends ParentClass{}'),
          listener);
      expect(listener.generatedClass.extendedClass, equals('ParentClass'));
    });

    test('Does not implement any interfaces by default', () {
      var listener = ApexClassListener();
      Walker.walk(InputStream.fromString('public class MyClass{}'), listener);
      expect(listener.generatedClass.implementedInterfaces, isEmpty);
    });

    test('Can implement interfaces', () {
      var listener = ApexClassListener();
      Walker.walk(
          InputStream.fromString(
              'public class MyClass implements Interface1, Interface2{}'),
          listener);
      expect(listener.generatedClass.implementedInterfaces, hasLength(2));
      expect(listener.generatedClass.implementedInterfaces[0], 'Interface1');
      expect(listener.generatedClass.implementedInterfaces[1], 'Interface2');
    });
  });
}
