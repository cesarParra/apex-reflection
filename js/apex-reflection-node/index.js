"use strict";
exports.__esModule = true;
exports.reflect = void 0;
var lib = require('./out');
function reflect(declarationBody) {
    return JSON.parse(lib.reflect(declarationBody));
}
exports.reflect = reflect;
