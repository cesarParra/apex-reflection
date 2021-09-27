const reflectionLib = require('../../js/index');
const classBody = `
/** 
 * @description My Class description 
 */
 public with sharing class MyClass{}
`;
console.log(reflectionLib.reflect(classBody));
