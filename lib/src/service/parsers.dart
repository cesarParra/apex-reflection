import 'dart:convert';

import 'package:antlr4/antlr4.dart';
import 'package:apexdocs_dart/src/model/doc_comment.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/walker.dart';

class ApexParser {
  static Future<TypeMirror> parseFromPath(String path) async {
    final input = await InputStream.fromPath(path);
    return _parse(input);
  }

  static TypeMirror parseFromBody(String body) {
    final input = InputStream.fromString(body);
    return _parse(input);
  }

  static TypeMirror _parse(InputStream input) {
    final walkerDefinition = ApexWalkerDefinition();
    Walker.walk(input, walkerDefinition);
    return walkerDefinition.getGeneratedApexType()!;
  }
}

class ApexdocParser {
  static DocComment parseFromBody(String body) {
    var sanitizedBody = body.trimLeft().trimRight();
    final walkerDefinition = ApexdocWalkerDefinition();
    Walker.walk(InputStream.fromString(sanitizedBody), walkerDefinition);
    return walkerDefinition.getGeneratedDocComment();
  }
}
