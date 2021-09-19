import 'package:apexdocs_dart/src/model/declaration.dart';

class Property extends Declaration {
  Property({required String name, List<String> accessModifiers = const []})
      : super(name: name, accessModifiers: accessModifiers);
}
