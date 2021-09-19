import 'package:apexdocs_dart/src/model/declaration.dart';

abstract class TypedDeclaration extends Declaration {
  final String type;

  TypedDeclaration(
      {required String name,
      required this.type,
      List<String> accessModifiers = const []})
      : super(name: name, accessModifiers: accessModifiers);
}

class Property extends TypedDeclaration {
  Property(
      {required String name,
      required String type,
      List<String> accessModifiers = const []})
      : super(name: name, type: type, accessModifiers: accessModifiers);
}

class Field extends TypedDeclaration {
  Field(
      {required String name,
      required String type,
      List<String> accessModifiers = const []})
      : super(name: name, type: type, accessModifiers: accessModifiers);
}
