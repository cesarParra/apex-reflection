import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/factory/type_factory.dart';
import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/utils/parsing/parsing_utils.dart';

class ApexClassFactory extends TypeFactory {
  ApexClassFactory(TypeDeclarationContext ctx) : super.construct(ctx) {
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

  @override
  void enterClassBodyDeclaration(ClassBodyDeclarationContext ctx) {
    if (ctx.memberDeclaration() == null) {
      return;
    }

    _parseConstructor(ctx);
    _parseProperty(ctx);
    _parseField(ctx);
    var method = parseMethod(generatedType, ctx);
    if (method != null) {
      (generatedType as MethodsAwareness).addMethod(method);
    }
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
