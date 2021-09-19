import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/factory/type_factory.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/utils/parsing/parsing_utils.dart';

class ApexInterfaceFactory extends TypeFactory {
  ApexInterfaceFactory(TypeDeclarationContext ctx) : super.construct() {
    generatedType = InterfaceBuilder.build(ctx.interfaceDeclaration()!, ctx);
  }

  @override
  void enterInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx) {
    var method = parseMethod(generatedType, ctx);
    if (method != null) {
      (generatedType as MethodsAwareness).addMethod(method);
    }
  }
}

class InterfaceBuilder {
  static InterfaceModel build(
      InterfaceDeclarationContext interfaceDeclarationContext,
      dynamic modifierContext) {
    return InterfaceModel(
        name: interfaceDeclarationContext.id().text,
        accessModifiers: getAccessModifiers(modifierContext),
        extendedInterfaces:
            _getExtensionInterfaces(interfaceDeclarationContext));
  }

  static List<String> _getExtensionInterfaces(InterfaceDeclarationContext ctx) {
    if (ctx.typeList()?.typeRefs() == null) {
      return [];
    }
    return ctx.typeList()!.typeRefs().map((typeRef) => typeRef.text).toList();
  }
}
