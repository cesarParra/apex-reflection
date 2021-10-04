import 'package:apexdocs_dart/src/model/members.dart';

List<ParameterMirror>? parseParameters(dynamic ctx) {
  final parameters = ctx
      .formalParameters()
      ?.formalParameterList()
      ?.formalParameters()
      .map((e) => ParameterMirror(name: e.id().text, type: e.typeRef().text))
      .toList();
  return parameters == null
      ? <ParameterMirror>[]
      : parameters.cast<ParameterMirror>();
}
