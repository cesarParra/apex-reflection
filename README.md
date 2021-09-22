# Running Antlr4

To generate the Antlr4 Apex output run:

```
antlr4 -Dlanguage=Dart lib/src/antlr/grammars/apex/ApexLexer.g4 lib/src/antlr/grammars/apex/ApexParser.g4 -o lib/src/antlr/lib/apex/
```

To generate the Antlr4 Apexdoc output run:

```
antlr4 -Dlanguage=Dart lib/src/antlr/grammars/apexdoc/ApexdocLexer.g4 lib/src/antlr/grammars/apexdoc/ApexdocParser.g4 -o lib/src/antlr/lib/apexdoc/
```
