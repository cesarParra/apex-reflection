import 'dart:js_interop';
import 'dart:convert';
import 'package:apexdocs_dart/src/service/parsers.dart';

@JS()
external set reflect(JSFunction value);

@JS()
external set reflectAsync(JSFunction value);

String _parseFromDeclarationBody(String declarationBody) {
  return jsonEncode(Reflection.reflect(declarationBody));
}

JSPromise<JSString> _parseFromDeclarationBodyAsync(String declarationBody) {
  return Future(() => jsonEncode(Reflection.reflect(declarationBody)).toJS).toJS;
}

void main() {
  reflect = _parseFromDeclarationBody.toJS;
  reflectAsync = _parseFromDeclarationBodyAsync.toJS;
}
