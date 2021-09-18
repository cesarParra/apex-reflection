import 'package:apexdocs_dart/src/model/type_model.dart';

class InterfaceModel extends TypeModel {
  final List<String> extendedInterfaces;

  InterfaceModel(
      {required String name,
      List<String> accessModifiers = const [],
      this.extendedInterfaces = const []})
      : super(name: name, accessModifiers: accessModifiers);
}
