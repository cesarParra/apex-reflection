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
    if (ctx.memberDeclaration() == null) {
      return;
    }

    _parseConstructor(ctx);
    _parseProperty(ctx);
    _parseField(ctx);
    _parseMethod(ctx);
  }

  @override
  void enterInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx) {
    _parseMethod(ctx);
  }

  _parseConstructor(ClassBodyDeclarationContext ctx) {
    if (ctx.memberDeclaration()!.constructorDeclaration() == null) {
      return;
    }

    var modifiers = _getAccessModifiers(ctx);

    var formalParametersContext =
        ctx.memberDeclaration()!.constructorDeclaration()!.formalParameters();

    var constructor = Constructor(accessModifiers: modifiers);
    addParameter(element) {
      constructor.addParameter(element);
    }

    _getFormalParameters(formalParametersContext).forEach(addParameter);
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
    var modifiers = _getAccessModifiers(ctx);

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
    var modifiers = _getAccessModifiers(ctx);

    addField(String fieldName) {
      Field field =
          Field(name: fieldName, type: type, accessModifiers: modifiers);
      (generatedType as ClassModel).addField(field);
    }

    fieldNames.forEach(addField);
  }

  _parseMethod(dynamic ctx) {
    if (ctx is ClassBodyDeclarationContext) {
      if (ctx.memberDeclaration()!.methodDeclaration() == null) {
        return;
      }
    }
    var objectContext = ctx is ClassBodyDeclarationContext
        ? ApexObjectBodyDeclarationContext.fromClassBodyDeclarationContext(ctx)
        : ApexObjectBodyDeclarationContext
            .fromInterfaceMethodDeclarationContext(ctx);

    var modifiers = _getAccessModifiers(objectContext.modifiersAwareContext);
    var type = objectContext.typeAwareContext.typeRef() != null
        ? objectContext.typeAwareContext.typeRef()!.text
        : 'void';
    var methodName = objectContext.idAwareContext.id().text;
    var parameters = _getFormalParameters(
        objectContext.parametersAwareContext.formalParameters());

    if (objectContext.inheritModifiers) {
      modifiers = [
        ...modifiers,
        if (generatedType != null) ...generatedType!.accessModifiers
      ];
    }

    Method method =
        Method(name: methodName, type: type, accessModifiers: modifiers);
    addParameter(element) {
      method.addParameter(element);
    }

    parameters.forEach(addParameter);
    (generatedType as MethodsAwareness).addMethod(method);
  }

  List<String> _getAccessModifiers(dynamic ctx) {
    bool _hasNoVisibilityModifiers(dynamic ctx) {
      var modifiers = _allModifiers(ctx);
      return !modifiers.contains('private') &&
          !modifiers.contains('public') &&
          !modifiers.contains('global') &&
          !modifiers.contains('protected');
    }

    var accessModifiers = [
      // In Apex a declaration with no visibility modifier is private by default
      if (_hasNoVisibilityModifiers(ctx)) 'private',
      ..._allModifiers(ctx)
    ];
    return accessModifiers;
  }

  List<Parameter> _getFormalParameters(
      FormalParametersContext formalParametersContext) {
    if (formalParametersContext.formalParameterList() == null) {
      return <Parameter>[];
    }
    return formalParametersContext
        .formalParameterList()!
        .formalParameters()
        .map((e) => Parameter(
            name: e.id().text,
            type: e.typeRef().text,
            accessModifiers: _getAccessModifiers(e)))
        .toList();
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

class ApexObjectBodyDeclarationContext {
  final dynamic _modifiersAwareContext;
  final dynamic _typeAwareContext;
  final dynamic _idAwareContext;
  final dynamic _parametersAwareContext;
  final bool _inheritModifiers;

  ApexObjectBodyDeclarationContext.fromClassBodyDeclarationContext(
      ClassBodyDeclarationContext ctx)
      : _modifiersAwareContext = ctx,
        _typeAwareContext = ctx.memberDeclaration()!.methodDeclaration()!,
        _idAwareContext = ctx.memberDeclaration()!.methodDeclaration()!,
        _parametersAwareContext = ctx.memberDeclaration()!.methodDeclaration()!,
        _inheritModifiers = false;

  ApexObjectBodyDeclarationContext.fromInterfaceMethodDeclarationContext(
      InterfaceMethodDeclarationContext ctx)
      : _modifiersAwareContext = ctx,
        _typeAwareContext = ctx,
        _idAwareContext = ctx,
        _parametersAwareContext = ctx,
        _inheritModifiers = true;

  get modifiersAwareContext => _modifiersAwareContext;

  get typeAwareContext => _typeAwareContext;

  get idAwareContext => _idAwareContext;

  get parametersAwareContext => _parametersAwareContext;

  get inheritModifiers => _inheritModifiers;
}
