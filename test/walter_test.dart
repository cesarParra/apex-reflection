// Disabling null safety since this test relies on the antrl4 package
// @dart=2.10

import 'package:antlr4/antlr4.dart';
import 'package:test/test.dart';

import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParserBaseListener.dart';
import 'package:apexdocs_dart/src/service/walker.dart';

class TestListener extends ApexParserBaseListener {
  int enterEveryRuleCalled = 0;

  @override
  void enterEveryRule(ParserRuleContext ctx) {
    enterEveryRuleCalled++;
  }
}

void main() {
  test('Walks through the input', () {
    var listener = TestListener();
    Walker.walk(InputStream.fromString('class MyClass{}'), listener);
    expect(listener.enterEveryRuleCalled, greaterThan(0));
  });
}
