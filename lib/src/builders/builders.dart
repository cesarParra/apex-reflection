import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/apex_listener.dart';

ClassModel buildClass(
    DeclarationDescriptor descriptor, ClassDeclarationContext ctx) {
  final className = ctx.id().text;
  final extendedClass = ctx.EXTENDS() != null ? ctx.typeRef().text : null;
  final implementedInterfaces = ctx.IMPLEMENTS() != null
      ? ctx.typeList().typeRefs().map((e) => e.text).toList()
      : <String>[];

  return ClassModel(
      name: className,
      accessModifiers: descriptor.accessModifiers,
      docComment: descriptor.docComment,
      extendedClass: extendedClass,
      implementedInterfaces: implementedInterfaces);
}

InterfaceModel buildInterface(
    List<String> accessModifiers, InterfaceDeclarationContext ctx) {
  final interfaceName = ctx.id().text;
  final extendsInterfaces = ctx.EXTENDS() != null
      ? ctx.typeList().typeRefs().map((e) => e.text).toList()
      : <String>[];
  return InterfaceModel(
      name: interfaceName,
      accessModifiers: accessModifiers,
      extendedInterfaces: extendsInterfaces);
}
