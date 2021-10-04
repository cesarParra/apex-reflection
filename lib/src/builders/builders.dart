import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/apex_listener.dart';

ClassMirror buildClass(
    DeclarationDescriptor descriptor, ClassDeclarationContext ctx) {
  final className = ctx.id().text;
  final extendedClass = ctx.EXTENDS() != null ? ctx.typeRef().text : null;
  final implementedInterfaces = ctx.IMPLEMENTS() != null
      ? ctx.typeList().typeRefs().map((e) => e.text).toList()
      : <String>[];

  return ClassMirror(
      name: className,
      accessModifiers: descriptor.accessModifiers,
      docComment: descriptor.docComment,
      extendedClass: extendedClass,
      implementedInterfaces: implementedInterfaces);
}

InterfaceMirror buildInterface(
    DeclarationDescriptor descriptor, InterfaceDeclarationContext ctx) {
  final interfaceName = ctx.id().text;
  final extendsInterfaces = ctx.EXTENDS() != null
      ? ctx.typeList().typeRefs().map((e) => e.text).toList()
      : <String>[];
  return InterfaceMirror(
      name: interfaceName,
      docComment: descriptor.docComment,
      accessModifiers: descriptor.accessModifiers,
      extendedInterfaces: extendsInterfaces);
}
