import 'package:apex_reflection/src/model/members.dart';
import 'package:apex_reflection/src/model/type_references.dart';
import 'package:apex_reflection/src/model/types.dart';

/// Represents a single local variable declared inside an anonymous Apex block.
class LocalVariableMirror {
  final String name;
  final ObjectTypeReference typeReference;

  LocalVariableMirror({required this.name, required this.typeReference});
}

/// Represents an Anonymous Apex block — a free-floating sequence of
/// statements and declarations that can be executed without a surrounding
/// class declaration.
class AnonymousBlockMirror {
  final List<LocalVariableMirror> variables;
  final List<ClassMirror> classes;
  final List<InterfaceMirror> interfaces;
  final List<EnumMirror> enums;
  final List<MethodMirror> methods;

  AnonymousBlockMirror({
    this.variables = const [],
    this.classes = const [],
    this.interfaces = const [],
    this.enums = const [],
    this.methods = const [],
  });
}
