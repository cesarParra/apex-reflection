import 'package:test/test.dart';
import 'package:apexdocs_dart/src/model/members.dart';

void main() {
  group('Properties tests', () {
    test('Properties have a name', () {
      var property = Property(name: 'MyProperty', type: 'String');
      expect(property.name, 'MyProperty');
    });

    test('Properties have a type', () {
      var property = Property(name: 'MyProperty', type: 'String');
      expect(property.type, 'String');
    });

    test('Properties can have access modifiers', () {
      var property = Property(
          name: 'MyProp',
          type: 'String',
          accessModifiers: ['namespaceaccessible', 'public']);
      expect(property.isNamespaceAccessible, isTrue);
      expect(property.isPublic, isTrue);
    });
  });

  group('Fields tests', () {
    test('Fields have a name', () {
      var field = Field(name: 'MyField', type: 'String');
      expect(field.name, 'MyField');
    });

    test('Fields have a type', () {
      var field = Field(name: 'MyField', type: 'String');
      expect(field.type, 'String');
    });

    test('Fields can have access modifiers', () {
      var field = Field(
          name: 'MyField',
          type: 'String',
          accessModifiers: ['namespaceaccessible', 'public']);
      expect(field.isNamespaceAccessible, isTrue);
      expect(field.isPublic, isTrue);
    });
  });
}
