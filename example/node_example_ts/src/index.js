"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var apex_reflection_1 = require("@cparra/apex-reflection");
var classBody = "\n/** \n * @description My Class description \n */\n public with sharing class MyClass{}\n";
var generatedType = (0, apex_reflection_1.reflect)(classBody);
console.log(generatedType);
