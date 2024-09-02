import 'package:antlr4/antlr4.dart';

import 'package:apexdocs_dart/src/model/doc_comment.dart';
import 'package:apexdocs_dart/src/service/apex_listener.dart';
import 'package:apexdocs_dart/src/model/types.dart';

import '../antlr/grammars/Apexdoc/ApexdocLexer.dart';
import '../antlr/grammars/Apexdoc/ApexdocParser.dart';
import '../antlr/grammars/apex/ApexLexer.dart';
import '../antlr/grammars/apex/ApexParser.dart';
import 'apexdoc_listener.dart';

class Walker {
  static walk(InputStream input, WalkerDefinition definition) {
    final lexer = definition.getLexer(input);
    final tokens = CommonTokenStream(lexer);
    final tree = definition.initializeTree(tokens);
    ParseTreeWalker.DEFAULT.walk(definition.getListener(tokens), tree);
  }
}

abstract class WalkerDefinition {
  Lexer getLexer(InputStream input);

  ParserRuleContext initializeTree(TokenStream stream);

  ParseTreeListener getListener(CommonTokenStream tokens);
}

class ApexWalkerDefinition extends WalkerDefinition {
  late ApexClassListener _listener;

  @override
  Lexer getLexer(InputStream input) {
    return ApexLexer(input);
  }

  @override
  ParserRuleContext initializeTree(TokenStream stream) {
    final parser = ApexParser(stream);
    parser.buildParseTree = true;
    parser.removeErrorListeners();
    parser.addErrorListener(ExceptionErrorListener('apex'));
    return parser.compilationUnit();
  }

  @override
  ParseTreeListener getListener(CommonTokenStream tokens) {
    _listener = ApexClassListener(tokens);
    return _listener;
  }

  TypeMirror? getGeneratedApexType() {
    return _listener.generatedType;
  }
}

class ApexdocWalkerDefinition extends WalkerDefinition {
  final ApexdocListener _listener;

  ApexdocWalkerDefinition() : _listener = ApexdocListener();

  @override
  Lexer getLexer(InputStream input) {
    return ApexdocLexer(input);
  }

  @override
  ParserRuleContext initializeTree(TokenStream stream) {
    final parser = ApexdocParser(stream);
    parser.buildParseTree = true;
    parser.removeErrorListeners();
    parser.addErrorListener(ExceptionErrorListener('doc'));
    return parser.documentation();
  }

  @override
  ParseTreeListener getListener(_) {
    return _listener;
  }

  DocComment getGeneratedDocComment() {
    return _listener.generatedDocComment;
  }
}

class ExceptionErrorListener extends BaseErrorListener {
  final String errorSource;

  ExceptionErrorListener(this.errorSource);

  @override
  void syntaxError(
      Recognizer<ATNSimulator> recognizer,
      Object? offendingSymbol,
      int? line,
      int charPositionInLine,
      String msg,
      RecognitionException<IntStream>? e) {
    final errorPrefix = errorSource == 'apex'
        ? 'Error parsing Apex Body'
        : 'Error parsing Apex doc';
    throw Exception('$errorPrefix. Line $line:$charPositionInLine - $msg');
  }
}
