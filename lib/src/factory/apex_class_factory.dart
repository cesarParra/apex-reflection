import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/factory/apex_enum_factory.dart';
import 'package:apexdocs_dart/src/factory/apex_interface_factory.dart';
import 'package:apexdocs_dart/src/factory/type_factory.dart';
import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/utils/parsing/parsing_utils.dart';

class ApexClassFactory extends TypeFactory {
  static const int topLevel = 1, innerLevel = 2;

  var currentLevel = 1;
  Type? innerType;

  @override
  get generatedType => currentLevel == 1 ? super.generatedType : innerType!;

  ApexClassFactory(TypeDeclarationContext ctx) : super.construct() {
    generatedType = ClassModel(
        name: ctx.classDeclaration()!.id().text,
        accessModifiers: getAccessModifiers(ctx),
        extendedClass: _getExtensionClass(ctx.classDeclaration()!),
        implementedInterfaces:
            _getImplementedInterfaces(ctx.classDeclaration()!));
  }

  @override
  void enterClassBodyDeclaration(ClassBodyDeclarationContext ctx) {
    if (ctx.memberDeclaration() == null) {
      return;
    }

    // TODO: We should be parsing inner enums the same way as inner interfaces
    // and inner classes
    if (ctx.memberDeclaration()!.classDeclaration() != null) {
      // Entering an inner class
      currentLevel++;
      innerType = ClassModel(
          name: ctx.memberDeclaration()!.classDeclaration()!.id().text,
          accessModifiers: getAccessModifiers(ctx),
          extendedClass:
              _getExtensionClass(ctx.memberDeclaration()!.classDeclaration()!),
          implementedInterfaces: _getImplementedInterfaces(
              ctx.memberDeclaration()!.classDeclaration()!));
    }

    if (ctx.memberDeclaration()!.interfaceDeclaration() != null) {
      // Entering an inner interface
      currentLevel++;
      innerType = InterfaceBuilder.build(
          ctx.memberDeclaration()!.interfaceDeclaration()!, ctx);
    }

    _parseConstructor(ctx);
    _parseProperty(ctx);
    _parseEnum(ctx);
    _parseField(ctx);
    var method = parseMethod(generatedType, ctx);
    if (method != null) {
      (generatedType as MethodsAwareness).addMethod(method);
    }
  }

  @override
  void exitClassBodyDeclaration(ClassBodyDeclarationContext ctx) {
    if (currentLevel == innerLevel) {
      currentLevel--;

      if (innerType is ClassModel) {
        (generatedType as ClassModel).addClass(innerType as ClassModel);
      } else {
        (generatedType as ClassModel).addInterface(innerType as InterfaceModel);
      }

      // Clear the inner type that was being generated
      innerType = null;
    }
  }

  // TODO: This works for parsing inner interfaces but there's some duplication, plus this logic
  // should live in a place for parsing interfaces and not here. Let's refactor.
  @override
  void enterInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx) {
    var method = parseMethod(generatedType, ctx);
    if (method != null) {
      (generatedType as MethodsAwareness).addMethod(method);
    }
  }

  String? _getExtensionClass(ClassDeclarationContext ctx) {
    return ctx.typeRef()?.text;
  }

  List<String> _getImplementedInterfaces(ClassDeclarationContext ctx) {
    if (ctx.typeList()?.typeRefs() == null) {
      return [];
    }
    return ctx.typeList()!.typeRefs().map((typeRef) => typeRef.text).toList();
  }

  _parseEnum(ClassBodyDeclarationContext ctx) {
    if (ctx.memberDeclaration()!.enumDeclaration() == null) {
      return;
    }
    var enumModel =
        EnumBuilder.build(ctx.memberDeclaration()!.enumDeclaration()!, ctx);
    (generatedType as ClassModel).addEnum(enumModel);
  }

  _parseConstructor(ClassBodyDeclarationContext ctx) {
    if (ctx.memberDeclaration()!.constructorDeclaration() == null) {
      return;
    }

    var modifiers = getAccessModifiers(ctx);

    var formalParametersContext =
        ctx.memberDeclaration()!.constructorDeclaration()!.formalParameters();

    var constructor = Constructor(accessModifiers: modifiers);
    addParameter(element) {
      constructor.addParameter(element);
    }

    getFormalParameters(formalParametersContext).forEach(addParameter);
    (generatedType as ClassModel).addConstructor(constructor);
  }

  _parseProperty(ClassBodyDeclarationContext ctx) {
    if (ctx.memberDeclaration()!.propertyDeclaration() == null) {
      return;
    }

    var propertyDeclarationContext =
        ctx.memberDeclaration()!.propertyDeclaration()!;

    var propertyName = propertyDeclarationContext.id().text;
    var propertyType = propertyDeclarationContext.typeRef().text;
    var modifiers = getAccessModifiers(ctx);

    Property property = Property(
        name: propertyName, type: propertyType, accessModifiers: modifiers);
    (generatedType as ClassModel).addProperty(property);
  }

  _parseField(ClassBodyDeclarationContext ctx) {
    if (ctx.memberDeclaration()!.fieldDeclaration() == null) {
      return;
    }

    var fieldDeclarationContext = ctx.memberDeclaration()!.fieldDeclaration()!;

    // There can be more than one variable defined in the same line, so we
    // want to parse each individual one and use the same modifiers and types
    // for all of them.
    // For example: public String var1, var2;

    var fieldNames = fieldDeclarationContext
        .variableDeclarators()
        .variableDeclarators()
        .map((e) => e.id().text)
        .toList();

    var type = fieldDeclarationContext.typeRef().text;
    var modifiers = getAccessModifiers(ctx);

    addField(String fieldName) {
      Field field =
          Field(name: fieldName, type: type, accessModifiers: modifiers);
      (generatedType as ClassModel).addField(field);
    }

    fieldNames.forEach(addField);
  }
}
