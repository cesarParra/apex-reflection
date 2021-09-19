import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/utils/parsing_utils.dart';

class TypeFactory {
  final TypeDeclarationContext typeDeclarationContext;
  late Type generatedType;

  factory TypeFactory(TypeDeclarationContext typeDeclarationContext) {
    if (typeDeclarationContext.classDeclaration() != null) {
      return ApexClassFactory(typeDeclarationContext);
    } else if (typeDeclarationContext.interfaceDeclaration() != null) {
      return ApexInterfaceFactory(typeDeclarationContext);
    }

    return ApexEnumFactory(typeDeclarationContext);
  }

  TypeFactory._internal(this.typeDeclarationContext);
}

class ApexClassFactory extends TypeFactory {
  ApexClassFactory(TypeDeclarationContext ctx) : super._internal(ctx) {
    generatedType = ClassModel(
        name: ctx.classDeclaration()!.id().text,
        accessModifiers: getAccessModifiers(ctx),
        extendedClass: _getExtensionClass(ctx),
        implementedInterfaces: _getImplementedInterfaces(ctx));
  }

  String? _getExtensionClass(TypeDeclarationContext ctx) {
    return ctx.classDeclaration()!.typeRef()?.text;
  }

  List<String> _getImplementedInterfaces(TypeDeclarationContext ctx) {
    if (ctx.classDeclaration()!.typeList()?.typeRefs() == null) {
      return [];
    }
    return ctx
        .classDeclaration()!
        .typeList()!
        .typeRefs()
        .map((typeRef) => typeRef.text)
        .toList();
  }
}

class ApexInterfaceFactory extends TypeFactory {
  ApexInterfaceFactory(TypeDeclarationContext ctx) : super._internal(ctx) {
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
}

class ApexEnumFactory extends TypeFactory {
  ApexEnumFactory(TypeDeclarationContext ctx) : super._internal(ctx) {
    generatedType = EnumModel(
        name: ctx.enumDeclaration().id().text,
        accessModifiers: getAccessModifiers(ctx));
  }
}
