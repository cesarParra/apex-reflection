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

  Field.fromJson(Map<String, dynamic> json)
      : super(
            name: json['name'],
            type: json['type'],
            accessModifiers: json['access_modifiers'].cast<String>());

  Map<String, dynamic> toJson() =>
      {'name': name, 'type': type, 'access_modifiers': accessModifiers};
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

  Method.fromJson(Map<String, dynamic> json)
      : super(
            name: json['name'],
            type: json['type'],
            accessModifiers: json['access_modifiers'].cast<String>()) {
    List<dynamic> encodedParameters = json['parameters'];
    parameters = encodedParameters
        .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  get isVoid => type.toLowerCase() == 'void';

  Map<String, dynamic> toJson() => {
        'name': name,
        'type': type,
        'access_modifiers': accessModifiers,
        'parameters': parameters.map((e) => e.toJson()).toList()
      };
}

class Parameter extends TypedDeclaration {
  Parameter(
      {required String name,
      required String type,
      List<String> accessModifiers = const []})
      : super(name: name, type: type, accessModifiers: accessModifiers);

  Parameter.fromJson(Map<String, dynamic> json)
      : super(
            name: json['name'],
            type: json['type'],
            accessModifiers: json['access_modifiers'].cast<String>());

  Map<String, dynamic> toJson() =>
      {'name': name, 'type': type, 'access_modifiers': accessModifiers};
}

class Constructor with AccessModifierAwareness, ParameterAwareness {
  _initialize(List<String> accessModifiers) {
    this.accessModifiers = accessModifiers;
  }

  Constructor({accessModifiers = const <String>[]}) {
    _initialize(accessModifiers);
  }

  Constructor.fromJson(Map<String, dynamic> json) {
    _initialize(json['access_modifiers'].cast<String>());
    List<dynamic> encodedParameters = json['parameters'];
    parameters = encodedParameters
        .map((e) => Parameter.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() => {
        'access_modifiers': accessModifiers,
        'parameters': parameters.map((e) => e.toJson()).toList()
      };
}
