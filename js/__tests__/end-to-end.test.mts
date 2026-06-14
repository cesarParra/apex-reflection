import { describe, test } from "node:test";
import assert from "node:assert/strict";

import { reflect, reflectTrigger } from "../dist/index.mjs";
import type {
  ClassMirror,
  EnumMirror,
  InterfaceMirror,
  ReflectionResult,
} from "../dist/index.mjs";

type ReflectionStrategy =
  | ((body: string) => Promise<ReflectionResult>)
  | ((body: string) => ReflectionResult);

const reflectionStrategies: ReflectionStrategy[] = [reflect];

async function runAllStrategies(
  testBody: (strategy: ReflectionStrategy) => Promise<void>,
) {
  for (const strategy of reflectionStrategies) {
    await testBody(strategy);
  }
}

describe("Enum Reflection", () => {
  test("Simple, single line declaration", async () => {
    const testBody = async (strategy: ReflectionStrategy) => {
      const enumBody = "enum MyEnumName {}";
      const result = (await strategy(enumBody)).typeMirror;
      assert.equal(result?.type_name, "enum");
      assert.equal(result?.name, "MyEnumName");
    };

    await runAllStrategies(testBody);
  });

  test("Multi-line declaration with values", async () => {
    const testBody = async (strategy: ReflectionStrategy) => {
      const enumBody = `
    enum MyEnumName {
      VALUE_1,
      VALUE2
    }
    `;
      const result = (await strategy(enumBody)).typeMirror;
      assert.equal(result.type_name, "enum");
      assert.equal(result.name, "MyEnumName");
    };

    await runAllStrategies(testBody);
  });

  test("With doc comments", async () => {
    const testBody = async (strategy: ReflectionStrategy) => {
      const enumBody = `
    /**
     * My enum description
     */
    enum MyEnumName {
      VALUE_1,
      VALUE2
    }
    `;
      const result = (await strategy(enumBody)).typeMirror;
      assert.equal(result.docComment.description, "My enum description");
    };

    await runAllStrategies(testBody);
  });

  test("Enums can have values", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const enumBody = `
    enum MyEnumName {
      VALUE_1,
      VALUE2
    }
    `;
      const result = (await strategy(enumBody)).typeMirror as EnumMirror;
      assert.equal(result.values.length, 2);
      assert.equal(result.values[0].name, "VALUE_1");
      assert.equal(result.values[1].name, "VALUE2");
    }

    await runAllStrategies(testBody);
  });

  test("Enum values can have descriptions", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const enumBody = `
    enum MyEnumName {
      /**
       * Value 1 description
       */
      VALUE_1,
      VALUE2
    }
    `;
      const result = (await strategy(enumBody)).typeMirror as EnumMirror;
      assert.equal(result.values.length, 2);
      assert.equal(
        result.values[0].docComment.description,
        "Value 1 description",
      );
    }

    await runAllStrategies(testBody);
  });
});

describe("Interface Reflection", () => {
  test("Single line interface definition", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const interfaceBody = "interface MyInterface{}";
      const result = (await strategy(interfaceBody)).typeMirror;
      assert.equal(result.type_name, "interface");
      assert.equal(result.name, "MyInterface");
    }

    await runAllStrategies(testBody);
  });

  test("When no access modifier is defined it is private", async () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = "interface MyInterface{}";
      const result = (await reflect(interfaceBody)).typeMirror;
      assert.equal(result.access_modifier, "private");
    }

    await runAllStrategies(testBody);
  });

  test("Can have access modifier", async () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = "public interface MyInterface{}";
      const result = (await reflect(interfaceBody)).typeMirror;
      assert.equal(result.access_modifier, "public");
    }

    await runAllStrategies(testBody);
  });

  test("Can have a sharing modifier", async () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = "public with sharing interface MyInterface{}";
      const result = (await reflect(interfaceBody))
        .typeMirror as InterfaceMirror;
      assert.equal(result.sharingModifier, "withSharing");
    }

    await runAllStrategies(testBody);
  });

  test("Can have methods", async () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = `
      public with sharing interface MyInterface{
        void method1();
      }
    `;
      const result = (await reflect(interfaceBody))
        .typeMirror as InterfaceMirror;
      assert.equal(result.methods.length, 1);
      assert.equal(result.methods[0].name, "method1");
    }

    await runAllStrategies(testBody);
  });

  test("Can have extend other interfaces", async () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = `
      public with sharing interface MyInterface extends Interface2 {
        void method1();
      }
    `;
      const result = (await reflect(interfaceBody))
        .typeMirror as InterfaceMirror;
      assert.equal(result.extended_interfaces.length, 1);
      assert.equal(result.extended_interfaces[0], "Interface2");
    }

    await runAllStrategies(testBody);
  });

  test("Can have annotations", async () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = `
      @NamespaceAccessible
      public with sharing interface MyInterface{
        void method1();
      }
    `;
      const result = (await reflect(interfaceBody))
        .typeMirror as InterfaceMirror;
      assert.equal(result.annotations.length, 1);
      assert.equal(result.annotations[0].name, "namespaceaccessible");
    }

    await runAllStrategies(testBody);
  });

  test("Methods can have their own annotations", async () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = `
      @NamespaceAccessible
      public with sharing interface MyInterface{
        @Deprecated
        void method1();
      }
    `;
      const result = (await reflect(interfaceBody))
        .typeMirror as InterfaceMirror;
      assert.equal(result.methods[0].annotations.length, 2);

      const annotationNames = result.methods[0].annotations.map((a) => a.name);
      assert.ok(annotationNames.includes("namespaceaccessible"));
      assert.ok(annotationNames.includes("deprecated"));
    }

    await runAllStrategies(testBody);
  });

  test("Can contain mermaid diagrams", async () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = `
        public interface MyInterface {
          /**
            * @mermaid
            * \`\`\`mermaid
            * graph TD
            *   A[Square Rect] -- Link text --> B((Circle))
            *   A --> C(Round Rect)
            *   B --> D{Rhombus}
            *   C --> D
            * \`\`\`
            */
          void myMethod();
        }
    `;
      const fullResult = await reflect(interfaceBody);
      const result = fullResult.typeMirror as InterfaceMirror;

      assert.notEqual(result.methods[0].docComment.annotations, undefined);
      const mermaidAnnotation = result.methods[0].docComment.annotations?.find(
        (a) => a.name === "mermaid",
      );
      assert.notEqual(mermaidAnnotation, undefined);
      assert.ok(mermaidAnnotation?.bodyLines.includes("```mermaid"));
      assert.ok(mermaidAnnotation?.bodyLines.includes("graph TD"));
    }

    await runAllStrategies(testBody);
  });
});

describe("Class reflection", () => {
  test("Single line class definition", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = "class MyClass{}";
      const result = (await strategy(classBody)).typeMirror;
      assert.equal(result.type_name, "class");
      assert.equal(result.name, "MyClass");
    }

    await runAllStrategies(testBody);
  });

  test("When no access modifier is defined it is private", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = "class MyClass{}";
      const result = (await strategy(classBody)).typeMirror;
      assert.equal(result.access_modifier, "private");
    }

    await runAllStrategies(testBody);
  });

  test("Can have access modifier", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const interfaceBody = "public class MyClass{}";
      const result = (await strategy(interfaceBody)).typeMirror;
      assert.equal(result.access_modifier, "public");
    }

    await runAllStrategies(testBody);
  });

  test("Can have a sharing modifier", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = "public with sharing class MyClass{}";
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.sharingModifier, "withSharing");
    }

    await runAllStrategies(testBody);
  });

  test("Can have a class modifier", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = "public with sharing abstract class MyClass{}";
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.classModifier, "abstract");
    }

    await runAllStrategies(testBody);
  });

  test("Can extend a class", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = "public with sharing class MyClass extends Class2 {}";
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.extended_class, "Class2");
    }

    await runAllStrategies(testBody);
  });

  test("Can implement interfaces", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody =
        "public with sharing class MyClass implements Interface1, Interface2 {}";
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.implemented_interfaces.length, 2);
      assert.equal(result.implemented_interfaces[0], "Interface1");
      assert.equal(result.implemented_interfaces[1], "Interface2");
    }

    await runAllStrategies(testBody);
  });

  test("Can have properties", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = `
    public with sharing class MyClass {
      public String Prop1 { get; set; }
      public Integer Prop2 { get; set; }
    }
    `;
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.properties.length, 2);
      assert.equal(result.properties[0].typeReference.type, "String");
      assert.equal(result.properties[0].name, "Prop1");
      assert.equal(result.properties[1].typeReference.type, "Integer");
      assert.equal(result.properties[1].name, "Prop2");
    }

    await runAllStrategies(testBody);
  });

  test("Can have fields", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = `
    public with sharing class MyClass {
      private String var1, var2;
    }
    `;
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.fields.length, 2);
      assert.equal(result.fields[0].typeReference.type, "String");
      assert.equal(result.fields[1].typeReference.type, "String");
      assert.equal(result.fields[0].name, "var1");
      assert.equal(result.fields[1].name, "var2");
    }

    await runAllStrategies(testBody);
  });

  test("Can have transient fields", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = `
    public with sharing class MyClass {
      transient String var1;
    }
    `;
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.fields.length, 1);
      assert.equal(result.fields[0].typeReference.type, "String");
      assert.equal(result.fields[0].name, "var1");
      assert.ok(result.fields[0].memberModifiers.includes("transient"));
    }

    await runAllStrategies(testBody);
  });

  test("Can have annotations with parameters", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = `
    @IsTest(SeeAllData=true)
    /** Some docs */
    public with sharing class MyClass {}
    `;
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.annotations.length, 1);
      assert.equal(result.annotations[0].elementValues.length, 1);
      assert.equal(result.annotations[0].elementValues[0].key, "SeeAllData");
      assert.equal(result.annotations[0].elementValues[0].value, "true");
    }

    await runAllStrategies(testBody);
  });

  test("Can have annotations with parameters after the docs", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = `
    /**
     * @description Account related operations.
     */
    @RestResource(urlMapping='/Account/*')
    global with sharing class SampleRestResource {}
    `;
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.annotations.length, 1);
      assert.equal(result.annotations[0].elementValues.length, 1);
      assert.equal(result.annotations[0].elementValues[0].key, "urlMapping");
      assert.equal(
        result.annotations[0].elementValues[0].value,
        "'/Account/*'",
      );
    }

    await runAllStrategies(testBody);
  });

  test("Can have constructors", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = `
    public with sharing class MyClass {
      public MyClass() {}
      public MyClass(String var1) {}
    }
    `;
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.constructors.length, 2);
      assert.equal(result.constructors[0].parameters.length, 0);
      assert.equal(result.constructors[0].access_modifier, "public");
      assert.equal(result.constructors[1].parameters.length, 1);
      assert.equal(result.constructors[1].parameters[0].name, "var1");
      assert.equal(
        result.constructors[1].parameters[0].typeReference.type,
        "String",
      );
      assert.equal(result.constructors[1].access_modifier, "public");
    }

    await runAllStrategies(testBody);
  });

  test("Can have methods", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = `
    public with sharing class MyClass {
      public static String method1() {
        return '';
      }

      private void method2(){}
    }
    `;
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.methods.length, 2);
      assert.equal(result.methods[0].memberModifiers.length, 1);
      assert.equal(result.methods[0].memberModifiers[0], "static");
      assert.equal(result.methods[0].access_modifier, "public");
      assert.equal(result.methods[0].typeReference.type, "String");
      assert.equal(result.methods[0].name, "method1");

      assert.equal(result.methods[1].memberModifiers.length, 0);
      assert.equal(result.methods[1].access_modifier, "private");
      assert.equal(result.methods[1].typeReference.type, "void");
      assert.equal(result.methods[1].name, "method2");
    }

    await runAllStrategies(testBody);
  });

  test("Can have virtual methods", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = `
    public with sharing class MyClass {
      public virtual String method1() {
        return null ?? '';
      }
    }
    `;
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.methods[0].memberModifiers[0], "virtual");
    }

    await runAllStrategies(testBody);
  });

  test("Can have abstract methods", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = `
    public with sharing abstract class MyClass {
      public abstract String method1() {
        return null ?? '';
      }
    }
    `;
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.methods[0].memberModifiers[0], "abstract");
    }

    await runAllStrategies(testBody);
  });

  test("Can have inner enums", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = `
    public with sharing class MyClass {
      public enum MyEnum {}
    }
    `;
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.enums.length, 1);
      assert.equal(result.enums[0].access_modifier, "public");
      assert.equal(result.enums[0].name, "MyEnum");
    }

    await runAllStrategies(testBody);
  });

  test("Can have inner interfaces", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = `
    public with sharing class MyClass {
      public interface MyInterface {
        void method1();
        void method2();
      }
    }
    `;
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.interfaces.length, 1);
      assert.equal(result.interfaces[0].name, "MyInterface");
      assert.equal(result.interfaces[0].methods.length, 2);
    }

    await runAllStrategies(testBody);
  });

  test("Can have inner classes", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = `
    public with sharing class MyClass {
      public class MyClass {
        public void method1();
        public void method2();
      }
    }
    `;
      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.classes.length, 1);
      assert.equal(result.classes[0].name, "MyClass");
      assert.equal(result.classes[0].methods.length, 2);
    }

    await runAllStrategies(testBody);
  });

  test("Can have members in groups", async () => {
    async function testBody(strategy: ReflectionStrategy) {
      const classBody = `
    public with sharing class MyClass {
      /**
       * @start-group Group Name
       * @description Group Description
       */
      public String Prop1 { get; set; }
      public Integer Prop2 { get; set; }
      /** @end-group */
    }
    `;

      const result = (await strategy(classBody)).typeMirror as ClassMirror;
      assert.equal(result.properties.length, 2);
      assert.equal(result.properties[0].typeReference.type, "String");
      assert.equal(result.properties[0].name, "Prop1");
      assert.equal(result.properties[0].group, "Group Name");
      assert.equal(result.properties[0].groupDescription, "Group Description");
      assert.equal(result.properties[1].typeReference.type, "Integer");
      assert.equal(result.properties[1].name, "Prop2");
      assert.equal(result.properties[1].group, "Group Name");
      assert.equal(result.properties[1].groupDescription, "Group Description");
    }

    await runAllStrategies(testBody);
  });

  test("Supports block style apex docs", async () => {
    async function testBody(reflect: ReflectionStrategy) {
      const classBody = `/**********************************************************
    @description Uses a block style apex doc
@group           Main
@test-class      {@link SampleClass}
    ***********************************************************/
    public class GroupedClass {

    }
    `;

      const result = await reflect(classBody);
      assert.equal(result.error, null);

      const typeResult = result.typeMirror as ClassMirror;
      assert.equal(typeResult.name, "GroupedClass");
    }

    await runAllStrategies(testBody);
  });

  test("supports grouping", async () => {
    async function testBody(reflect: ReflectionStrategy) {
      const classBody = `
          public class MyClass {
        public void myMethod() {
          List<Object> groupedResults =
            [SELECT LeadSource, Rating,
              GROUPING(LeadSource) grpLS, GROUPING(Rating) grpRating,
              COUNT(Name) cnt
              FROM Lead
              GROUP BY ROLLUP(LeadSource, Rating)];
        }
      }
    `;

      const result = await reflect(classBody);
      assert.equal(result.error, null);
    }

    await runAllStrategies(testBody);
  });

  test("supports @example tags with code blocks", async () => {
    async function testBody(reflect: ReflectionStrategy) {
      const classBody = `
      public class MyClass {
        /**
         * This method does something.
         *
         * @example
         * {@code
         * MyClass myClass = new MyClass();
         * myClass.myMethod();
         * }
         */
        public void myMethod() {
          // method implementation
        }
      }
    `;

      const result = await reflect(classBody);
      assert.equal(result.error, null);

      const typeResult = result.typeMirror as ClassMirror;
      assert.equal(typeResult.name, "MyClass");
      assert.notEqual(typeResult.methods[0].docComment.exampleAnnotation, null);
      assert.ok(
        !typeResult.methods[0].docComment.exampleAnnotation?.bodyLines.includes(
          "@{code",
        ),
      );
      assert.ok(
        typeResult.methods[0].docComment.exampleAnnotation?.bodyLines.includes(
          "```",
        ),
      );
      assert.ok(
        typeResult.methods[0].docComment.exampleAnnotation?.bodyLines.includes(
          "myClass.myMethod();",
        ),
      );
    }

    await runAllStrategies(testBody);
  });
});

describe("Trigger reflection", () => {
  test("Reflects a trigger", async () => {
    const triggerBody = `
  trigger MyTrigger on Account (before insert) { }
  `;
    const result = await reflectTrigger(triggerBody);
    assert.equal(result.triggerMirror?.name, "MyTrigger");
    assert.equal(result.triggerMirror?.object_name, "Account");
    assert.deepEqual(result.triggerMirror?.events, ["beforeinsert"]);
  });

  test("Reflects a trigger with multiple events", async () => {
    const triggerBody = `
  trigger MyTrigger on Account (before insert, after update) { }
  `;
    const result = await reflectTrigger(triggerBody);
    assert.deepEqual(result.triggerMirror?.events, [
      "beforeinsert",
      "afterupdate",
    ]);
  });

  test("Reflects trigger with doc comments", async () => {
    const triggerBody = `
  /**
    * My trigger description
    */
  trigger MyTrigger on Account (before insert) { }
  `;
    const result = await reflectTrigger(triggerBody);
    assert.equal(
      result.triggerMirror?.docComment?.description,
      "My trigger description",
    );
  });

  test("Reflects trigger with bulk keyword", async () => {
    const triggerBody = `
  trigger MyTrigger on Account bulk (before insert) { }
  `;
    const result = await reflectTrigger(triggerBody);
    assert.equal(result.triggerMirror?.name, "MyTrigger");
    assert.equal(result.triggerMirror?.object_name, "Account");
    assert.deepEqual(result.triggerMirror?.events, ["beforeinsert"]);
  });

  test("Reflects trigger with bulk keyword and multiple events", async () => {
    const triggerBody = `
  trigger Account_trigger_vod on Account bulk (before delete, after delete) { }
  `;
    const result = await reflectTrigger(triggerBody);
    assert.equal(result.triggerMirror?.name, "Account_trigger_vod");
    assert.equal(result.triggerMirror?.object_name, "Account");
    assert.deepEqual(result.triggerMirror?.events, [
      "beforedelete",
      "afterdelete",
    ]);
  });

  test("Reflects trigger with bulk keyword and doc comments", async () => {
    const triggerBody = `
  /**
    * This is a bulk trigger
    */
  trigger MyTrigger on Account bulk (before insert, after update) { }
  `;
    const result = await reflectTrigger(triggerBody);
    assert.equal(result.triggerMirror?.name, "MyTrigger");
    assert.deepEqual(result.triggerMirror?.events, [
      "beforeinsert",
      "afterupdate",
    ]);
    assert.equal(
      result.triggerMirror?.docComment?.description,
      "This is a bulk trigger",
    );
  });
});
