const {reflect} = require('../../js/apex-reflection-node');
const classBody = `
/** 
 * @description My Class description
 * @something
 */
 public with sharing class MyClass{}
`;

console.log(reflect(classBody.replace('\r', '')));
