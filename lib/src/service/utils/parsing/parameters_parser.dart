import 'package:apex_reflection/src/model/members.dart';
import 'antlr_model_builders.dart';

List<ParameterMirror>? parseParameters(dynamic ctx) {
  final parameters = ctx
      .formalParameters()
      ?.formalParameterList()
      ?.formalParameters()
      .map((e) => ParameterMirror(
          name: e.id().text, typeReference: typeReferenceFromContext(e.typeRef())))
      .toList();
  return parameters == null
      ? <ParameterMirror>[]
      : parameters.cast<ParameterMirror>();
}
