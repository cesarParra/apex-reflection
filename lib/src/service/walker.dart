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
  static walk<T extends Parser>(InputStream input, WalkerDefinition<T> definition,
      ParserRuleContext Function(T) initializeTree) {
    final lexer = definition.getLexer(input);
    final tokens = CommonTokenStream(lexer);
    final parser = definition.initializeTree(tokens);
    final tree = initializeTree(parser);
    ParseTreeWalker.DEFAULT.walk(definition.getListener(tokens), tree);
  }
}

abstract class WalkerDefinition<T extends Parser> {
  Lexer getLexer(InputStream input);

  T initializeTree(TokenStream stream);

  ParseTreeListener getListener(CommonTokenStream tokens);
}

class ApexWalkerDefinition extends WalkerDefinition<ApexParser> {
  late ApexClassListener _listener;

  @override
  Lexer getLexer(InputStream input) {
    return ApexLexer(input);
  }

  @override
  ApexParser initializeTree(TokenStream stream) {
    final parser = ApexParser(stream);
    parser.buildParseTree = true;
    parser.removeErrorListeners();
    parser.addErrorListener(ExceptionErrorListener('apex'));
    return parser;
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

class ApexdocWalkerDefinition extends WalkerDefinition<ApexdocParser> {
  final ApexdocListener _listener;

  ApexdocWalkerDefinition() : _listener = ApexdocListener();

  @override
  Lexer getLexer(InputStream input) {
    return ApexdocLexer(input);
  }

  @override
  ApexdocParser initializeTree(TokenStream stream) {
    final parser = ApexdocParser(stream);
    parser.buildParseTree = true;
    parser.removeErrorListeners();
    parser.addErrorListener(ExceptionErrorListener('doc'));
    return parser;
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
