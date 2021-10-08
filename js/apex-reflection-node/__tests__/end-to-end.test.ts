import {InterfaceMirror, reflect} from '../index';

describe('Enum Reflection', () => {
  test('Simple, single line declaration', () => {
    const enumBody = 'enum MyEnumName {}';
    const result = reflect(enumBody);
    expect(result.type_name).toBe('enum');
    expect(result.name).toBe('MyEnumName');
  });

  test('Multi-line declaration with values', () => {
    const enumBody = `
    enum MyEnumName {
      VALUE_1,
      VALUE2
    }
    `;
    const result = reflect(enumBody);
    expect(result.type_name).toBe('enum');
    expect(result.name).toBe('MyEnumName');
  });

  test('With doc comments', () => {
    const enumBody = `
    /**
     * My enum description
     */
    enum MyEnumName {
      VALUE_1,
      VALUE2
    }
    `;
    const result = reflect(enumBody);
    expect(result.docComment.description).toBe('My enum description');
  });
});

describe('Interface Reflection', () => {
  test('Single line interface definition', () => {
    const interfaceBody = 'interface MyInterface{}';
    const result = reflect(interfaceBody);
    expect(result.type_name).toBe('interface');
    expect(result.name).toBe('MyInterface');
  });

  test('When no access modifier is defined it is private', () => {
    const interfaceBody = 'interface MyInterface{}';
    const result = reflect(interfaceBody);
    expect(result.access_modifier).toBe('private');
  });

  test('Can have access modifier', () => {
    const interfaceBody = 'public interface MyInterface{}';
    const result = reflect(interfaceBody);
    expect(result.access_modifier).toBe('public');
  });

  test('Can have a sharing modifier', () => {
    const interfaceBody = 'public with sharing interface MyInterface{}';
    const result = reflect(interfaceBody) as InterfaceMirror;
    expect(result.sharingModifier).toBe('withSharing');
  });

  test('Can have methods', () => {
    const interfaceBody = `
      public with sharing interface MyInterface{
        void method1();
      }
    `;
    const result = reflect(interfaceBody) as InterfaceMirror;
    expect(result.methods.length).toBe(1);
    expect(result.methods[0].name).toBe('method1');
  });

  test('Can have extend other interfaces', () => {
    const interfaceBody = `
      public with sharing interface MyInterface extends Interface2 {
        void method1();
      }
    `;
    const result = reflect(interfaceBody) as InterfaceMirror;
    expect(result.extended_interfaces.length).toBe(1);
    expect(result.extended_interfaces[0]).toBe('Interface2');
  });

  test('Can have annotations', () => {
    const interfaceBody = `
      @NamespaceAccessible
      public with sharing interface MyInterface{
        void method1();
      }
    `;
    const result = reflect(interfaceBody) as InterfaceMirror;
    expect(result.annotations.length).toBe(1);
    expect(result.annotations[0].name).toBe('namespaceaccessible');
  });
});
