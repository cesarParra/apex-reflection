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

  Property.fromJson(Map<String, dynamic> json)
      : super(
            name: json['name'],
            type: json['type'],
            accessModifiers: json['access_modifiers'].cast<String>());

  Map<String, dynamic> toJson() =>
      {'name': name, 'type': type, 'access_modifiers': accessModifiers};
}

class Field extends TypedDeclaration {
  Field(
      {required String name,
      required String type,
      List<String> accessModifiers = const []})
      : super(name: name, type: type, accessModifiers: accessModifiers);
}

mixin ParameterAwareness {
  List<Parameter> parameters = [];

  void addParameter(Parameter parameter) {
    parameters.add(parameter);
  }
}

class Method extends TypedDeclaration with ParameterAwareness {
  Method(
      {required String name,
      String type = 'void',
      List<String> accessModifiers = const []})
      : super(name: name, type: type, accessModifiers: accessModifiers);

  get isVoid => type.toLowerCase() == 'void';
}

class Parameter extends TypedDeclaration {
  Parameter(
      {required String name,
      required String type,
      List<String> accessModifiers = const []})
      : super(name: name, type: type, accessModifiers: accessModifiers);
}

class Constructor with AccessModifierAwareness, ParameterAwareness {
  Constructor({accessModifiers = const <String>[]}) {
    this.accessModifiers = accessModifiers;
  }
}
