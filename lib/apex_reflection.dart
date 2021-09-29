// @dart=2.9

@JS()
library apex_reflection;

import 'dart:convert';

import 'package:js/js.dart';
import 'package:apexdocs_dart/src/service/parsers.dart';

@JS()
class Exports {
  external set run_(Function function);

  external set reflect(Function function);
}

@JS()
external Exports get exports;

String _parseFromDeclarationBody(String declarationBody) {
  return jsonEncode(ApexParser.parseFromBody(declarationBody));
}

void main() {
  exports.reflect = allowInterop(
      (String declarationBody) => _parseFromDeclarationBody(declarationBody));
}
