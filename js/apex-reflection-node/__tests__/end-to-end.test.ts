import {
  ClassMirror,
  EnumMirror,
  InterfaceMirror,
  reflect,
  reflectAsync,
  ReflectionResult,
} from "../index";
import {run} from "jest";

type ReflectionStrategy =
  | ((body: string) => Promise<ReflectionResult>)
  | ((body: string) => ReflectionResult);

const reflectionStrategies: ReflectionStrategy[] = [reflect, reflectAsync];

function runAllStrategies(testBody: (strategy: ReflectionStrategy) => void) {
  for (const strategy of reflectionStrategies) {
    testBody(strategy);
  }
}

describe("Enum Reflection", () => {
  test("Simple, single line declaration", () => {
    const testBody = async (strategy: ReflectionStrategy) => {
      const enumBody = "enum MyEnumName {}";
      const result = (await strategy(enumBody)).typeMirror;
      expect(result?.type_name).toBe("enum");
      expect(result?.name).toBe("MyEnumName");
    };

    runAllStrategies(testBody);
  });

  test("Multi-line declaration with values", () => {
    const testBody = async (strategy: ReflectionStrategy) => {
      const enumBody = `
    enum MyEnumName {
      VALUE_1,
      VALUE2
    }
    `;
      const result = (await strategy(enumBody)).typeMirror;
      expect(result.type_name).toBe("enum");
      expect(result.name).toBe("MyEnumName");
    };

    runAllStrategies(testBody);
  });

  test("With doc comments", () => {
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
      expect(result.docComment.description).toBe("My enum description");
    };

    runAllStrategies(testBody);
  });

  test("Enums can have values", () => {
    async function testBody(strategy: ReflectionStrategy) {
      const enumBody = `
    enum MyEnumName {
      VALUE_1,
      VALUE2
    }
    `;
      const result = (await strategy(enumBody)).typeMirror as EnumMirror;
      expect(result.values.length).toBe(2);
      expect(result.values[0].name).toBe("VALUE_1");
      expect(result.values[1].name).toBe("VALUE2");
    }

    runAllStrategies(testBody);
  });

  test("Enum values can have descriptions", () => {
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
      expect(result.values.length).toBe(2);
      expect(result.values[0].docComment.description).toBe("Value 1 description");
    }

    runAllStrategies(testBody);
  });
});

describe("Interface Reflection", () => {
  test("Single line interface definition", () => {
    async function testBody(strategy: ReflectionStrategy) {
      const interfaceBody = "interface MyInterface{}";
      const result = (await strategy(interfaceBody)).typeMirror;
      expect(result.type_name).toBe("interface");
      expect(result.name).toBe("MyInterface");
    }

    runAllStrategies(testBody);
  });

  test("When no access modifier is defined it is private", () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = "interface MyInterface{}";
      const result = (await reflect(interfaceBody)).typeMirror;
      expect(result.access_modifier).toBe("private");
    }

    runAllStrategies(testBody);
  });

  test("Can have access modifier", () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = "public interface MyInterface{}";
      const result = (await reflect(interfaceBody)).typeMirror;
      expect(result.access_modifier).toBe("public");
    }

    runAllStrategies(testBody);
  });

  test("Can have a sharing modifier", () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = "public with sharing interface MyInterface{}";
      const result = (await reflect(interfaceBody)).typeMirror as InterfaceMirror;
      expect(result.sharingModifier).toBe("withSharing");
    }

    runAllStrategies(testBody);
  });

  test("Can have methods", () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = `
      public with sharing interface MyInterface{
        void method1();
      }
    `;
      const result = (await reflect(interfaceBody)).typeMirror as InterfaceMirror;
      expect(result.methods.length).toBe(1);
      expect(result.methods[0].name).toBe("method1");
    }

    runAllStrategies(testBody);
  });

  test("Can have extend other interfaces", () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = `
      public with sharing interface MyInterface extends Interface2 {
        void method1();
      }
    `;
      const result = (await reflect(interfaceBody)).typeMirror as InterfaceMirror;
      expect(result.extended_interfaces.length).toBe(1);
      expect(result.extended_interfaces[0]).toBe("Interface2");
    }

    runAllStrategies(testBody);
  });

  test("Can have annotations", () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = `
      @NamespaceAccessible
      public with sharing interface MyInterface{
        void method1();
      }
    `;
      const result = (await reflect(interfaceBody)).typeMirror as InterfaceMirror;
      expect(result.annotations.length).toBe(1);
      expect(result.annotations[0].name).toBe("namespaceaccessible");
    }

    runAllStrategies(testBody);
  });

  test("Methods can have their own annotations", () => {
    async function testBody(reflect: ReflectionStrategy) {
      const interfaceBody = `
      @NamespaceAccessible
      public with sharing interface MyInterface{
        @Deprecated
        void method1();
      }
    `;
      const result = (await reflect(interfaceBody)).typeMirror as InterfaceMirror;
      expect(result.methods[0].annotations.length).toBe(2);

      const annotationNames = result.methods[0].annotations.map((a) => a.name);
      expect(annotationNames).toContain("namespaceaccessible");
      expect(annotationNames).toContain("deprecated");
    }

    runAllStrategies(testBody);
  });
});

describe("Class reflection", () => {
  test("Single line class definition", () => {
    const classBody = "class MyClass{}";
    const result = reflect(classBody).typeMirror;
    expect(result.type_name).toBe("class");
    expect(result.name).toBe("MyClass");
  });

  test("When no access modifier is defined it is private", () => {
    const classBody = "class MyClass{}";
    const result = reflect(classBody).typeMirror;
    expect(result.access_modifier).toBe("private");
  });

  test("Can have access modifier", () => {
    const interfaceBody = "public class MyClass{}";
    const result = reflect(interfaceBody).typeMirror;
    expect(result.access_modifier).toBe("public");
  });

  test("Can have a sharing modifier", () => {
    const classBody = "public with sharing class MyClass{}";
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.sharingModifier).toBe("withSharing");
  });

  test("Can have a class modifier", () => {
    const classBody = "public with sharing abstract class MyClass{}";
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.classModifier).toBe("abstract");
  });

  test("Can extend a class", () => {
    const classBody = "public with sharing class MyClass extends Class2 {}";
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.extended_class).toBe("Class2");
  });

  test("Can implement interfaces", () => {
    const classBody =
      "public with sharing class MyClass implements Interface1, Interface2 {}";
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.implemented_interfaces.length).toBe(2);
    expect(result.implemented_interfaces[0]).toBe("Interface1");
    expect(result.implemented_interfaces[1]).toBe("Interface2");
  });

  test("Can have properties", () => {
    const classBody = `
    public with sharing class MyClass {
      public String Prop1 { get; set; }
      public Integer Prop2 { get; set; }
    }
    `;
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.properties.length).toBe(2);
    expect(result.properties[0].typeReference.type).toBe("String");
    expect(result.properties[0].name).toBe("Prop1");
    expect(result.properties[1].typeReference.type).toBe("Integer");
    expect(result.properties[1].name).toBe("Prop2");
  });

  test("Can have fields", () => {
    const classBody = `
    public with sharing class MyClass {
      private String var1, var2;
    }
    `;
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.fields.length).toBe(2);
    expect(result.fields[0].typeReference.type).toBe("String");
    expect(result.fields[1].typeReference.type).toBe("String");
    expect(result.fields[0].name).toBe("var1");
    expect(result.fields[1].name).toBe("var2");
  });

  test("Can have transient fields", () => {
    const classBody = `
    public with sharing class MyClass {
      transient String var1;
    }
    `;
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.fields.length).toBe(1);
    expect(result.fields[0].typeReference.type).toBe("String");
    expect(result.fields[0].name).toBe("var1");
    expect(result.fields[0].memberModifiers).toContain("transient");
  });

  test("Can have annotations with parameters", () => {
    const classBody = `
    @IsTest(SeeAllData=true)
    /** Some docs */
    public with sharing class MyClass {}
    `;
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.annotations.length).toBe(1);
    expect(result.annotations[0].elementValues.length).toBe(1);
    expect(result.annotations[0].elementValues[0].key).toBe("SeeAllData");
    expect(result.annotations[0].elementValues[0].value).toBe("true");
  });

  test("Can have annotations with parameters after the docs", () => {
    const classBody = `
    /**
     * @description Account related operations.
     */
    @RestResource(urlMapping='/Account/*')
    global with sharing class SampleRestResource {}
    `;
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.annotations.length).toBe(1);
    expect(result.annotations[0].elementValues.length).toBe(1);
    expect(result.annotations[0].elementValues[0].key).toBe("urlMapping");
    expect(result.annotations[0].elementValues[0].value).toBe("'/Account/*'");
  });

  test("Can have constructors", () => {
    const classBody = `
    public with sharing class MyClass {
      public MyClass() {}
      public MyClass(String var1) {}
    }
    `;
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.constructors.length).toBe(2);
    expect(result.constructors[0].parameters.length).toBe(0);
    expect(result.constructors[0].access_modifier).toBe("public");
    expect(result.constructors[1].parameters.length).toBe(1);
    expect(result.constructors[1].parameters[0].name).toBe("var1");
    expect(result.constructors[1].parameters[0].typeReference.type).toBe(
      "String",
    );
    expect(result.constructors[1].access_modifier).toBe("public");
  });

  test("Can have methods", () => {
    const classBody = `
    public with sharing class MyClass {
      public static String method1() {
        return '';
      }

      private void method2(){}
    }
    `;
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.methods.length).toBe(2);
    expect(result.methods[0].memberModifiers.length).toBe(1);
    expect(result.methods[0].memberModifiers[0]).toBe("static");
    expect(result.methods[0].access_modifier).toBe("public");
    expect(result.methods[0].typeReference.type).toBe("String");
    expect(result.methods[0].name).toBe("method1");

    expect(result.methods[1].memberModifiers.length).toBe(0);
    expect(result.methods[1].access_modifier).toBe("private");
    expect(result.methods[1].typeReference.type).toBe("void");
    expect(result.methods[1].name).toBe("method2");
  });

  test("Can have virtual methods", () => {
    const classBody = `
    public with sharing class MyClass {
      public virtual String method1() {
        return null ?? '';
      }
    }
    `;
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.methods[0].memberModifiers[0]).toBe("virtual");
  });

  test("Can have abstract methods", () => {
    const classBody = `
    public with sharing abstract class MyClass {
      public abstract String method1() {
        return null ?? '';
      }
    }
    `;
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.methods[0].memberModifiers[0]).toBe("abstract");
  });

  test("Can have inner enums", () => {
    const classBody = `
    public with sharing class MyClass {
      public enum MyEnum {}
    }
    `;
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.enums.length).toBe(1);
    expect(result.enums[0].access_modifier).toBe("public");
    expect(result.enums[0].name).toBe("MyEnum");
  });

  test("Can have inner interfaces", () => {
    const classBody = `
    public with sharing class MyClass {
      public interface MyInterface {
        void method1();
        void method2();
      }
    }
    `;
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.interfaces.length).toBe(1);
    expect(result.interfaces[0].name).toBe("MyInterface");
    expect(result.interfaces[0].methods.length).toBe(2);
  });

  test("Can have inner classes", () => {
    const classBody = `
    public with sharing class MyClass {
      public class MyClass {
        public void method1();
        public void method2();
      }
    }
    `;
    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.classes.length).toBe(1);
    expect(result.classes[0].name).toBe("MyClass");
    expect(result.classes[0].methods.length).toBe(2);
  });

  test("Can have members in groups", () => {
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

    const result = reflect(classBody).typeMirror as ClassMirror;
    expect(result.properties.length).toBe(2);
    expect(result.properties[0].typeReference.type).toBe("String");
    expect(result.properties[0].name).toBe("Prop1");
    expect(result.properties[0].group).toBe("Group Name");
    expect(result.properties[0].groupDescription).toBe("Group Description");
    expect(result.properties[1].typeReference.type).toBe("Integer");
    expect(result.properties[1].name).toBe("Prop2");
    expect(result.properties[1].group).toBe("Group Name");
    expect(result.properties[1].groupDescription).toBe("Group Description");
  });

  test("Supports block style apex docs", () => {
    const classBody = `/**********************************************************
    @description Uses a block style apex doc
@group           Main
@test-class      {@link SampleClass}
    ***********************************************************/
    public class GroupedClass {

    }
    `;

    const result = reflect(classBody);
    expect(result.error).toBeNull();

    const typeResult = result.typeMirror as ClassMirror;
    expect(typeResult.name).toBe("GroupedClass");
  });

  test("supports grouping", () => {
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

    const result = reflect(classBody);
    expect(result.error).toBeNull();
  });
});
