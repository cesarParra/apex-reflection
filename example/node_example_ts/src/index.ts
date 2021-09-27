import {reflect} from '@cparra/apex-reflection';

const classBody = `
/** 
 * @description My Class description 
 */
 public with sharing class MyClass{}
`;
console.log(reflect(classBody));
