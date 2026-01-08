import 'package:antlr4/antlr4.dart';
import 'package:apex_reflection/src/antlr/grammars/apex/ApexParser.dart';
import 'package:apex_reflection/src/model/type_references.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

mixin RuleContextToStringMixin on Object {
  @override
  String toString({
    Recognizer<ATNSimulator>? recog,
    List<String>? ruleNames,
    RuleContext? stop,
  }) {
    return super.toString();
  }
}

class MockTypeRefContext extends Mock
    with RuleContextToStringMixin
    implements TypeRefContext {
  final String textToReturn;

  @override
  String get text => textToReturn;

  MockTypeRefContext(this.textToReturn);
}

class MockTypeNameContext extends Mock
    with RuleContextToStringMixin
    implements TypeNameContext {}

class MockTerminalNode extends Mock
    with RuleContextToStringMixin
    implements TerminalNode {}

class MockTypeArgumentContext extends Mock
    with RuleContextToStringMixin
    implements TypeArgumentsContext {}

class MockTypeListContext extends Mock
    with RuleContextToStringMixin
    implements TypeListContext {}

main() {
  group('ReferenceObjectType tests', () {
    test('Is created when a null TypeRefContext is passed to the factory', () {
      final referenceType = ObjectTypeReference(null);

      expect(referenceType, isA<ReferenceObjectType>());
      expect(referenceType.type, 'void');
    });

    test('Can be created through the ObjectTypeReference factory', () {
      final typeRefContext = MockTypeRefContext('String');
      final typeNameContext = MockTypeNameContext();

      when(() => typeRefContext.typeName(0)).thenReturn(typeNameContext);

      when(() => typeNameContext.text).thenReturn('String');

      final referenceType = ObjectTypeReference(typeRefContext);

      expect(referenceType, isA<ReferenceObjectType>());
      expect(referenceType.type, 'String');
    });

    test('Can be created by passing the type', () {
      final referenceObjectType = ReferenceObjectType('void');

      expect(referenceObjectType.type, 'void');
    });
  });

  group('ListObjectType tests', () {
    test('Can be created through the ObjectTypeReference factory', () {
      final listTypeRefContext = MockTypeRefContext('List<String>');
      final ofStringTypeRefContext = mockStringTypeRefContext();

      final typeNameContext = MockTypeNameContext();
      final typeArgumentContext = MockTypeArgumentContext();
      final typeListContext = MockTypeListContext();

      when(() => listTypeRefContext.typeName(0)).thenReturn(typeNameContext);
      when(() => typeNameContext.LIST()).thenReturn(MockTerminalNode());
      when(() => typeNameContext.typeArguments())
          .thenReturn(typeArgumentContext);
      when(() => typeArgumentContext.typeList()).thenReturn(typeListContext);
      when(() => typeListContext.typeRef(0)).thenReturn(ofStringTypeRefContext);

      final referenceType = ObjectTypeReference(listTypeRefContext);

      expect(referenceType, isA<ListObjectType>());
      expect(referenceType.type, 'List');
      expect((referenceType as ListObjectType).ofType.type, 'String');
    });
  });

  group('SetObjectType tests', () {
    test('Can be created through the ObjectTypeReference factory', () {
      final setTypeRefContext = MockTypeRefContext('Set<String>');
      final ofStringTypeRefContext = mockStringTypeRefContext();

      final typeNameContext = MockTypeNameContext();
      final typeArgumentContext = MockTypeArgumentContext();
      final typeListContext = MockTypeListContext();

      when(() => setTypeRefContext.typeName(0)).thenReturn(typeNameContext);
      when(() => typeNameContext.SET()).thenReturn(MockTerminalNode());
      when(() => typeNameContext.typeArguments())
          .thenReturn(typeArgumentContext);
      when(() => typeArgumentContext.typeList()).thenReturn(typeListContext);
      when(() => typeListContext.typeRef(0)).thenReturn(ofStringTypeRefContext);

      final referenceType = ObjectTypeReference(setTypeRefContext);

      expect(referenceType, isA<SetObjectType>());
      expect(referenceType.type, 'Set');
      expect((referenceType as SetObjectType).ofType.type, 'String');
    });
  });

  group('MapObjectType tests', () {
    test('Can be created through the ObjectTypeReference factory', () {
      final setTypeRefContext = MockTypeRefContext('Map<String, String>');
      final keyAndValue = mockStringTypeRefContext();

      final typeNameContext = MockTypeNameContext();
      final typeArgumentContext = MockTypeArgumentContext();
      final typeListContext = MockTypeListContext();

      when(() => setTypeRefContext.typeName(0)).thenReturn(typeNameContext);
      when(() => typeNameContext.MAP()).thenReturn(MockTerminalNode());
      when(() => typeNameContext.typeArguments())
          .thenReturn(typeArgumentContext);
      when(() => typeArgumentContext.typeList()).thenReturn(typeListContext);
      when(() => typeListContext.typeRef(0)).thenReturn(keyAndValue);
      when(() => typeListContext.typeRef(1)).thenReturn(keyAndValue);

      final referenceType = ObjectTypeReference(setTypeRefContext);

      expect(referenceType, isA<MapObjectType>());
      expect(referenceType.type, 'Map');
      expect((referenceType as MapObjectType).keyType.type, 'String');
      expect(referenceType.valueType.type, 'String');
    });
  });
}

TypeRefContext mockStringTypeRefContext() {
  final ofStringTypeRefContext = MockTypeRefContext('String');
  final stringTypeNameContext = MockTypeNameContext();

  when(() => ofStringTypeRefContext.typeName(0))
      .thenReturn(stringTypeNameContext);
  when(() => stringTypeNameContext.text).thenReturn('String');

  return ofStringTypeRefContext;
}
