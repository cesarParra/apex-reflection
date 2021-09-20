# Running Antlr4

To generate the Antlr4 Apex output run:

```
antlr4 -Dlanguage=Dart -visitor lib/src/antlr/grammars/apex/ApexLexer.g4 lib/src/antlr/grammars/apex/ApexParser.g4 -o lib/src/antlr/lib/apex/
```
