import 'package:apexdocs_dart/src/model/modifiers.dart';
import 'package:apexdocs_dart/src/model/type_references.dart';
import 'package:test/test.dart';
import 'package:apexdocs_dart/src/model/members.dart';

void main() {
  group('Common tests', () {
    test('Declarations don\'t have a group by default', () {
      var property = PropertyMirror(
          name: 'MyProperty', typeReference: ReferenceObjectType('String'));
      expect(property.group, null);
    });

    test('Declarations can belong to a group', () {
      var property = PropertyMirror(
          name: 'MyProperty', typeReference: ReferenceObjectType('String'));
      property.setGroup('group name');
      expect(property.group, 'group name');
    });
  });
  group('Properties tests', () {
    test('Properties have a name', () {
      var property = PropertyMirror(
          name: 'MyProperty', typeReference: ReferenceObjectType('String'));
      expect(property.name, 'MyProperty');
    });

    test('Properties have a type', () {
      var property = PropertyMirror(
          name: 'MyProperty', typeReference: ReferenceObjectType('String'));
      expect(property.type, 'String');
    });

    test('Do not have doc comments by default', () {
      final property = PropertyMirror(
          name: 'AnyName', typeReference: ReferenceObjectType('String'));
      expect(property.rawDocComment, isNull);
    });

    test('Can receive doc comments', () {
      final property = PropertyMirror(
          name: 'AnyName',
          typeReference: ReferenceObjectType('String'),
          rawDocComment: '@description Some description');
      expect(property.rawDocComment, isNotNull);
    });

    test('Properties can have access modifiers', () {
      var property = PropertyMirror(
          name: 'MyProp', typeReference: ReferenceObjectType('String'))
        ..accessModifier = AccessModifier.public;
      expect(property.isPublic, isTrue);
    });

    test('Properties can have annotation modifiers', () {
      var property = PropertyMirror(
          name: 'MyProp', typeReference: ReferenceObjectType('String'))
        ..annotations = [Annotation('@NamespaceAccessible')];
      expect(property.isNamespaceAccessible, isTrue);
    });
  });

  group('Fields tests', () {
    test('Fields have a name', () {
      var field = FieldMirror(
          name: 'MyField', typeReference: ReferenceObjectType('String'));
      expect(field.name, 'MyField');
    });

    test('Fields have a type', () {
      var field = FieldMirror(
          name: 'MyField', typeReference: ReferenceObjectType('String'));
      expect(field.type, 'String');
    });

    test('Do not have doc comments by default', () {
      final field = FieldMirror(
          name: 'AnyName', typeReference: ReferenceObjectType('String'));
      expect(field.rawDocComment, isNull);
    });

    test('Can receive doc comments', () {
      final field = FieldMirror(
          name: 'AnyName',
          typeReference: ReferenceObjectType('String'),
          rawDocComment: '@description Some description');
      expect(field.rawDocComment, isNotNull);
    });

    test('Fields can have access modifiers', () {
      var field = FieldMirror(
          name: 'MyField', typeReference: ReferenceObjectType('String'))
        ..accessModifier = AccessModifier.public;
      expect(field.isPublic, isTrue);
    });

    test('Fields can have annotation modifiers', () {
      var field = FieldMirror(
          name: 'MyField', typeReference: ReferenceObjectType('String'))
        ..annotations = [Annotation('@NamespaceAccessible')];
      expect(field.isNamespaceAccessible, isTrue);
    });
  });

  group('Methods tests', () {
    test('Methods have a name', () {
      var method = MethodMirror(
          name: 'myMethod', typeReference: ReferenceObjectType('String'));
      expect(method.name, 'myMethod');
    });

    test('Do not have doc comments by default', () {
      final method = MethodMirror(
          name: 'AnyName', typeReference: ReferenceObjectType('String'));
      expect(method.rawDocComment, isNull);
    });

    test('Can receive doc comments', () {
      final method = MethodMirror(
          name: 'AnyName',
          typeReference: ReferenceObjectType('String'),
          rawDocComment: '@description Some description');
      expect(method.rawDocComment, isNotNull);
    });

    test('Methods without a type are void', () {
      var method = MethodMirror(name: 'myMethod');
      expect(method.isVoid, isTrue);
    });

    test('Methods have a type', () {
      var method = MethodMirror(
          name: 'myMethod', typeReference: ReferenceObjectType('String'));
      expect(method.type, 'String');
    });

    test('Methods can have access modifiers', () {
      var method = MethodMirror(
          name: 'myMethod', typeReference: ReferenceObjectType('String'))
        ..accessModifier = AccessModifier.public;
      expect(method.isPublic, isTrue);
    });

    test('Methods can have annotation modifiers', () {
      var method = MethodMirror(
          name: 'myMethod', typeReference: ReferenceObjectType('String'))
        ..annotations = [Annotation('@NamespaceAccessible')];
      expect(method.isNamespaceAccessible, isTrue);
    });

    test('Methods have no parameters by default', () {
      var method = MethodMirror(name: 'myMethod');
      expect(method.parameters.isEmpty, isTrue);
    });

    test('Can receive parameters', () {
      var method = MethodMirror(name: 'myMethod');
      var parameter = ParameterMirror(name: 'Param', type: 'String');
      method.addParameter(parameter);
      expect(method.parameters.length, equals(1));
      expect(method.parameters.first, equals(parameter));
    });
  });

  group('Parameter tests', () {
    test('Parameters have a name', () {
      var parameter = ParameterMirror(name: 'Param', type: 'String');
      expect(parameter.name, 'Param');
    });

    test('Parameters have a type', () {
      var parameter = ParameterMirror(name: 'Param', type: 'String');
      expect(parameter.type, 'String');
    });
  });

  group('Constructor tests', () {
    test('Can have access modifiers', () {
      var constructor = ConstructorMirror()
        ..accessModifier = AccessModifier.public;
      expect(constructor.isPublic, isTrue);
    });

    test('Can have annotation modifiers', () {
      var constructor = ConstructorMirror()
        ..annotations = [Annotation('@NamespaceAccessible')];
      expect(constructor.isNamespaceAccessible, isTrue);
    });

    test('Do not have doc comments by default', () {
      final constructor = ConstructorMirror();
      expect(constructor.rawDocComment, isNull);
    });

    test('Can receive doc comments', () {
      final constructor =
          ConstructorMirror(rawDocComment: '@description Some description');
      expect(constructor.rawDocComment, isNotNull);
    });

    test('Have no parameters by default', () {
      var constructor = ConstructorMirror();
      expect(constructor.parameters.isEmpty, isTrue);
    });

    test('Can receive parameters', () {
      var constructor = ConstructorMirror();
      var parameter = ParameterMirror(name: 'Param', type: 'String');
      constructor.addParameter(parameter);
      expect(constructor.parameters.length, equals(1));
      expect(constructor.parameters.first, equals(parameter));
    });
  });
}
