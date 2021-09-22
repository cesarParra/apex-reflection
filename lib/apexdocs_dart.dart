// @dart=2.9

library apexdocs_dart;

import 'package:antlr4/antlr4.dart';

import 'package:apexdocs_dart/src/antlr/lib/apex/ApexLexer.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/service/walker.dart';

main(List<String> arguments) async {
  ApexLexer.checkVersion();
  ApexParser.checkVersion();

  final input = await InputStream.fromPath(arguments[0]);
  Walker.walk(input, ApexWalkerDefinition());
}
