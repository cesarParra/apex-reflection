import {reflect} from '@cparra/apex-reflection';

const classBody = `
/** 
 * @description My Class description
 * @something
 */
 public with sharing class MyClass{}
`;

let generatedType = reflect(classBody);
console.log(generatedType);
