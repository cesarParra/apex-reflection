import 'package:apexdocs_dart/src/model/members.dart';

import 'declaration.dart';

abstract class Type extends Declaration {
  Type(
      {required String name,
      String? docComment,
      List<String> accessModifiers = const []})
      : super(
            name: name,
            docComment: docComment,
            accessModifiers: accessModifiers);

  bool isClass() {
    return false;
  }

  bool isInterface() {
    return false;
  }

  bool isEnum() {
    return false;
  }
}

mixin MethodsAwareness {
  List<Method> methods = [];

  void addMethod(Method method) {
    methods.add(method);
  }
}

class ClassModel extends Type with MethodsAwareness {
  late final String? extendedClass;
  late final List<String> implementedInterfaces;

  List<Property> properties = [];
  List<Field> fields = [];
  List<Constructor> constructors = [];
  List<EnumModel> enums = [];
  List<InterfaceModel> interfaces = [];
  List<ClassModel> classes = [];

  ClassModel(
      {required String name,
      String? docComment,
      List<String> accessModifiers = const [],
      this.extendedClass,
      this.implementedInterfaces = const []})
      : super(
            name: name,
            docComment: docComment,
            accessModifiers: accessModifiers);

  ClassModel.fromJson(Map<String, dynamic> json)
      : super(
            name: json['name'],
            accessModifiers: json['access_modifiers'].cast<String>()) {
    extendedClass = json['extended_class'];
    implementedInterfaces = json['implemented_interfaces'].cast<String>();

    // Constructor deserialization
    List<dynamic> encodedConstructors = json['constructors'];
    constructors = encodedConstructors
        .map((e) => Constructor.fromJson(e as Map<String, dynamic>))
        .toList();

    // Property deserialization
    List<dynamic> encodedProperties = json['properties'];
    properties = encodedProperties
        .map((e) => Property.fromJson(e as Map<String, dynamic>))
        .toList();

    // Field deserialization
    List<dynamic> encodedFields = json['fields'];
    fields = encodedFields
        .map((e) => Field.fromJson(e as Map<String, dynamic>))
        .toList();

    // Method deserialization
    List<dynamic> encodedMethods = json['methods'];
    methods = encodedMethods
        .map((e) => Method.fromJson(e as Map<String, dynamic>))
        .toList();

    // Interface deserialization
    List<dynamic> encodedInterfaces = json['interfaces'];
    interfaces = encodedInterfaces
        .map((e) => InterfaceModel.fromJson(e as Map<String, dynamic>))
        .toList();

    // Enum deserialization
    List<dynamic> encodedEnums = json['enums'];
    enums = encodedEnums
        .map((e) => EnumModel.fromJson(e as Map<String, dynamic>))
        .toList();

    // Class deserialization
    List<dynamic> encodedClasses = json['classes'];
    classes = encodedClasses
        .map((e) => ClassModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  bool isClass() {
    return true;
  }

  void addProperty(Property property) {
    properties.add(property);
  }

  void addField(Field field) {
    fields.add(field);
  }

  void addConstructor(Constructor constructor) {
    constructors.add(constructor);
  }

  void addEnum(EnumModel innerEnum) {
    enums.add(innerEnum);
  }

  void addInterface(InterfaceModel innerInterface) {
    interfaces.add(innerInterface);
  }

  void addClass(ClassModel innerClass) {
    classes.add(innerClass);
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'extended_class': extendedClass,
        'implemented_interfaces': implementedInterfaces,
        'access_modifiers': accessModifiers,
        'fields': fields.map((e) => e.toJson()).toList(),
        'constructors': constructors.map((e) => e.toJson()).toList(),
        'properties': properties.map((e) => e.toJson()).toList(),
        'methods': methods.map((e) => e.toJson()).toList(),
        'interfaces': interfaces.map((e) => e.toJson()).toList(),
        'enums': enums.map((e) => e.toJson()).toList(),
        'classes': classes.map((e) => e.toJson()).toList(),
      };
}

class InterfaceModel extends Type with MethodsAwareness {
  late final List<String> extendedInterfaces;

  InterfaceModel(
      {required String name,
      List<String> accessModifiers = const [],
      this.extendedInterfaces = const []})
      : super(name: name, accessModifiers: accessModifiers);

  InterfaceModel.fromJson(Map<String, dynamic> json)
      : super(
            name: json['name'],
            accessModifiers: json['access_modifiers'].cast<String>()) {
    extendedInterfaces = json['extended_interfaces'].cast<String>();
    List<dynamic> encodedMethods = json['methods'];
    methods = encodedMethods
        .map((e) => Method.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  bool isInterface() {
    return true;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'extended_interfaces': extendedInterfaces,
        'access_modifiers': accessModifiers,
        'methods': methods.map((e) => e.toJson()).toList()
      };
}

class EnumModel extends Type {
  EnumModel({required String name, List<String> accessModifiers = const []})
      : super(name: name, accessModifiers: accessModifiers);

  @override
  bool isEnum() {
    return true;
  }

  EnumModel.fromJson(Map<String, dynamic> json)
      : super(
            name: json['name'],
            accessModifiers: json['access_modifiers'].cast<String>());

  Map<String, dynamic> toJson() =>
      {'name': name, 'access_modifiers': accessModifiers};
}
