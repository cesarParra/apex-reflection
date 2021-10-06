import {reflect} from '../index';

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
