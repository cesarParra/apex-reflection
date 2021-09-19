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

    MemberDeclarationContext memberDeclarationContext =
        ctx.memberDeclaration()!;

    if (memberDeclarationContext.propertyDeclaration() == null) {
      return;
    }

    PropertyDeclarationContext propertyDeclarationContext =
        memberDeclarationContext.propertyDeclaration()!;

    var propertyName = propertyDeclarationContext.id().text;
    var modifiers = _getAccessModifiers(ctx);

    Property property =
        Property(name: propertyName, accessModifiers: modifiers);
    (generatedType as ClassModel).addProperty(property);
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
