import 'package:antlr4/antlr4.dart';

import 'package:apexdocs_dart/src/antlr/lib/apex/ApexLexer.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/service/apex_listener.dart';
import 'package:apexdocs_dart/src/model/types.dart';

class Walker {
  static walk(InputStream input, WalkerDefinition definition) {
    final lexer = definition.getLexer(input);
    final tokens = CommonTokenStream(lexer);
    final tree = definition.initializeTree(tokens);
    ParseTreeWalker.DEFAULT.walk(definition.getListener(), tree);
  }
}

abstract class WalkerDefinition {
  Lexer getLexer(InputStream input);

  ParserRuleContext initializeTree(TokenStream stream);

  ParseTreeListener getListener();
}

class ApexWalkerDefinition extends WalkerDefinition {
  final ApexClassListener _listener;

  ApexWalkerDefinition() : _listener = ApexClassListener();

  @override
  Lexer getLexer(InputStream input) {
    return ApexLexer(input);
  }

  @override
  ParserRuleContext initializeTree(TokenStream stream) {
    final parser = ApexParser(stream);
    parser.buildParseTree = true;
    return parser.compilationUnit();
  }

  @override
  ParseTreeListener getListener() {
    return _listener;
  }

  Type? getGeneratedApexType() {
    return _listener.generatedType;
  }
}
