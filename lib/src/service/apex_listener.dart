import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParserBaseListener.dart';
import 'package:apexdocs_dart/src/factory/type_factory.dart';

class ApexClassListener extends ApexParserBaseListener {
  late TypeFactory factory;

  get generatedType => factory.generatedType;

  @override
  void enterTypeDeclaration(TypeDeclarationContext ctx) {
    factory = TypeFactory(ctx);
  }

  @override
  void enterClassBodyDeclaration(ClassBodyDeclarationContext ctx) {
    factory.enterClassBodyDeclaration(ctx);
  }

  @override
  void enterInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx) {
    factory.enterInterfaceMethodDeclaration(ctx);
  }
}
