import 'package:apexdocs_dart/src/model/declaration.dart';

class Property extends Declaration {
  final String type;

  Property(
      {required String name,
      required this.type,
      List<String> accessModifiers = const []})
      : super(name: name, accessModifiers: accessModifiers);
}
