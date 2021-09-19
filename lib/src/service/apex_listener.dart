import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParserBaseListener.dart';
import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/types.dart';

class ApexClassListener extends ApexParserBaseListener {
  Type? generatedType;

  @override
  void enterTypeDeclaration(TypeDeclarationContext ctx) {
    if (ctx.classDeclaration() != null) {
      generatedType = ClassModel(
          name: ctx.classDeclaration()!.id().text,
          accessModifiers: _getAccessModifiers(ctx),
          extendedClass: _getExtensionClass(ctx),
          implementedInterfaces: _getImplementedInterfaces(ctx));
    } else if (ctx.interfaceDeclaration() != null) {
      generatedType = InterfaceModel(
          name: ctx.interfaceDeclaration()!.id().text,
          accessModifiers: _getAccessModifiers(ctx),
          extendedInterfaces: _getExtensionInterfaces(ctx));
    } else {
      generatedType = EnumModel(
          name: ctx.enumDeclaration().id().text,
          accessModifiers: _getAccessModifiers(ctx));
    }
  }

  @override
  void enterClassBodyDeclaration(ClassBodyDeclarationContext ctx) {
    if (generatedType?.isClass() != true) {
      return;
    }

    if (ctx.memberDeclaration() == null) {
      return;
    }

    _parseProperties(ctx);
    _parseFields(ctx);
    _parseMethods(ctx);
  }

  _parseProperties(ClassBodyDeclarationContext ctx) {
    if (ctx.memberDeclaration()!.propertyDeclaration() == null) {
      return;
    }

    var propertyDeclarationContext =
        ctx.memberDeclaration()!.propertyDeclaration()!;

    var propertyName = propertyDeclarationContext.id().text;
    var propertyType = propertyDeclarationContext.typeRef().text;
    var modifiers = _getAccessModifiers(ctx);

    Property property = Property(
        name: propertyName, type: propertyType, accessModifiers: modifiers);
    (generatedType as ClassModel).addProperty(property);
  }

  _parseFields(ClassBodyDeclarationContext ctx) {
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
    var modifiers = _getAccessModifiers(ctx);

    addField(String fieldName) {
      Field field =
          Field(name: fieldName, type: type, accessModifiers: modifiers);
      (generatedType as ClassModel).addField(field);
    }

    fieldNames.forEach(addField);
  }

  _parseMethods(ClassBodyDeclarationContext ctx) {
    if (ctx.memberDeclaration()!.methodDeclaration() == null) {
      return;
    }

    var methodDeclarationContext =
        ctx.memberDeclaration()!.methodDeclaration()!;

    var modifiers = _getAccessModifiers(ctx);
    var type = methodDeclarationContext.typeRef() != null
        ? methodDeclarationContext.typeRef()!.text
        : 'void';
    var methodName = methodDeclarationContext.id().text;
    var parameters = [];

    var formalParametersContext = methodDeclarationContext.formalParameters();
    if (formalParametersContext.formalParameterList() != null) {
      parameters = formalParametersContext
          .formalParameterList()!
          .formalParameters()
          .map((e) => Parameter(
              name: e.id().text,
              type: e.typeRef().text,
              accessModifiers: _getAccessModifiers(e)))
          .toList();
    }

    Method method =
        Method(name: methodName, type: type, accessModifiers: modifiers);
    addParameter(element) {
      method.addParameter(element);
    }

    parameters.forEach(addParameter);
    (generatedType as ClassModel).addMethod(method);
  }

  List<String> _getAccessModifiers(dynamic ctx) {
    bool _hasNoAccessModifiers(dynamic ctx) {
      var modifiers = _allModifiers(ctx);
      return !modifiers.contains('private') &&
          !modifiers.contains('public') &&
          !modifiers.contains('global') &&
          !modifiers.contains('protected');
    }

    var accessModifiers = [
      if (_hasNoAccessModifiers(ctx)) 'private',
      ..._allModifiers(ctx)
    ];
    return accessModifiers;
  }

  List<String> _allModifiers(dynamic ctx) {
    String _sanitizeModifier(String modifier) {
      var sanitizedString = modifier.replaceFirst('@', '').toLowerCase();
      if (sanitizedString.contains('(')) {
        sanitizedString = sanitizedString.replaceRange(
            modifier.indexOf('(') - 1, modifier.indexOf(')'), '');
      }
      return sanitizedString;
    }

    return ctx
        .modifiers()
        .map((modifierContext) => _sanitizeModifier(modifierContext.text))
        .toList()
        .cast<String>();
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
