import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/type_references.dart';

List<ParameterMirror>? parseParameters(dynamic ctx) {
  final parameters = ctx
      .formalParameters()
      ?.formalParameterList()
      ?.formalParameters()
      .map((e) => ParameterMirror(
          name: e.id().text, typeReference: ObjectTypeReference(e.typeRef())))
      .toList();
  return parameters == null
      ? <ParameterMirror>[]
      : parameters.cast<ParameterMirror>();
}
