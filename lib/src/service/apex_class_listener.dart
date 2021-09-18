import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParserBaseListener.dart';
import 'package:apexdocs_dart/src/model/class_model.dart';

class ApexClassListener extends ApexParserBaseListener {
  ClassModel? generatedClass;

  @override
  void enterTypeDeclaration(TypeDeclarationContext ctx) {
    generatedClass = ClassModel(
        name: ctx.classDeclaration().id().text,
        accessModifiers: _getAccessModifiers(ctx),
        extendedClass: _getExtensionClass(ctx),
        implementedInterfaces: _getImplementedInterfaces(ctx));
  }

  List<String> _getAccessModifiers(TypeDeclarationContext ctx) {
    bool _hasNoAccessModifiers(TypeDeclarationContext ctx) {
      var modifiers = _allClassModifiers(ctx);
      return !modifiers.contains('private') &&
          !modifiers.contains('public') &&
          !modifiers.contains('global') &&
          !modifiers.contains('protected');
    }

    var accessModifiers = [
      if (_hasNoAccessModifiers(ctx)) 'private',
      ..._allClassModifiers(ctx)
    ];
    return accessModifiers;
  }

  List<String> _allClassModifiers(TypeDeclarationContext ctx) {
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
        .toList();
  }

  String? _getExtensionClass(TypeDeclarationContext ctx) {
    return ctx.classDeclaration().typeRef()?.text;
  }

  List<String> _getImplementedInterfaces(TypeDeclarationContext ctx) {
    if (ctx.classDeclaration().typeList()?.typeRefs() == null) {
      return [];
    }
    return ctx
        .classDeclaration()
        .typeList()!
        .typeRefs()
        .map((typeRef) => typeRef.text)
        .toList();
  }
}
