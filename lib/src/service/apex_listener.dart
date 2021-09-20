import 'dart:collection';

import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParserBaseListener.dart';
import 'package:apexdocs_dart/src/builders/builders.dart';
import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/utils/parsing/parsing_utils.dart';

class ApexClassListener extends ApexParserBaseListener {
  // TODO: Access modifiers are part of the model and should be represented by an object
  final Stack<List<String>> _accessModifierStack;
  final Stack<Type> generatedTypes;
  late Type generatedType;

  ApexClassListener()
      : generatedTypes = Stack<Type>(),
        _accessModifierStack = Stack<List<String>>();

  @override
  void enterTypeClassDeclaration(TypeClassDeclarationContext ctx) {
    final accessModifiers = getAccessModifiers(ctx);
    _accessModifierStack.push(accessModifiers);
  }

  @override
  void enterTypeEnumDeclaration(TypeEnumDeclarationContext ctx) {
    final accessModifiers = getAccessModifiers(ctx);
    _accessModifierStack.push(accessModifiers);
  }

  @override
  void enterTypeInterfaceDeclaration(TypeInterfaceDeclarationContext ctx) {
    final accessModifiers = getAccessModifiers(ctx);
    _accessModifierStack.push(accessModifiers);
  }

  @override
  void enterClassDeclaration(ClassDeclarationContext ctx) {
    final accessModifiers = _accessModifierStack.pop();
    generatedTypes.push(buildClass(accessModifiers, ctx));
  }

  @override
  void enterInterfaceDeclaration(InterfaceDeclarationContext ctx) {
    final accessModifiers = _accessModifierStack.pop();
    final interfaceName = ctx.id().text;
    final extendsInterfaces = ctx.EXTENDS() != null
        ? ctx.typeList().typeRefs().map((e) => e.text).toList()
        : <String>[];
    final interfaceModel = InterfaceModel(
        name: interfaceName,
        accessModifiers: accessModifiers,
        extendedInterfaces: extendsInterfaces);
    generatedTypes.push(interfaceModel);
  }

  @override
  void enterEnumDeclaration(EnumDeclarationContext ctx) {
    final accessModifiers = _accessModifierStack.pop();
    final enumName = ctx.id().text;
    final enumModel =
        EnumModel(name: enumName, accessModifiers: accessModifiers);
    generatedTypes.push(enumModel);
  }

  @override
  void enterMemberClassBodyDeclaration(MemberClassBodyDeclarationContext ctx) {
    final accessModifiers = getAccessModifiers(ctx);
    _accessModifierStack.push(accessModifiers);
  }

  @override
  void enterPropertyDeclaration(PropertyDeclarationContext ctx) {
    final accessModifiers = _accessModifierStack.pop();
    final propertyName = ctx.id().text;
    final type = ctx.typeRef().text;

    final property = Property(
        name: propertyName, type: type, accessModifiers: accessModifiers);
    (generatedTypes.peak() as ClassModel).addProperty(property);
  }

  @override
  void enterFieldDeclaration(FieldDeclarationContext ctx) {
    final accessModifiers = _accessModifierStack.pop();
    final typeName = ctx.typeRef().text;
    final fieldNames =
        ctx.variableDeclarators().variableDeclarators().map((e) => e.text);
    (generatedTypes.peak() as ClassModel).fields.addAll(fieldNames.map((e) =>
        Field(name: e, type: typeName, accessModifiers: accessModifiers)));
  }

  @override
  void enterMethodDeclaration(MethodDeclarationContext ctx) {
    final accessModifiers = _accessModifierStack.pop();
    final methodName = ctx.id().text;
    final typeName = ctx.typeRef() != null ? ctx.typeRef().text : 'void';

    List<Parameter>? parameters = _parseParameters(ctx);

    final method = Method(
        name: methodName, type: typeName, accessModifiers: accessModifiers);
    method.parameters = parameters ?? [];

    (generatedTypes.peak() as MethodsAwareness).methods.add(method);
  }

  @override
  void enterInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx) {
    // Interface methods inherit the access modifiers of the parent declaration.
    final accessModifiers = generatedTypes.peak().accessModifiers;
    final methodName = ctx.id().text;
    final typeName = ctx.typeRef() != null ? ctx.typeRef().text : 'void';

    List<Parameter>? parameters = _parseParameters(ctx);

    final method = Method(
        name: methodName, type: typeName, accessModifiers: accessModifiers);
    method.parameters = parameters ?? [];

    (generatedTypes.peak() as MethodsAwareness).methods.add(method);
  }

  @override
  void enterConstructorDeclaration(ConstructorDeclarationContext ctx) {
    final accessModifiers = _accessModifierStack.pop();

    List<Parameter>? parameters = _parseParameters(ctx);

    final constructorGenerated = Constructor(accessModifiers: accessModifiers);
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

  List<Parameter>? _parseParameters(dynamic ctx) {
    final parameters = ctx
        .formalParameters()
        ?.formalParameterList()
        ?.formalParameters()
        .map((e) => Parameter(
            name: e.id().text,
            type: e.typeRef().text,
            accessModifiers: e
                .modifiers()
                .map((e) => e.text as String)
                .toList()
                .cast<String>()))
        .toList();
    return parameters == null ? <Parameter>[] : parameters.cast<Parameter>();
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
