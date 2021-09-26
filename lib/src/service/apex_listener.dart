import 'dart:collection';

import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParserBaseListener.dart';
import 'package:apexdocs_dart/src/builders/builders.dart';
import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/utils/parsing/parsing_utils.dart';

class DeclarationDescriptor {
  List<String> accessModifiers = [];
  String? docComment;

  DeclarationDescriptor({required this.accessModifiers, this.docComment});
}

class ApexClassListener extends ApexParserBaseListener {
  final Stack<DeclarationDescriptor> _declaratorDescriptorStack;
  final Stack<Type> generatedTypes;
  late Type generatedType;

  ApexClassListener()
      : generatedTypes = Stack<Type>(),
        _declaratorDescriptorStack = Stack<DeclarationDescriptor>();

  @override
  void enterTypeClassDeclaration(TypeClassDeclarationContext ctx) {
    final accessModifiers = getAccessModifiers(ctx);
    final docComment = ctx.DOC_COMMENT()?.text;
    _declaratorDescriptorStack.push(DeclarationDescriptor(
        accessModifiers: accessModifiers, docComment: docComment));
  }

  @override
  void enterTypeEnumDeclaration(TypeEnumDeclarationContext ctx) {
    final accessModifiers = getAccessModifiers(ctx);
    final docComment = ctx.DOC_COMMENT()?.text;
    _declaratorDescriptorStack.push(DeclarationDescriptor(
        accessModifiers: accessModifiers, docComment: docComment));
  }

  @override
  void enterTypeInterfaceDeclaration(TypeInterfaceDeclarationContext ctx) {
    final accessModifiers = getAccessModifiers(ctx);
    final docComment = ctx.DOC_COMMENT()?.text;
    _declaratorDescriptorStack.push(DeclarationDescriptor(
        accessModifiers: accessModifiers, docComment: docComment));
  }

  @override
  void enterClassDeclaration(ClassDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    generatedTypes.push(buildClass(declarationDescriptor, ctx));
  }

  @override
  void enterInterfaceDeclaration(InterfaceDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    generatedTypes.push(buildInterface(declarationDescriptor, ctx));
  }

  @override
  void enterEnumDeclaration(EnumDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    final enumName = ctx.id().text;
    final enumModel = EnumModel(
        name: enumName,
        docComment: declarationDescriptor.docComment,
        accessModifiers: declarationDescriptor.accessModifiers);
    generatedTypes.push(enumModel);
  }

  @override
  void enterMemberClassBodyDeclaration(MemberClassBodyDeclarationContext ctx) {
    final accessModifiers = getAccessModifiers(ctx);
    final docComment = ctx.DOC_COMMENT()?.text;
    _declaratorDescriptorStack.push(DeclarationDescriptor(
        accessModifiers: accessModifiers, docComment: docComment));
  }

  @override
  void enterPropertyDeclaration(PropertyDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    final propertyName = ctx.id().text;
    final type = ctx.typeRef().text;

    final property = Property(
        name: propertyName,
        docComment: declarationDescriptor.docComment,
        type: type,
        accessModifiers: declarationDescriptor.accessModifiers);
    (generatedTypes.peak() as ClassModel).addProperty(property);
  }

  @override
  void enterFieldDeclaration(FieldDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    final typeName = ctx.typeRef().text;
    final fieldNames =
        ctx.variableDeclarators().variableDeclarators().map((e) => e.text);
    (generatedTypes.peak() as ClassModel).fields.addAll(fieldNames.map((e) =>
        Field(
            name: e,
            docComment: declarationDescriptor.docComment,
            type: typeName,
            accessModifiers: declarationDescriptor.accessModifiers)));
  }

  @override
  void enterMethodDeclaration(MethodDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    final methodName = ctx.id().text;
    final typeName = ctx.typeRef() != null ? ctx.typeRef().text : 'void';

    List<Parameter>? parameters = parseParameters(ctx);

    final method = Method(
        name: methodName,
        docComment: declarationDescriptor.docComment,
        type: typeName,
        accessModifiers: declarationDescriptor.accessModifiers);
    method.parameters = parameters ?? [];

    (generatedTypes.peak() as MethodsAwareness).methods.add(method);
  }

  @override
  void enterInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx) {
    final docComment = ctx.DOC_COMMENT()?.text;
    // Interface methods inherit the access modifiers of the parent declaration.
    final accessModifiers = generatedTypes.peak().accessModifiers;
    final methodName = ctx.id().text;
    final typeName = ctx.typeRef() != null ? ctx.typeRef().text : 'void';

    List<Parameter>? parameters = parseParameters(ctx);

    final method = Method(
        name: methodName,
        docComment: docComment,
        type: typeName,
        accessModifiers: accessModifiers);
    method.parameters = parameters ?? [];

    (generatedTypes.peak() as MethodsAwareness).methods.add(method);
  }

  @override
  void enterConstructorDeclaration(ConstructorDeclarationContext ctx) {
    final declaratorDescriptor = _declaratorDescriptorStack.pop();
    List<Parameter>? parameters = parseParameters(ctx);
    final constructorGenerated = Constructor(
        docComment: declaratorDescriptor.docComment,
        accessModifiers: declaratorDescriptor.accessModifiers);
    constructorGenerated.parameters = parameters ?? [];

    (generatedTypes.peak() as ClassModel)
        .constructors
        .add(constructorGenerated);
  }

  @override
  void exitClassDeclaration(ClassDeclarationContext ctx) {
    _onExitDeclaration();
  }

  @override
  void exitEnumDeclaration(EnumDeclarationContext ctx) {
    _onExitDeclaration();
  }

  @override
  void exitInterfaceDeclaration(InterfaceDeclarationContext ctx) {
    _onExitDeclaration();
  }

  void _onExitDeclaration() {
    if (_atTheTopOfTheStack()) {
      // If we are at the top level of the class, then parsing has finalized,
      // so we want to pop the last item of the stack and set that as the
      // generated type.
      generatedType = generatedTypes.pop();
      return;
    }

    // Otherwise then we want to add this as an inner class to whoever is on top.
    final currentGeneratedType = generatedTypes.pop();
    var topLevelClass = generatedTypes.peak() as ClassModel;
    if (currentGeneratedType.isClass()) {
      topLevelClass.addClass(currentGeneratedType as ClassModel);
    } else if (currentGeneratedType.isEnum()) {
      topLevelClass.addEnum(currentGeneratedType as EnumModel);
    } else {
      topLevelClass.addInterface(currentGeneratedType as InterfaceModel);
    }
  }

  bool _atTheTopOfTheStack() {
    return generatedTypes.length == 1;
  }
}

class Stack<T> {
  final _stack = Queue<T>();

  int get length => _stack.length;

  bool canPop() => _stack.isNotEmpty;

  void clearStack() {
    while (_stack.isNotEmpty) {
      _stack.removeLast();
    }
  }

  void push(T element) {
    _stack.addLast(element);
  }

  T pop() {
    T lastElement = _stack.last;
    _stack.removeLast();
    return lastElement;
  }

  T peak() => _stack.last;
}
