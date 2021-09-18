class ClassModel {
  final String name;
  final List<String> accessModifiers;
  final String? extendedClass;
  final List<String> implementedInterfaces;

  ClassModel(
      {required this.name,
      this.accessModifiers = const [],
      this.extendedClass,
      this.implementedInterfaces = const []});
}
