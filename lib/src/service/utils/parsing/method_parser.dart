// import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
// import 'package:apexdocs_dart/src/model/members.dart';
// import 'package:apexdocs_dart/src/model/types.dart';
//
// import 'access_modifiers_parser.dart';
//
// parseMethod(Type generatedType, dynamic ctx) {
//   if (ctx is ClassBodyDeclarationContext) {
//     if (ctx.memberDeclaration()!.methodDeclaration() == null) {
//       return null;
//     }
//   }
//   var objectContext = ctx is ClassBodyDeclarationContext
//       ? ApexObjectBodyDeclarationContext.fromClassBodyDeclarationContext(ctx)
//       : ApexObjectBodyDeclarationContext.fromInterfaceMethodDeclarationContext(
//           ctx);
//
//   var modifiers = getAccessModifiers(objectContext.modifiersAwareContext);
//   var type = objectContext.typeAwareContext.typeRef() != null
//       ? objectContext.typeAwareContext.typeRef()!.text
//       : 'void';
//   var methodName = objectContext.idAwareContext.id().text;
//   var parameters = getFormalParameters(
//       objectContext.parametersAwareContext.formalParameters());
//
//   if (objectContext.inheritModifiers) {
//     modifiers = [...modifiers, ...generatedType.accessModifiers];
//   }
//
//   Method method =
//       Method(name: methodName, type: type, accessModifiers: modifiers);
//   addParameter(element) {
//     method.addParameter(element);
//   }
//
//   parameters.forEach(addParameter);
//   return method;
// }
//
// List<Parameter> getFormalParameters(
//     FormalParametersContext formalParametersContext) {
//   if (formalParametersContext.formalParameterList() == null) {
//     return <Parameter>[];
//   }
//   return formalParametersContext
//       .formalParameterList()!
//       .formalParameters()
//       .map((e) => Parameter(
//           name: e.id().text,
//           type: e.typeRef().text,
//           accessModifiers: getAccessModifiers(e)))
//       .toList();
// }
//
// class ApexObjectBodyDeclarationContext {
//   final dynamic _modifiersAwareContext;
//   final dynamic _typeAwareContext;
//   final dynamic _idAwareContext;
//   final dynamic _parametersAwareContext;
//   final bool _inheritModifiers;
//
//   ApexObjectBodyDeclarationContext.fromClassBodyDeclarationContext(
//       ClassBodyDeclarationContext ctx)
//       : _modifiersAwareContext = ctx,
//         _typeAwareContext = ctx.memberDeclaration()!.methodDeclaration()!,
//         _idAwareContext = ctx.memberDeclaration()!.methodDeclaration()!,
//         _parametersAwareContext = ctx.memberDeclaration()!.methodDeclaration()!,
//         _inheritModifiers = false;
//
//   ApexObjectBodyDeclarationContext.fromInterfaceMethodDeclarationContext(
//       InterfaceMethodDeclarationContext ctx)
//       : _modifiersAwareContext = ctx,
//         _typeAwareContext = ctx,
//         _idAwareContext = ctx,
//         _parametersAwareContext = ctx,
//         _inheritModifiers = true;
//
//   get modifiersAwareContext => _modifiersAwareContext;
//
//   get typeAwareContext => _typeAwareContext;
//
//   get idAwareContext => _idAwareContext;
//
//   get parametersAwareContext => _parametersAwareContext;
//
//   get inheritModifiers => _inheritModifiers;
// }
// import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
// import 'package:apexdocs_dart/src/model/members.dart';
// import 'package:apexdocs_dart/src/model/types.dart';
//
// import 'access_modifiers_parser.dart';
//
// parseMethod(Type generatedType, dynamic ctx) {
//   if (ctx is ClassBodyDeclarationContext) {
//     if (ctx.memberDeclaration()!.methodDeclaration() == null) {
//       return null;
//     }
//   }
//   var objectContext = ctx is ClassBodyDeclarationContext
//       ? ApexObjectBodyDeclarationContext.fromClassBodyDeclarationContext(ctx)
//       : ApexObjectBodyDeclarationContext.fromInterfaceMethodDeclarationContext(
//           ctx);
//
//   var modifiers = getAccessModifiers(objectContext.modifiersAwareContext);
//   var type = objectContext.typeAwareContext.typeRef() != null
//       ? objectContext.typeAwareContext.typeRef()!.text
//       : 'void';
//   var methodName = objectContext.idAwareContext.id().text;
//   var parameters = getFormalParameters(
//       objectContext.parametersAwareContext.formalParameters());
//
//   if (objectContext.inheritModifiers) {
//     modifiers = [...modifiers, ...generatedType.accessModifiers];
//   }
//
//   Method method =
//       Method(name: methodName, type: type, accessModifiers: modifiers);
//   addParameter(element) {
//     method.addParameter(element);
//   }
//
//   parameters.forEach(addParameter);
//   return method;
// }
//
// List<Parameter> getFormalParameters(
//     FormalParametersContext formalParametersContext) {
//   if (formalParametersContext.formalParameterList() == null) {
//     return <Parameter>[];
//   }
//   return formalParametersContext
//       .formalParameterList()!
//       .formalParameters()
//       .map((e) => Parameter(
//           name: e.id().text,
//           type: e.typeRef().text,
//           accessModifiers: getAccessModifiers(e)))
//       .toList();
// }
//
// class ApexObjectBodyDeclarationContext {
//   final dynamic _modifiersAwareContext;
//   final dynamic _typeAwareContext;
//   final dynamic _idAwareContext;
//   final dynamic _parametersAwareContext;
//   final bool _inheritModifiers;
//
//   ApexObjectBodyDeclarationContext.fromClassBodyDeclarationContext(
//       ClassBodyDeclarationContext ctx)
//       : _modifiersAwareContext = ctx,
//         _typeAwareContext = ctx.memberDeclaration()!.methodDeclaration()!,
//         _idAwareContext = ctx.memberDeclaration()!.methodDeclaration()!,
//         _parametersAwareContext = ctx.memberDeclaration()!.methodDeclaration()!,
//         _inheritModifiers = false;
//
//   ApexObjectBodyDeclarationContext.fromInterfaceMethodDeclarationContext(
//       InterfaceMethodDeclarationContext ctx)
//       : _modifiersAwareContext = ctx,
//         _typeAwareContext = ctx,
//         _idAwareContext = ctx,
//         _parametersAwareContext = ctx,
//         _inheritModifiers = true;
//
//   get modifiersAwareContext => _modifiersAwareContext;
//
//   get typeAwareContext => _typeAwareContext;
//
//   get idAwareContext => _idAwareContext;
//
//   get parametersAwareContext => _parametersAwareContext;
//
//   get inheritModifiers => _inheritModifiers;
// }
