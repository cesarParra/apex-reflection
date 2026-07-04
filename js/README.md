# Apex Reflection

Provides basic reflection for the Apex programming language.

## Installation

```
npm i @cparra/apex-reflection
```

## Usage

This library exposes a single function that handles parsing the body of an Apex top level type (class, interface, or
enum) and returns the result.

```typescript
import { reflect } from "@cparra/apex-reflection";

const classBody = "public with sharing class ExampleClass {}";
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
(which will either be a `ClassMirror`, an, or an `EnumMirror`) or a `ParsingError` if the passed in
body was not parsed successfully, with a message indicating where the error occurred.

## Contributing

Even though this library is exposed as a Node.js library, the project's source code is written in Dart. The source can
be found in the `lib/src` directory of the repository.

This package ships the Dart code compiled to a WebAssembly module (`dist/node.wasm`) together with its JS loader
(`dist/node.mjs`), loaded lazily by the thin TypeScript wrapper in `index.mts`. Node.js 22 or newer is required (the
module uses WasmGC). To rebuild the module after changing the Dart source, run from the repository root:

```shell
dart compile wasm lib/src/node/node.dart -o js/node.wasm
```

`npm run build` compiles the TypeScript wrapper and copies the wasm module and its loader into `dist/`.

### Tests

Both the Dart source code and the packaged WebAssembly module must be tested.

The Dart tests live in the repository's `test` directory. The Dart source code must have unit tests testing each
individual Dart file as well as end-to-end tests that verify the overall parsing functionality.

The JS tests live in `__tests__`. These are end-to-end tests that run against the built package (`dist/`), so they
also guard against publishing a stale WebAssembly artifact. Run them with `npm test`.

### JSON serialization

The reflection operation outputs a JSON representation of the Apex type, which is then deserialized on the JS side to
return typed objects.

Serialization is handled through the [json_serializable](https://pub.dev/packages/json_serializable) package, which
helps automatically create the round-trip code for serialization and de-serialization.

When changing any of the model classes with serialization support, to re-build the serialization code run

```shell
dart run build_runner build
```

### Parsing

Parsing is implemented with handwritten [petitparser](https://pub.dev/packages/petitparser) grammars. 
The Apex grammar parses only the declaration structure needed for reflection (bodies are skipped as
balanced blocks), and the Apexdoc grammar is composed into it, so doc comments are parsed in the same single pass. See
the repository README for details.

## Typescript

This library provides its own TS type definition.
