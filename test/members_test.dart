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
}
