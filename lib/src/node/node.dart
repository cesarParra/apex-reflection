import 'dart:js_interop';
import 'dart:convert';
import 'package:apex_reflection/src/service/parsers.dart';

@JS()
external set reflect(JSFunction value);

@JS()
external set reflectAsync(JSFunction value);

@JS()
external set reflectTrigger(JSFunction value);

@JS()
external set reflectTriggerAsync(JSFunction value);

String _parseFromDeclarationBody(String declarationBody) {
  return jsonEncode(Reflection.reflect(declarationBody));
}

String _parseTriggerFromDeclarationBody(String declarationBody) {
  return jsonEncode(Reflection.reflectTrigger(declarationBody));
}

JSPromise<JSString> _parseFromDeclarationBodyAsync(String declarationBody) {
  return Future(() => jsonEncode(Reflection.reflect(declarationBody)).toJS)
      .toJS;
}

JSPromise<JSString> _parseTriggerFromDeclarationBodyAsync(
    String declarationBody) {
  return Future(
      () => jsonEncode(Reflection.reflectTrigger(declarationBody)).toJS).toJS;
}

void main() {
  reflect = _parseFromDeclarationBody.toJS;
  reflectAsync = _parseFromDeclarationBodyAsync.toJS;
  reflectTrigger = _parseTriggerFromDeclarationBody.toJS;
  reflectTriggerAsync = _parseTriggerFromDeclarationBodyAsync.toJS;
}
