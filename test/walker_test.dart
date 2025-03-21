import 'package:antlr4/antlr4.dart';
import 'package:apexdocs_dart/src/antlr/grammars/apex/ApexLexer.dart';
import 'package:apexdocs_dart/src/antlr/grammars/apex/ApexParser.dart';
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

class TestDefinition extends WalkerDefinition<ApexParser> {
  final ParseTreeListener listener;

  TestDefinition(this.listener);

  @override
  Lexer getLexer(InputStream input) {
    return ApexLexer(input);
  }

  @override
  ApexParser initializeTree(TokenStream stream) {
    return ApexParser(stream);
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
        CaseInsensitiveInputStream.fromString('class MyClass{}'),
        TestDefinition(listener),
        (ApexParser parser) => parser.compilationUnit());
    expect(listener.enterEveryRuleCalled, greaterThan(0));
  });
}
