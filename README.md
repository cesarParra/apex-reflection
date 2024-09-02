# Apex Reflection

Provides basic reflection for the Apex programming language.

## Installation

```
npm i @cparra/apex-reflection
```

## Usage

This library exposes a single function that handles parsing the body of an Apex top level type (class, interface, or
enum)
and returns the result.

```typescript
import {reflect} from '@cparra/apex-reflection';

const classBody = 'public with sharing class ExampleClass {}';
const response = reflect(classBody);
```

If you wish to parse an Apex type that comes from a file, you can read the file contents and use that as the source to
reflect

```typescript
import * as fs from 'fs';
import {reflect} from '@cparra/apex-reflection';

const path = './MyClass.cls';
const rawFile = fs.readFileSync(path);
const response = reflect(rawFile.toString());
```

The `reflect` function returns a `ReflectionResult` which contains either the results of the parsed `Type`
(which will either be a `ClassMirror`, an `InterfaceMirror` or an `EnumMirror`) or a `ParsingError` if the passed in
body was not parsed successfully, with a message indicating where the error occurred.

## Contributing

Even though this library is exposed as a Node.js library, the project's source code is written in Dart. The source can
be found in the `lib/src` directory.

The Dart source code is transpiled to JS by `dart2js` through the default [grinder](https://pub.dev/packages/grinder)
workflow within `tool/grind.dart`.

To generate the JS files first set up `grinder` locally by following that package's instructions through its pub.dev
listing, and then you can simply run `grind`. That build takes care of combining the output with `preamble/preamble.js`
to achieve compatibility with Node.js. The resulting file is `js/apex-reflection-node/out.js`.

### Tests

Both the Dart source code and the JS output must be tested.

The Dart tests live in the `test` directory. The Dart source code must have unit tests testing each individual Dart file
as well as end-to-end tests that verify the overall parsing functionality.

The JS tests live in `js/apex-reflection-node/__tests__`. These are end-to-end tests that ensure that the transpiled JS
code is working as intended.

### JSON serialization

The reflection operation outputs a JSON representation of the Apex type, which is then deserialized on the JS side to
return typed objects.

Serialization is handled through the [json_serializable](https://pub.dev/packages/json_serializable) package, which
helps automatically create the round-trip code for serialization and de-serialization.

When changing any of the model classes with serialization support, to re-build the serialization code run

```shell
dart run build_runner build
```

To keep the runner live by watching any modifications to files, run

```shell
dart run build_runner watch
```

### Parsing

The parsing algorithm relies on using ANTLR4 and its Dart target. 

To generate the Antlr4 **Apex** output run:

```shell
java org.antlr.v4.Tool -Dlanguage=Dart lib/src/antlr/grammars/apex/ApexLexer.g4 lib/src/antlr/grammars/apex/ApexParser.g4
```

To generate the Antlr4 **Apexdoc** output run:

```shell
java org.antlr.v4.Tool -Dlanguage=Dart lib/src/antlr/grammars/apexdoc/ApexdocLexer.g4 lib/src/antlr/grammars/apexdoc/ApexdocParser.g4
```

## Typescript

This library provides its own TS type definition.
