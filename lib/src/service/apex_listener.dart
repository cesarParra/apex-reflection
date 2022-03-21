import 'dart:collection';

import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParserBaseListener.dart';
import 'package:apexdocs_dart/src/builders/builders.dart';
import 'package:apexdocs_dart/src/model/declaration_mirror.dart';
import 'package:apexdocs_dart/src/model/members.dart';
import 'package:apexdocs_dart/src/model/modifiers.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/utils/parsing/parsing_utils.dart';
import 'package:apexdocs_dart/src/extension_methods/list_extensions.dart';

class DeclarationDescriptor {
  List<dynamic> accessModifiers = [];
  String? docComment;

  get accessModifier =>
      accessModifiers.firstWhere((element) => element is AccessModifier,
          orElse: () => AccessModifier.private);

  get sharingModifier =>
      accessModifiers
          .firstWhere((element) => element is SharingModifier,
          orElse: () => null);

  get classModifier =>
      accessModifiers.firstWhereOrNull((element) => element is ClassModifier);

  get annotations => accessModifiers.whereType<Annotation>().toList();

  get memberModifiers => accessModifiers.whereType<MemberModifier>().toList();

  DeclarationDescriptor({required this.accessModifiers, this.docComment});
}

class ApexClassListener extends ApexParserBaseListener {
  final Stack<DeclarationDescriptor> _declaratorDescriptorStack;
  final Stack<TypeMirror> generatedTypes;
  final Stack<String?> groupStack;
  late TypeMirror generatedType;

  ApexClassListener()
      : generatedTypes = Stack<TypeMirror>(),
        _declaratorDescriptorStack = Stack<DeclarationDescriptor>(),
        groupStack = Stack<String>();

  @override
  void enterTypeClassDeclaration(TypeClassDeclarationContext ctx) {
    final accessModifiers = getAccessModifiers(ctx);
    final docComment = ctx
        .DOC_COMMENT()
        ?.text;
    _declaratorDescriptorStack.push(DeclarationDescriptor(
        accessModifiers: accessModifiers, docComment: docComment));
  }

  @override
  void enterTypeEnumDeclaration(TypeEnumDeclarationContext ctx) {
    final accessModifiers = getAccessModifiers(ctx);
    final docComment = ctx
        .DOC_COMMENT()
        ?.text;
    _declaratorDescriptorStack.push(DeclarationDescriptor(
        accessModifiers: accessModifiers, docComment: docComment));
  }

  @override
  void enterTypeInterfaceDeclaration(TypeInterfaceDeclarationContext ctx) {
    final accessModifiers = getAccessModifiers(ctx);
    final docComment = ctx
        .DOC_COMMENT()
        ?.text;
    _declaratorDescriptorStack.push(DeclarationDescriptor(
        accessModifiers: accessModifiers, docComment: docComment));
  }

  @override
  void enterClassDeclaration(ClassDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    var builtClass = buildClass(declarationDescriptor, ctx);
    generatedTypes.push(builtClass);
    _setGroupOnDeclaration(builtClass);
  }

  @override
  void enterInterfaceDeclaration(InterfaceDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    generatedTypes.push(buildInterface(declarationDescriptor, ctx));
  }

  @override
  void enterEnumDeclaration(EnumDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    final enumMirror = buildEnum(declarationDescriptor, ctx);
    generatedTypes.push(enumMirror);
    _setGroupOnDeclaration(enumMirror);
  }

  @override
  void enterGroupClassBodyDeclarations(GroupClassBodyDeclarationsContext ctx) {
    var startGroupComment = ctx.START_GROUP_COMMENT()!.text;
    // We add 12 because @start-group has 12 characters and we want to start
    // where that ends.
    var startingIndex = startGroupComment!.indexOf('@start-group') + 12;
    var groupName = startGroupComment.substring(startingIndex).trim();
    groupStack.push(groupName);
  }

  @override
  void exitGroupClassBodyDeclarations(GroupClassBodyDeclarationsContext ctx) {
    groupStack.pop();
  }

  @override
  void enterMemberClassBodyDeclaration(MemberClassBodyDeclarationContext ctx) {
    final accessModifiers = getAccessModifiers(ctx);
    final docComment = ctx
        .DOC_COMMENT()
        ?.text;
    _declaratorDescriptorStack.push(DeclarationDescriptor(
        accessModifiers: accessModifiers, docComment: docComment));
  }

  @override
  void enterPropertyDeclaration(PropertyDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    final property = buildProperty(declarationDescriptor, ctx);
    (generatedTypes.peak() as ClassMirror).addProperty(property);
    _setGroupOnDeclaration(property);
  }

  @override
  void enterFieldDeclaration(FieldDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    List<FieldMirror> fields = buildFields(declarationDescriptor, ctx);
    (generatedTypes.peak() as ClassMirror)
        .fields
        .addAll(fields);
    for (var element in fields) {
      _setGroupOnDeclaration(element);
    }
  }

  @override
  void enterMethodDeclaration(MethodDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    final method = buildMethod(declarationDescriptor, ctx);
    (generatedTypes.peak() as MethodsAwareness).methods.add(method);
    _setGroupOnDeclaration(method);
  }

  @override
  void enterInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx) {
    final method = buildInterfaceMethod(
        ctx,
        generatedTypes
            .peak()
            .accessModifier,
        generatedTypes
            .peak()
            .annotations);

    (generatedTypes.peak() as MethodsAwareness).methods.add(method);
  }

  @override
  void enterConstructorDeclaration(ConstructorDeclarationContext ctx) {
    final declaratorDescriptor = _declaratorDescriptorStack.pop();
    final constructorGenerated = buildConstructor(declaratorDescriptor, ctx);

    (generatedTypes.peak() as ClassMirror)
        .constructors
        .add(constructorGenerated);
    _setGroupOnDeclaration(constructorGenerated);
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
    var topLevelClass = generatedTypes.peak() as ClassMirror;
    if (currentGeneratedType.isClass()) {
      topLevelClass.addClass(currentGeneratedType as ClassMirror);
    } else if (currentGeneratedType.isEnum()) {
      topLevelClass.addEnum(currentGeneratedType as EnumMirror);
    } else {
      topLevelClass.addInterface(currentGeneratedType as InterfaceMirror);
    }
  }

  bool _atTheTopOfTheStack() {
    return generatedTypes.length == 1;
  }

  void _setGroupOnDeclaration(DeclarationMirror declarationMirror) {
    if (groupStack.length > 0) {
      declarationMirror.setGroup(groupStack.peak());
    }
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
