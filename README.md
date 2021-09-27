# Creating JS from Dart code:

To generate the JS file from the Dart code:

1. Run

```
dart2js lib/apexdocs_dart.dart -o js/out.js
```

2. Copy the `js/preamble.js` contents to the top of the `js/out.js` file
3. Edit the `index.d.ts` files according to the changes to provide TS typings

# Running Antlr4

To generate the Antlr4 Apex output run:

```
antlr4 -Dlanguage=Dart lib/src/antlr/grammars/apex/ApexLexer.g4 lib/src/antlr/grammars/apex/ApexParser.g4 -o lib/src/antlr/lib/apex/
```

To generate the Antlr4 Apexdoc output run:

```
antlr4 -Dlanguage=Dart lib/src/antlr/grammars/apexdoc/ApexdocLexer.g4 lib/src/antlr/grammars/apexdoc/ApexdocParser.g4 -o lib/src/antlr/lib/apexdoc/
```
