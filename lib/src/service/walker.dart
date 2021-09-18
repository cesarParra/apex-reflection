import 'package:antlr4/antlr4.dart';

import 'package:apexdocs_dart/src/antlr/lib/apex/ApexLexer.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParserListener.dart';

class Walker {
  static walk(InputStream input, ApexParserListener listener) {
    final lexer = ApexLexer(input);
    final tokens = CommonTokenStream(lexer);
    final parser = ApexParser(tokens);
    parser.addErrorListener(DiagnosticErrorListener());
    parser.buildParseTree = true;
    final tree = parser.compilationUnit();
    ParseTreeWalker.DEFAULT.walk(listener, tree);
  }
}
