import 'package:antlr4/antlr4.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexLexer.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/service/case_insensitive_input_stream.dart';
import 'package:test/test.dart';

import 'package:apexdocs_dart/src/service/walker.dart';

class TestListener extends ParseTreeListener {
  int enterEveryRuleCalled = 0;

  @override
  void enterEveryRule(ParserRuleContext ctx) {
    enterEveryRuleCalled++;
  }

  @override
  void exitEveryRule(ParserRuleContext _) {}

  @override
  void visitErrorNode(ErrorNode _) {}

  @override
  void visitTerminal(TerminalNode _) {}
}

class TestDefinition extends WalkerDefinition {
  final ParseTreeListener listener;

  TestDefinition(this.listener);

  @override
  Lexer getLexer(InputStream input) {
    return ApexLexer(input);
  }

  @override
  ParserRuleContext initializeTree(TokenStream stream) {
    return ApexParser(stream).compilationUnit();
  }

  @override
  ParseTreeListener getListener(_) {
    return listener;
  }
}

void main() {
  test('Walks through the input', () {
    var listener = TestListener();
    Walker.walk(
        CaseInsensitiveInputStream.fromString('class MyClass{}'), TestDefinition(listener));
    expect(listener.enterEveryRuleCalled, greaterThan(0));
  });
}
