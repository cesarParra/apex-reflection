import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/factory/type_factory.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/utils/parsing/parsing_utils.dart';

class ApexInterfaceFactory extends TypeFactory {
  ApexInterfaceFactory(TypeDeclarationContext ctx) : super.construct(ctx) {
    generatedType = InterfaceModel(
        name: ctx.interfaceDeclaration()!.id().text,
        accessModifiers: getAccessModifiers(ctx),
        extendedInterfaces: _getExtensionInterfaces(ctx));
  }

  List<String> _getExtensionInterfaces(TypeDeclarationContext ctx) {
    if (ctx.interfaceDeclaration()!.typeList()?.typeRefs() == null) {
      return [];
    }
    return ctx
        .interfaceDeclaration()!
        .typeList()!
        .typeRefs()
        .map((typeRef) => typeRef.text)
        .toList();
  }

  @override
  void enterInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx) {
    var method = parseMethod(generatedType, ctx);
    if (method != null) {
      (generatedType as MethodsAwareness).addMethod(method);
    }
  }
}
