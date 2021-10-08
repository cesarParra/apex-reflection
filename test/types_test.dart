import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/modifiers.dart';
import 'package:test/test.dart';

import 'package:apexdocs_dart/src/model/types.dart';

void main() {
  group('Class Model Tests', () {
    test('Has a name', () {
      final expectedClassName = 'ClassName';
      final classModel = ClassMirror(name: expectedClassName);
      expect(classModel.name, expectedClassName);
    });

    test('Does not have access modifiers by default', () {
      final classModel = ClassMirror(name: 'AnyName');
      expect(classModel.accessModifier, isNull);
    });

    test('Can receive access modifiers', () {
      final classModel = ClassMirror(name: 'AnyName')
        ..accessModifier = AccessModifier.public;
      expect(classModel.accessModifier, equals(AccessModifier.public));
    });

    test('Does not have doc comments by default', () {
      final classModel = ClassMirror(name: 'AnyName');
      expect(classModel.rawDocComment, isNull);
    });

    test('Can receive doc comments', () {
      final classModel = ClassMirror(
          name: 'AnyName', rawDocComment: '@description Some description');
      expect(classModel.rawDocComment, isNotNull);
    });

    test('Does not extend another class by default', () {
      final classModel = ClassMirror(name: 'AnyName');
      expect(classModel.extendedClass, null);
    });

    test('Can extend another class', () {
      final classModel =
          ClassMirror(name: 'AnyName', extendedClass: 'ParentClass');
      expect(classModel.extendedClass, 'ParentClass');
    });

    test('Does not implement interfaces by default', () {
      final classModel = ClassMirror(name: 'AnyName');
      expect(classModel.implementedInterfaces.length, 0);
    });

    test('Can implement interfaces', () {
      final classModel = ClassMirror(
          name: 'AnyName', implementedInterfaces: ['InterfaceA', 'InterfaceB']);
      expect(classModel.implementedInterfaces.length, 2);
    });

    test('Can determine if is private', () {
      final classModel = ClassMirror(name: 'AnyName')
        ..accessModifier = AccessModifier.private;
      expect(classModel.isPrivate, isTrue);
    });

    test('Can determine if is public', () {
      final classModel = ClassMirror(name: 'AnyName')
        ..accessModifier = AccessModifier.public;
      expect(classModel.isPublic, isTrue);
    });

    test('Can determine if is global', () {
      final classModel = ClassMirror(name: 'AnyName')
        ..accessModifier = AccessModifier.global;
      expect(classModel.isGlobal, isTrue);
    });

    test('Can determine if is protected', () {
      final classModel = ClassMirror(name: 'AnyName')
        ..accessModifier = AccessModifier.protected;
      expect(classModel.isProtected, isTrue);
    });

    test('Can determine if is virtual', () {
      final classModel = ClassMirror(name: 'AnyName')
        ..classModifier = ClassModifier.virtual;
      expect(classModel.isVirtual, isTrue);
    });

    test('Can determine if is NamespaceAccessible', () {
      final classModel = ClassMirror(name: 'AnyName')
        ..annotations = [Annotation('@NamespaceAccessible')];
      expect(classModel.isNamespaceAccessible, isTrue);
    });

    test('Can determine if is test', () {
      final classModel = ClassMirror(name: 'AnyName')
        ..annotations = [Annotation('@IsTest')];
      expect(classModel.isTest, isTrue);
    });

    test('Can determine if is deprecated', () {
      final classModel = ClassMirror(name: 'AnyName')
        ..annotations = [Annotation('@Deprecated')];
      expect(classModel.isDeprecated, isTrue);
    });

    test('Does not have any properties by default', () {
      var classModel = ClassMirror(name: 'AnyName');
      expect(classModel.properties.isEmpty, isTrue);
    });

    test('Can have a list of properties', () {
      var classModel = ClassMirror(name: 'AnyName');
      var property1 = PropertyMirror(name: 'Prop1', type: 'String');
      var property2 = PropertyMirror(name: 'Prop2', type: 'String');

      classModel.addProperty(property1);
      classModel.addProperty(property2);

      expect(classModel.properties.length, equals(2));
      expect(classModel.properties.contains(property1), isTrue);
      expect(classModel.properties.contains(property2), isTrue);
    });

    test('Does not have any fields by default', () {
      var classModel = ClassMirror(name: 'AnyName');
      expect(classModel.fields.isEmpty, isTrue);
    });

    test('Can have a list of fields', () {
      var classModel = ClassMirror(name: 'AnyName');
      var field1 = FieldMirror(name: 'Field1', type: 'String');
      var field2 = FieldMirror(name: 'Field2', type: 'String');

      classModel.addField(field1);
      classModel.addField(field2);

      expect(classModel.fields.length, equals(2));
      expect(classModel.fields.contains(field1), isTrue);
      expect(classModel.fields.contains(field2), isTrue);
    });

    test('Can have a list of methods', () {
      var classModel = ClassMirror(name: 'AnyName');
      var method1 = MethodMirror(name: 'method1', type: 'String');
      var method2 = MethodMirror(name: 'method2', type: 'String');

      classModel.addMethod(method1);
      classModel.addMethod(method2);

      expect(classModel.methods.length, equals(2));
      expect(classModel.methods.contains(method1), isTrue);
      expect(classModel.methods.contains(method2), isTrue);
    });

    test('Has no constructor by default', () {
      var classModel = ClassMirror(name: 'AnyName');
      expect(classModel.constructors, isEmpty);
    });

    test('Can receive a constructor', () {
      var classModel = ClassMirror(name: 'AnyName');
      var constructor = ConstructorMirror();
      classModel.addConstructor(constructor);
      expect(classModel.constructors.length, equals(1));
      expect(classModel.constructors.first, equals(constructor));
    });

    test('Do not have inner enums by default', () {
      var classModel = ClassMirror(name: 'AnyName');
      expect(classModel.enums.length, equals(0));
    });

    test('Can have inner enums', () {
      var classModel = ClassMirror(name: 'AnyName');
      var innerEnum = EnumMirror(name: 'AnyEnumName');
      classModel.addEnum(innerEnum);
      expect(classModel.enums.length, equals(1));
      expect(classModel.enums.first, equals(innerEnum));
    });

    test('Do not have inner interfaces by default', () {
      var classModel = ClassMirror(name: 'AnyName');
      expect(classModel.interfaces.length, equals(0));
    });

    test('Can have inner interfaces', () {
      var classModel = ClassMirror(name: 'AnyName');
      var innerInterface = InterfaceMirror(name: 'AnyEnumName');
      classModel.addInterface(innerInterface);
      expect(classModel.interfaces.length, equals(1));
      expect(classModel.interfaces.first, equals(innerInterface));
    });

    test('Do not have inner classes by default', () {
      var classModel = ClassMirror(name: 'AnyName');
      expect(classModel.classes.length, equals(0));
    });

    test('Can have inner classes', () {
      var classModel = ClassMirror(name: 'AnyName');
      var innerClass = ClassMirror(name: 'InnerClass');
      classModel.addClass(innerClass);
      expect(classModel.classes.length, equals(1));
      expect(classModel.classes.first, equals(innerClass));
    });
  });

  group('Interface Model Tests', () {
    test('Has a name', () {
      final expectedClassName = 'ClassName';
      final interfaceModel = InterfaceMirror(name: expectedClassName);
      expect(interfaceModel.name, expectedClassName);
    });

    test('Does not have doc comments by default', () {
      final interfaceModel = InterfaceMirror(name: 'AnyName');
      expect(interfaceModel.rawDocComment, isNull);
    });

    test('Can receive doc comments', () {
      final interfaceModel = InterfaceMirror(
          name: 'AnyName', rawDocComment: '@description Some description');
      expect(interfaceModel.rawDocComment, isNotNull);
    });

    test('Does not have access modifiers by default', () {
      final interfaceModel = InterfaceMirror(name: 'AnyName');
      expect(interfaceModel.accessModifier, isNull);
    });

    test('Can receive access modifiers', () {
      final interfaceModel = InterfaceMirror(name: 'AnyName')
        ..accessModifier = AccessModifier.public;
      expect(interfaceModel.accessModifier, equals(AccessModifier.public));
    });

    test('Does not extend another interface by default', () {
      final interfaceModel = InterfaceMirror(name: 'AnyName');
      expect(interfaceModel.extendedInterfaces, isEmpty);
    });

    test('Can extend other interfaces', () {
      final interfaceModel = InterfaceMirror(
          name: 'AnyName', extendedInterfaces: ['Interface1', 'Interface2']);
      expect(interfaceModel.extendedInterfaces, isNotEmpty);
      expect(interfaceModel.extendedInterfaces[0], 'Interface1');
      expect(interfaceModel.extendedInterfaces[1], 'Interface2');
    });

    test('Can determine if is private', () {
      final interfaceModel = InterfaceMirror(name: 'AnyName')
        ..accessModifier = AccessModifier.private;
      expect(interfaceModel.isPrivate, isTrue);
    });

    test('Can determine if is public', () {
      final interfaceModel = InterfaceMirror(name: 'AnyName')
        ..accessModifier = AccessModifier.public;
      expect(interfaceModel.isPublic, isTrue);
    });

    test('Can determine if is global', () {
      final interfaceModel = InterfaceMirror(name: 'AnyName')
        ..accessModifier = AccessModifier.global;
      expect(interfaceModel.isGlobal, isTrue);
    });

    test('Can determine if is protected', () {
      final interfaceModel = InterfaceMirror(name: 'AnyName')
        ..accessModifier = AccessModifier.protected;
      expect(interfaceModel.isProtected, isTrue);
    });

    test('Can determine if is NamespaceAccessible', () {
      final interfaceModel = InterfaceMirror(name: 'AnyName')
        ..annotations = [Annotation('@NamespaceAccessible')];
      expect(interfaceModel.isNamespaceAccessible, isTrue);
    });

    test('Can determine if is test', () {
      final interfaceModel = InterfaceMirror(name: 'AnyName')
        ..annotations = [Annotation('IsTest')];
      expect(interfaceModel.isTest, isTrue);
    });

    test('Can determine if is deprecated', () {
      final interfaceModel = InterfaceMirror(name: 'AnyName')
        ..annotations = [Annotation('@Deprecated')];
      expect(interfaceModel.isDeprecated, isTrue);
    });

    test('Can have a list of methods', () {
      var interfaceModel = InterfaceMirror(name: 'AnyName');
      var method1 = MethodMirror(name: 'method1', type: 'String');
      var method2 = MethodMirror(name: 'method2', type: 'String');

      interfaceModel.addMethod(method1);
      interfaceModel.addMethod(method2);

      expect(interfaceModel.methods.length, equals(2));
      expect(interfaceModel.methods.contains(method1), isTrue);
      expect(interfaceModel.methods.contains(method2), isTrue);
    });
  });
}
