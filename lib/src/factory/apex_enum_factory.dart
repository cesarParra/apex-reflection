import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/factory/type_factory.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/utils/parsing/parsing_utils.dart';

class ApexEnumFactory extends TypeFactory {
  ApexEnumFactory(TypeDeclarationContext ctx) : super.construct(ctx) {
    generatedType = EnumModel(
        name: ctx.enumDeclaration().id().text,
        accessModifiers: getAccessModifiers(ctx));
  }
}
