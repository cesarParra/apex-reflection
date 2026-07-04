import 'package:apex_reflection/src/model/members.dart';
import 'package:apex_reflection/src/model/modifiers.dart';
import 'package:apex_reflection/src/model/type_references.dart';
import 'package:apex_reflection/src/model/types.dart';
import 'package:apex_reflection/src/service/parsers.dart';
import 'package:test/test.dart';

ClassMirror parseClass(String body) =>
    ApexParser.parseFromBody(body) as ClassMirror;

main() {
  group('Case insensitivity', () {
    // Apex is a case-insensitive language: every keyword must be recognized
    // regardless of casing.
    test('Keywords are recognized in any casing', () {
      final generatedClass = parseClass('''
      PUBLIC WITH SHARING ABSTRACT CLASS MyClass EXTENDS BaseClass IMPLEMENTS MyInterface {
        PRIVATE STATIC FINAL String myField = 'x';
        PROTECTED VOID doWork(FINAL Integer count) {}
        PUBLIC VIRTUAL CLASS Inner {}
        PUBLIC ENUM Season { WINTER }
        PUBLIC INTERFACE Nested { VOID run(); }
      }
      ''');
      expect(generatedClass.accessModifier, equals(AccessModifier.public));
      expect(generatedClass.sharingModifier,
          equals(SharingModifier.withSharing));
      expect(generatedClass.isAbstract, isTrue);
      expect(generatedClass.extendedClass, equals('BaseClass'));
      expect(generatedClass.implementedInterfaces.single,
          equals('MyInterface'));
      expect(generatedClass.fields.single.memberModifiers,
          contains(MemberModifier.static));
      expect(generatedClass.methods.single.typeReference.type, equals('void'));
      expect(generatedClass.classes.single.isVirtual, isTrue);
      expect(generatedClass.enums.single.values.single.name, equals('WINTER'));
      expect(generatedClass.interfaces.single.methods.single.name,
          equals('run'));
    });

    test('Collection types are classified in any casing', () {
      final generatedClass = parseClass('''
      public class MyClass {
        public LIST<String> items;
        public map<ID, Account> accountsById;
        public SeT<String> names;
      }
      ''');
      expect(generatedClass.fields[0].typeReference.type, equals('List'));
      expect(generatedClass.fields[1].typeReference.type, equals('Map'));
      expect(generatedClass.fields[2].typeReference.type, equals('Set'));
    });

    test('Trigger keywords are recognized in any casing', () {
      final trigger = TriggerParser.parseFromBody('''
      TRIGGER MyTrigger ON Account (BEFORE INSERT, AFTER UPDATE) { }
      ''');
      expect(trigger.name, equals('MyTrigger'));
      expect(trigger.events, hasLength(2));
    });
  });

  group('Inner type modifiers', () {
    test('Inner classes keep their virtual modifier', () {
      final generatedClass = parseClass('''
      public class MyClass {
        public virtual class Inner {}
      }
      ''');
      expect(generatedClass.classes.single.isVirtual, isTrue);
    });

    test('Inner classes keep their abstract modifier', () {
      final generatedClass = parseClass('''
      public class MyClass {
        private abstract class Inner {}
      }
      ''');
      expect(generatedClass.classes.single.isAbstract, isTrue);
    });
  });

  group('Field initializers', () {
    test('Generic collection literals do not split the declarator list', () {
      final generatedClass = parseClass('''
      public class MyClass {
        private Map<String, Integer> counts = new Map<String, Integer>{'a' => 1, 'b' => 2};
        private List<String> names = new List<String>{'x', 'y'};
      }
      ''');
      expect(generatedClass.fields.map((field) => field.name),
          equals(['counts', 'names']));
    });

    test('Multiple declarators with initializers each produce a field', () {
      final generatedClass = parseClass('''
      public class MyClass {
        private Integer first = 1, second = 2, third;
      }
      ''');
      expect(generatedClass.fields.map((field) => field.name),
          equals(['first', 'second', 'third']));
    });

    test('An initializer with a bare comparison parses', () {
      final generatedClass = parseClass('''
      public class MyClass {
        private Boolean isSmall = size < 10;
      }
      ''');
      expect(generatedClass.fields.single.name, equals('isSmall'));
    });
  });

  group('Type references', () {
    FieldMirror soleField(String fieldDeclaration) => parseClass('''
      public class MyClass {
        $fieldDeclaration
      }
      ''').fields.single;

    test('Whitespace is allowed between a type name and its arguments', () {
      final field = soleField('private List <String> names;');
      expect(field.typeReference, isA<ListObjectType>());
      expect((field.typeReference as ListObjectType).ofType.type,
          equals('String'));
    });

    test('Array types keep their brackets in the raw declaration', () {
      final field = soleField('private String[] names;');
      expect(field.typeReference, isA<ListObjectType>());
      expect(field.typeReference.rawDeclaration, equals('String[]'));
      expect((field.typeReference as ListObjectType).ofType.rawDeclaration,
          equals('String'));
    });

    test('Nested array types keep the brackets of each level', () {
      final field = soleField('private String[][] grid;');
      final outer = field.typeReference as ListObjectType;
      expect(outer.rawDeclaration, equals('String[][]'));
      final inner = outer.ofType as ListObjectType;
      expect(inner.rawDeclaration, equals('String[]'));
      expect(inner.ofType.rawDeclaration, equals('String'));
    });

    test('Dotted generic types are plain references of the full text', () {
      final field = soleField('private Database.Batchable<Object> batch;');
      expect(field.typeReference, isA<ReferenceObjectType>());
      expect(field.typeReference.rawDeclaration,
          equals('Database.Batchable<Object>'));
    });

    test('Namespaced types keep the namespace in the raw declaration', () {
      final field = soleField('private Schema.SObjectField target;');
      expect(field.typeReference.rawDeclaration, equals('Schema.SObjectField'));
    });
  });

  group('Annotations', () {
    test('The raw declaration preserves the source spacing', () {
      final generatedClass = parseClass('''
      public class MyClass {
        @IsTest(seeAllData = true)
        public static void run() {}
      }
      ''');
      expect(generatedClass.methods.single.annotations.single.rawDeclaration,
          equals('@IsTest(seeAllData = true)'));
    });

    test('Unquoted and space-separated element values are parsed', () {
      final generatedClass = parseClass('''
      public class MyClass {
        @InvocableVariable(Required=false Label='My Label')
        public String value;
      }
      ''');
      final elementValues =
          generatedClass.fields.single.annotations.single.elementValues!;
      expect(elementValues, hasLength(2));
      expect(elementValues[0].key, equals('Required'));
      expect(elementValues[0].value, equals('false'));
      expect(elementValues[1].key, equals('Label'));
      expect(elementValues[1].value, equals("'My Label'"));
    });

    test('Comma-separated element values are parsed', () {
      final generatedClass = parseClass('''
      public class MyClass {
        @InvocableMethod(label='Do It', description='Does the thing')
        public static void run() {}
      }
      ''');
      final elementValues =
          generatedClass.methods.single.annotations.single.elementValues!;
      expect(elementValues.map((pair) => pair.key),
          equals(['label', 'description']));
    });

    test('The annotation name ignores parameters and spacing', () {
      final generatedClass = parseClass('''
      public class MyClass {
        @IsTest (seeAllData = true)
        public static void run() {}
      }
      ''');
      final annotation = generatedClass.methods.single.annotations.single;
      expect(annotation.name, equals('istest'));
      expect(annotation.type, equals(AnnotationType.isTest));
    });
  });

  group('Doc comment selection', () {
    test('The closest of several stacked doc comments wins', () {
      final generatedClass = parseClass('''
      public class MyClass {
        /** @description Section banner */
        /** @description The real doc */
        public String value;
      }
      ''');
      expect(generatedClass.fields.single.docDescription,
          equals('The real doc'));
    });

    test('A doc comment with unbalanced braces stays inside the comment', () {
      // The `{` in the example JSON has no matching `}` inside the comment;
      // it must not swallow the comment close and overrun into the code.
      final generatedClass = parseClass('''
      public class MyClass {
        /**
         * Builds JSON shaped like:
         *   { "name": "Fred", "children": [
         */
        public void build() {}

        public void after() {}
      }
      ''');
      expect(generatedClass.methods.map((method) => method.name),
          equals(['build', 'after']));
      expect(generatedClass.methods.first.docDescription,
          startsWith('Builds JSON shaped like:'));
    });

    test('A stray doc comment before the closing brace does not fail parsing',
        () {
      final generatedClass = parseClass('''
      public class MyClass {
        public String value;
        /** Orphaned doc comment */
      }
      ''');
      expect(generatedClass.fields.single.name, equals('value'));
    });
  });

  group('Groups', () {
    test('Line-comment group markers scope the members between them', () {
      final generatedClass = parseClass('''
      public class MyClass {
        // @start-group Variables
        private String first, second;
        private Integer third;
        // @end-group
        private Boolean ungrouped;
      }
      ''');
      expect(generatedClass.fields[0].group, equals('Variables'));
      expect(generatedClass.fields[1].group, equals('Variables'));
      expect(generatedClass.fields[2].group, equals('Variables'));
      expect(generatedClass.fields[3].group, isNull);
    });

    test('Doc-comment group markers carry a name and description', () {
      final generatedClass = parseClass('''
      public class MyClass {
        /**
         * @start-group Group Name
         * @description Group Description
         */
        public String Prop1 { get; set; }
        public Integer Prop2 { get; set; }
        /** @end-group */
      }
      ''');
      expect(generatedClass.properties[0].group, equals('Group Name'));
      expect(generatedClass.properties[0].groupDescription,
          equals('Group Description'));
      expect(generatedClass.properties[1].group, equals('Group Name'));
    });

    test('A member doc comment stacked under a group marker still applies',
        () {
      final generatedClass = parseClass('''
      public class MyClass {
        /** @start-group Variables */
        /** @description The field doc */
        private String value;
        /** @end-group */
      }
      ''');
      final field = generatedClass.fields.single;
      expect(field.group, equals('Variables'));
      expect(field.docDescription, equals('The field doc'));
    });

    test('A group marker doc comment is not used as the member doc', () {
      final generatedClass = parseClass('''
      public class MyClass {
        /** @start-group Variables */
        private String value;
        /** @end-group */
      }
      ''');
      final field = generatedClass.fields.single;
      expect(field.group, equals('Variables'));
      expect(field.docDescription, isNull);
    });

    test('Methods, inner types and constructors are grouped too', () {
      final generatedClass = parseClass('''
      public class MyClass {
        // @start-group Machinery
        public MyClass() {}
        public void doWork() {}
        public class Inner {}
        // @end-group
      }
      ''');
      expect(generatedClass.constructors.single.group, equals('Machinery'));
      expect(generatedClass.methods.single.group, equals('Machinery'));
      expect(generatedClass.classes.single.group, equals('Machinery'));
    });

    test('Group names may contain spaces and special characters', () {
      final generatedClass = parseClass('''
      public class MyClass {
        // @start-group 'This is a group'
        private String value;
        // @end-group
      }
      ''');
      expect(generatedClass.fields.single.group, equals("'This is a group'"));
    });
  });
}
