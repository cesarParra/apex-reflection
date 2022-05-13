"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var apex_reflection_1 = require("@cparra/apex-reflection");
var classBody = "\n/** \n * @description My Class description\n * @something\n */\n public with sharing class MyClass{}\n";
var generatedType = apex_reflection_1.reflect(classBody);
console.log(generatedType);
