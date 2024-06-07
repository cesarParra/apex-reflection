import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/modifiers.dart';
import 'package:apexdocs_dart/src/model/doc_comment.dart';
import 'package:json_annotation/json_annotation.dart';

import 'declaration_mirror.dart';

part 'types.g.dart';

/// Represents a type declaration (class, interface, or enum).
abstract class TypeMirror extends DeclarationMirror {
  @JsonKey(name: 'type_name')
  String typeName = '';

  TypeMirror({required String name, String? rawDocComment})
      : super(name: name, rawDocComment: rawDocComment);

  bool isClass() {
    return false;
  }

  bool isInterface() {
    return false;
  }

  bool isEnum() {
    return false;
  }

  Map<String, dynamic> toJson();
}

/// Allows for types to contain method declarations.
mixin MethodsAwareness {
  List<MethodMirror> methods = [];

  void addMethod(MethodMirror method) {
    methods.add(method);
  }
}

/// Represents a class declaration.
@JsonSerializable()
class ClassMirror extends TypeMirror
    with MethodsAwareness, SharingModifierAwareness, ClassModifiersAwareness {
  @JsonKey(name: 'extended_class')
  late final String? extendedClass;
  @JsonKey(name: 'implemented_interfaces')
  late final List<String> implementedInterfaces;

  List<PropertyMirror> properties = [];
  List<FieldMirror> fields = [];
  List<ConstructorMirror> constructors = [];
  List<EnumMirror> enums = [];
  List<InterfaceMirror> interfaces = [];
  List<ClassMirror> classes = [];

  ClassMirror(
      {required String name,
      String? rawDocComment,
      this.extendedClass,
      this.implementedInterfaces = const []})
      : super(name: name, rawDocComment: rawDocComment) {
    typeName = 'class';
  }

  factory ClassMirror.fromJson(Map<String, dynamic> json) =>
      _$ClassMirrorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClassMirrorToJson(this);

  @override
  bool isClass() {
    return true;
  }

  void addProperty(PropertyMirror property) {
    properties.add(property);
  }

  void addField(FieldMirror field) {
    fields.add(field);
  }

  void addConstructor(ConstructorMirror constructor) {
    constructors.add(constructor);
  }

  void addEnum(EnumMirror innerEnum) {
    enums.add(innerEnum);
  }

  void addInterface(InterfaceMirror innerInterface) {
    interfaces.add(innerInterface);
  }

  void addClass(ClassMirror innerClass) {
    classes.add(innerClass);
  }
}

/// Represents an interface declaration.
@JsonSerializable()
class InterfaceMirror extends TypeMirror
    with
        MethodsAwareness,
        AccessModifierAwareness,
        SharingModifierAwareness,
        AnnotationsAwareness {
  @JsonKey(name: 'extended_interfaces')
  late final List<String> extendedInterfaces;

  InterfaceMirror(
      {required String name,
      String? rawDocComment,
      this.extendedInterfaces = const []})
      : super(name: name, rawDocComment: rawDocComment) {
    typeName = 'interface';
  }

  factory InterfaceMirror.fromJson(Map<String, dynamic> json) =>
      _$InterfaceMirrorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InterfaceMirrorToJson(this);

  @override
  bool isInterface() {
    return true;
  }
}

@JsonSerializable()
class EnumValue with DocsCommentAwareness {
  final String name;
  final String? value;

  EnumValue({required this.name, this.value, String? rawDocComment}) {
    this.rawDocComment = rawDocComment;
  }

  factory EnumValue.fromJson(Map<String, dynamic> json) =>
      _$EnumValueFromJson(json);

  Map<String, dynamic> toJson() => _$EnumValueToJson(this);
}

/// Represents an enum declaration.
@JsonSerializable()
class EnumMirror extends TypeMirror {
  @JsonKey(name: 'values')
  List<EnumValue> values = [];

  EnumMirror({required String name, String? rawDocComment})
      : super(name: name, rawDocComment: rawDocComment) {
    typeName = 'enum';
  }

  factory EnumMirror.fromJson(Map<String, dynamic> json) =>
      _$EnumMirrorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EnumMirrorToJson(this);

  @override
  bool isEnum() {
    return true;
  }

  void addValue(EnumValue value) {
    values.add(value);
  }
}
