import 'package:apex_reflection/apex_reflection.dart';
import 'package:test/test.dart';

void main() {
  group('Anonymous Apex', () {
    test('Can parse an empty anonymous block without error', () {
      final result = Reflection.reflectAnonymous('');

      expect(result.error, isNull);
      expect(result.anonymousBlock, isNotNull);
    });

    test('Extracts a single variable declaration', () {
      final result = Reflection.reflectAnonymous('Integer x = 5;');

      expect(result.error, isNull);
      expect(result.anonymousBlock!.variables, hasLength(1));
      expect(result.anonymousBlock!.variables.first.name, equals('x'));
      expect(result.anonymousBlock!.variables.first.typeReference.rawDeclaration,
          equals('Integer'));
    });

    test('Extracts multiple variables declared in one statement', () {
      final result = Reflection.reflectAnonymous('Integer x = 1, y = 2;');

      expect(result.error, isNull);
      expect(result.anonymousBlock!.variables, hasLength(2));
      expect(result.anonymousBlock!.variables[0].name, equals('x'));
      expect(result.anonymousBlock!.variables[1].name, equals('y'));
      expect(result.anonymousBlock!.variables[0].typeReference.rawDeclaration,
          equals('Integer'));
      expect(result.anonymousBlock!.variables[1].typeReference.rawDeclaration,
          equals('Integer'));
    });

    test('Extracts variables across multiple statements', () {
      final result = Reflection.reflectAnonymous('''
        Integer x = 1;
        String s = 'hello';
      ''');

      expect(result.error, isNull);
      expect(result.anonymousBlock!.variables, hasLength(2));
      expect(result.anonymousBlock!.variables[0].name, equals('x'));
      expect(result.anonymousBlock!.variables[1].name, equals('s'));
    });

    test('Extracts collection type variables', () {
      final result =
          Reflection.reflectAnonymous('List<String> items = new List<String>();');

      expect(result.error, isNull);
      expect(result.anonymousBlock!.variables, hasLength(1));
      expect(result.anonymousBlock!.variables.first.name, equals('items'));
      expect(result.anonymousBlock!.variables.first.typeReference.type,
          equals('List'));
    });

    test('Returns a parsing error for invalid Apex syntax', () {
      final result = Reflection.reflectAnonymous('this is not valid apex !!!');

      expect(result.error, isNotNull);
      expect(result.anonymousBlock, isNull);
    });

    test('Can parse a class declaration inside anonymous apex', () {
      final result = Reflection.reflectAnonymous('''
        public class MyHelper {
          public static void doWork() { }
        }
      ''');

      expect(result.error, isNull);
      expect(result.anonymousBlock!.classes, hasLength(1));
      expect(result.anonymousBlock!.classes.first.name, equals('MyHelper'));
    });

    test('Captures members of a class declared inside anonymous apex', () {
      final result = Reflection.reflectAnonymous('''
        public class MyHelper {
          public Integer count;
          public static void doWork() { }
        }
      ''');

      expect(result.error, isNull);
      final cls = result.anonymousBlock!.classes.first;
      expect(cls.fields, hasLength(1));
      expect(cls.fields.first.name, equals('count'));
      expect(cls.methods, hasLength(1));
      expect(cls.methods.first.name, equals('doWork'));
    });

    test('Can parse an enum declaration inside anonymous apex', () {
      final result = Reflection.reflectAnonymous('''
        public enum Season { SPRING, SUMMER, AUTUMN, WINTER }
      ''');

      expect(result.error, isNull);
      expect(result.anonymousBlock!.enums, hasLength(1));
      expect(result.anonymousBlock!.enums.first.name, equals('Season'));
      expect(result.anonymousBlock!.enums.first.values.map((v) => v.name),
          containsAll(['SPRING', 'SUMMER', 'AUTUMN', 'WINTER']));
    });

    test('Can parse an interface declaration inside anonymous apex', () {
      final result = Reflection.reflectAnonymous('''
        public interface Runnable {
          void run();
        }
      ''');

      expect(result.error, isNull);
      expect(result.anonymousBlock!.interfaces, hasLength(1));
      expect(result.anonymousBlock!.interfaces.first.name, equals('Runnable'));
      expect(result.anonymousBlock!.interfaces.first.methods.first.name,
          equals('run'));
    });

    test('Can parse a method declaration inside anonymous apex', () {
      final result = Reflection.reflectAnonymous('''
        private static Boolean isActive(Id recordId) {
          return true;
        }
      ''');

      expect(result.error, isNull);
      expect(result.anonymousBlock!.methods, hasLength(1));
      expect(result.anonymousBlock!.methods.first.name, equals('isActive'));
      expect(result.anonymousBlock!.methods.first.parameters, hasLength(1));
      expect(result.anonymousBlock!.methods.first.parameters.first.name,
          equals('recordId'));
    });

    test('Can parse free-floating statements without error', () {
      final result = Reflection.reflectAnonymous('''
        System.debug('hello');
        insert new Account(Name = 'Test');
        for (Integer i = 0; i < 10; i++) {
          System.debug(i);
        }
      ''');

      expect(result.error, isNull);
      expect(result.anonymousBlock, isNotNull);
    });

    test('Can mix variables, declarations, and statements', () {
      final result = Reflection.reflectAnonymous('''
        Integer count = 0;
        public class Counter {
          public Integer value = 0;
        }
        count++;
        System.debug(count);
      ''');

      expect(result.error, isNull);
      expect(result.anonymousBlock!.variables, hasLength(1));
      expect(result.anonymousBlock!.variables.first.name, equals('count'));
      expect(result.anonymousBlock!.classes, hasLength(1));
      expect(result.anonymousBlock!.classes.first.name, equals('Counter'));
    });
  });
}
