import 'dart:js_interop';
import 'dart:convert';
import 'package:apexdocs_dart/src/service/parsers.dart';

@JS()
external set reflect(JSFunction value);

String _parseFromDeclarationBody(String declarationBody) {
  return jsonEncode(Reflection.reflect(declarationBody));
}

void main() {
  reflect = _parseFromDeclarationBody.toJS;
}
