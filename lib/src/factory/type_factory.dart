import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParserBaseListener.dart';
import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/utils/parsing/parsing_utils.dart';

import 'apex_class_factory.dart';
import 'apex_enum_factory.dart';
import 'apex_interface_factory.dart';

class TypeFactory extends ApexParserBaseListener {
  late Type generatedType;

  factory TypeFactory(TypeDeclarationContext typeDeclarationContext) {
    if (typeDeclarationContext.classDeclaration() != null) {
      return ApexClassFactory(typeDeclarationContext);
    } else if (typeDeclarationContext.interfaceDeclaration() != null) {
      return ApexInterfaceFactory(typeDeclarationContext);
    }

    return ApexEnumFactory(typeDeclarationContext);
  }

  TypeFactory.construct();
}
