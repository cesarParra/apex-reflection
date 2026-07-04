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
import { reflect } from '@cparra/apex-reflection';

const classBody = 'public with sharing class ExampleClass {}';
const response = reflect(classBody);
```

If you wish to parse an Apex type that comes from a file, you can read the file contents and use that as the source to
reflect

```typescript
import * as fs from 'fs';
import { reflect } from '@cparra/apex-reflection';

const path = './MyClass.cls';
const rawFile = fs.readFileSync(path);
const response = reflect(rawFile.toString());
```

The `reflect` function returns a `ReflectionResult` which contains either the results of the parsed `Type`
(which will either be a `ClassMirror`, an, or an `EnumMirror`) or a `ParsingError` if the passed in
body was not parsed successfully, with a message indicating where the error occurred.

## Contributing

Even though this library is exposed as a Node.js library, the project's source code is written in Dart. The source can
be found in the `lib/src` directory.

The Dart source code is compiled to a WebAssembly module, which is what the npm package ships. To rebuild the
module after changing the Dart source, run from the repository root:

```shell
dart compile wasm lib/src/node/node.dart -o js/node.wasm
```

This emits `js/node.wasm` together with its matching JS loader `js/node.mjs`; both are committed and are copied into
the published package by the npm build in `js/` (`npm run build`).

### Tests

Both the Dart source code and the packaged WebAssembly module must be tested.

The Dart tests live in the `test` directory. The Dart source code must have unit tests testing each individual Dart file
as well as end-to-end tests that verify the overall parsing functionality.

The JS tests live in `js/__tests__`. These are end-to-end tests that run against the built package (`dist/`), so they
also guard against publishing a stale WebAssembly artifact. Run them with `npm test` from the `js` directory.

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

Parsing is implemented with handwritten [petitparser](https://pub.dev/packages/petitparser) grammars:

- `lib/src/service/grammar/apex_grammar.dart` parses Apex type and trigger declarations. It only parses the
  *declaration structure* needed for reflection; method, constructor, and property bodies are skipped as balanced
  blocks, which keeps the grammar immune to new expression-level Apex syntax.
- `lib/src/service/grammar/apexdoc_grammar.dart` parses Apexdoc comments. It is composed directly into the Apex
  grammar, so doc comments are parsed in the same single pass as the declarations around them.

Apex is a case-insensitive language, and the grammar honors that: every keyword rule matches case-insensitively.

## Typescript

This library provides its own TS type definition.
