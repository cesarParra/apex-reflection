import 'package:apexdocs_dart/src/model/members.dart';

List<ParameterMirror>? parseParameters(dynamic ctx) {
  final parameters = ctx
      .formalParameters()
      ?.formalParameterList()
      ?.formalParameters()
      .map((e) => ParameterMirror(
          name: e.id().text,
          type: e.typeRef().text,
          accessModifiers: e
              .modifiers()
              .map((e) => e.text as String)
              .toList()
              .cast<String>()))
      .toList();
  return parameters == null ? <ParameterMirror>[] : parameters.cast<ParameterMirror>();
}
