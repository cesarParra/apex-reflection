import 'package:apexdocs_dart/src/model/members.dart';

List<Parameter>? parseParameters(dynamic ctx) {
  final parameters = ctx
      .formalParameters()
      ?.formalParameterList()
      ?.formalParameters()
      .map((e) => Parameter(
          name: e.id().text,
          type: e.typeRef().text,
          accessModifiers: e
              .modifiers()
              .map((e) => e.text as String)
              .toList()
              .cast<String>()))
      .toList();
  return parameters == null ? <Parameter>[] : parameters.cast<Parameter>();
}
