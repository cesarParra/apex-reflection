import 'dart:collection';

import 'package:antlr4/antlr4.dart';
import 'package:apex_reflection/src/builders/builders.dart';
import 'package:apex_reflection/src/model/declaration_mirror.dart';
import 'package:apex_reflection/src/model/members.dart';
import 'package:apex_reflection/src/model/modifiers.dart';
import 'package:apex_reflection/src/model/types.dart';
import 'package:apex_reflection/src/service/parsers.dart';
import 'package:apex_reflection/src/service/utils/parsing/parsing_utils.dart';
import 'package:apex_reflection/src/extension_methods/list_extensions.dart';

import '../antlr/grammars/apex/ApexLexer.dart';
import '../antlr/grammars/apex/ApexParser.dart';
import '../antlr/grammars/apex/ApexParserBaseListener.dart';
import '../model/doc_comment.dart';

class DeclarationDescriptor {
  List<dynamic> accessModifiers = [];
  String? docComment;

  get accessModifier =>
      accessModifiers.firstWhere((element) => element is AccessModifier,
          orElse: () => AccessModifier.private);

  get sharingModifier => accessModifiers
      .firstWhere((element) => element is SharingModifier, orElse: () => null);

  get classModifier =>
      accessModifiers.firstWhereOrNull((element) => element is ClassModifier);

  get annotations => accessModifiers.whereType<Annotation>().toList();

  get memberModifiers => accessModifiers.whereType<MemberModifier>().toList();

  DeclarationDescriptor({required this.accessModifiers, this.docComment});
}

class Group {
  String? name;
  String? description;

  Group({this.name, this.description});
}

class ApexClassListener extends ApexParserBaseListener {
  final Stack<DeclarationDescriptor> _declaratorDescriptorStack;
  final Stack<TypeMirror> generatedTypes;
  final Stack<Group> groupStack;
  late TypeMirror generatedType;
  final CommonTokenStream tokens;

  ApexClassListener(this.tokens)
      : generatedTypes = Stack<TypeMirror>(),
        _declaratorDescriptorStack = Stack<DeclarationDescriptor>(),
        groupStack = Stack<Group>();

  @override
  void enterTriggerUnit(TriggerUnitContext ctx) {
    String? docComment = _extractDocComment(ctx);
    final triggerName = ctx.ids().first.text;
    final objectName = ctx.ids()[1].text;
    final events = ctx.triggerCases().map((e) => e.text).toList();

    final generatedTrigger = TriggerMirror(
      name: triggerName,
      objectName: objectName,
      events: events,
      rawDocComment: docComment,
    );

    generatedTypes.push(generatedTrigger);
  }

  @override
  void enterTypeClassDeclaration(TypeClassDeclarationContext ctx) {
    String? docComment = _extractDocComment(ctx,
        searchAfter: _getAnnotationStopIndex(ctx.annotations()));

    final accessModifiers = getAccessModifiers(ctx);
    _declaratorDescriptorStack.push(DeclarationDescriptor(
        accessModifiers: accessModifiers, docComment: docComment));
  }

  @override
  void enterTypeEnumDeclaration(TypeEnumDeclarationContext ctx) {
    String? docComment = _extractDocComment(ctx,
        searchAfter: _getAnnotationStopIndex(ctx.annotations()));
    final accessModifiers = getAccessModifiers(ctx);
    _declaratorDescriptorStack.push(DeclarationDescriptor(
        accessModifiers: accessModifiers, docComment: docComment));
  }

  @override
  void enterTriggerBlock(TriggerBlockContext ctx) {
    _declaratorDescriptorStack
        .push(DeclarationDescriptor(accessModifiers: [], docComment: null));
  }

  @override
  void enterEnumConstants(EnumConstantsContext ctx) {
    final peakedType = generatedTypes.peak();
    if (peakedType is EnumMirror) {
      final enumValues = ctx
          .ids()
          .map((e) => EnumValue(
                name: e.text,
                rawDocComment: _extractDocComment(e),
              ))
          .toList();
      peakedType.values.addAll(enumValues);
    }
  }

  @override
  void enterTypeInterfaceDeclaration(TypeInterfaceDeclarationContext ctx) {
    String? docComment = _extractDocComment(ctx,
        searchAfter: _getAnnotationStopIndex(ctx.annotations()));
    final accessModifiers = getAccessModifiers(ctx);
    _declaratorDescriptorStack.push(DeclarationDescriptor(
        accessModifiers: accessModifiers, docComment: docComment));
  }

  @override
  void enterClassDeclaration(ClassDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    if (declarationDescriptor case Success(:final value)) {
      var builtClass = buildClass(value, ctx);
      generatedTypes.push(builtClass);
      _setGroupOnDeclaration(builtClass);
    }
  }

  @override
  void enterInterfaceDeclaration(InterfaceDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    if (declarationDescriptor case Success(:final value)) {
      generatedTypes.push(buildInterface(value, ctx));
    }
  }

  @override
  void enterEnumDeclaration(EnumDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    if (declarationDescriptor case Success(:final value)) {
      final enumMirror = buildEnum(value, ctx);
      generatedTypes.push(enumMirror);
      _setGroupOnDeclaration(enumMirror);
    }
  }

  @override
  void enterGroupedDeclarations(GroupedDeclarationsContext ctx) {
    var startGroupComment = ctx.START_GROUP_COMMENT()!.text;
    // We add 12 because @start-group has 12 characters and we want to start
    // where that ends.
    var startingIndex = startGroupComment!.indexOf('@start-group') + 12;
    var groupName = startGroupComment.substring(startingIndex).trim();
    groupStack.push(Group(name: groupName));
  }

  @override
  void exitGroupedDeclarations(GroupedDeclarationsContext ctx) {
    groupStack.pop();
  }

  @override
  void enterMemberClassBodyDeclaration(MemberClassBodyDeclarationContext ctx) {
    final accessModifiers = getAccessModifiers(ctx, isMember: true);
    String? docComment;

    final allDocComments = _getAllDocComments(ctx,
        searchAfter: _getAnnotationStopIndex(ctx.annotations()));
    if (allDocComments.isNotEmpty) {
      // We take and parse the first doc comment, in case it is the
      // start of a group.
      String potentialDocComment = allDocComments.first;
      DocComment docCommentObject =
          ApexdocParser.parseFromBody(potentialDocComment);

      if (docCommentObject.annotations
          .any((element) => element.name.toLowerCase() == 'start-group')) {
        final startGroupComment = docCommentObject.annotations.firstWhere(
            (element) => element.name.toLowerCase() == 'start-group');
        final groupName = startGroupComment.body;

        final groupDescription = docCommentObject.description;
        groupStack.push(Group(name: groupName, description: groupDescription));

        // If there is another doc comment besides the @start-group one,
        // we use that as the one for the member
        if (allDocComments.length > 1) {
          docComment = allDocComments.last;
        }
      } else {
        // We are dealing with a regular doc comment.
        docComment = potentialDocComment;
      }
    }
    _declaratorDescriptorStack.push(DeclarationDescriptor(
        accessModifiers: accessModifiers, docComment: docComment));
  }

  @override
  void exitMemberClassBodyDeclaration(MemberClassBodyDeclarationContext ctx) {
    if (ctx.END_GROUP_COMMENT()?.text != null) {
      groupStack.pop();
    }
  }

  @override
  void enterPropertyDeclaration(PropertyDeclarationContext ctx) {
    final currentType = generatedTypes.peak();
    if (currentType is ClassMirror) {
      final declarationDescriptor = _declaratorDescriptorStack.pop();
      if (declarationDescriptor case Success(:final value)) {
        final property = buildProperty(value, ctx);
        currentType.addProperty(property);
        _setGroupOnDeclaration(property);
      }
    }
  }

  @override
  void enterFieldDeclaration(FieldDeclarationContext ctx) {
    final currentType = generatedTypes.peak();
    if (currentType is ClassMirror) {
      final declarationDescriptor = _declaratorDescriptorStack.pop();
      if (declarationDescriptor case Success(:final value)) {
        List<FieldMirror> fields = buildFields(value, ctx);
        currentType.fields.addAll(fields);
        for (var element in fields) {
          _setGroupOnDeclaration(element);
        }
      }
    }
  }

  @override
  void enterMethodDeclaration(MethodDeclarationContext ctx) {
    final declarationDescriptor = _declaratorDescriptorStack.pop();
    if (declarationDescriptor case Success(:final value)) {
      final method = buildMethod(value, ctx);
      (generatedTypes.peak() as MethodsAwareness).methods.add(method);
      _setGroupOnDeclaration(method);
    }
  }

  @override
  void enterInterfaceMethodDeclaration(InterfaceMethodDeclarationContext ctx) {
    if (generatedTypes.peak() == null) {
      return;
    }
    final annotations = ctx
        .annotations()
        .map((e) => Annotation.fromAnnotationContext(e))
        .toList();

    final method = buildInterfaceMethod(
      ctx,
      _extractDocComment(ctx),
      generatedTypes.peak()!.accessModifier,
      [
        ...generatedTypes.peak()!.annotations,
        if (annotations.isNotEmpty) ...annotations
      ],
    );

    (generatedTypes.peak() as MethodsAwareness).methods.add(method);
  }

  @override
  void enterConstructorDeclaration(ConstructorDeclarationContext ctx) {
    final declaratorDescriptor = _declaratorDescriptorStack.pop();
    if (declaratorDescriptor case Success(:final value)) {
      final constructorGenerated = buildConstructor(value, ctx);

      (generatedTypes.peak() as ClassMirror)
          .constructors
          .add(constructorGenerated);
      _setGroupOnDeclaration(constructorGenerated);
    }
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

  @override
  void exitTriggerBlock(TriggerBlockContext ctx) {
    _onExitDeclaration();
  }

  int? _getAnnotationStopIndex(List<AnnotationContext> annotations) {
    if (annotations.isNotEmpty) {
      return annotations.last.stop!.tokenIndex;
    }
    return null;
  }

  String? _extractDocComment(ParserRuleContext ctx, {int? searchAfter}) {
    final docComments = _getAllDocComments(ctx, searchAfter: searchAfter);
    return docComments.isEmpty ? null : docComments.last;
  }

  Iterable<String> _getAllDocComments(ParserRuleContext ctx,
      {int? searchAfter}) sync* {
    final start = ctx.start!;
    final startIndex = start.tokenIndex;
    final docChannelIndex = ApexLexer.DOCUMENTATION_CHANNEL;
    final docCommentTokens =
        tokens.getHiddenTokensToLeft(startIndex, docChannelIndex);

    for (final token in docCommentTokens ?? List<Token>.empty()) {
      yield token.text!;
    }

    if (searchAfter != null) {
      final additionalCommentTokens =
          tokens.getHiddenTokensToRight(searchAfter, docChannelIndex);
      for (final token in additionalCommentTokens ?? List<Token>.empty()) {
        yield token.text!;
      }
    }
  }

  void _onExitDeclaration() {
    if (_atTheTopOfTheStack()) {
      // If we are at the top level of the class, then parsing has finalized,
      // so we want to pop the last item of the stack and set that as the
      // generated type.
      final possibleGeneratedType = generatedTypes.pop();
      if (possibleGeneratedType case Success(:final value)) {
        generatedType = value;
      }
      return;
    }

    // Otherwise then we want to add this as an inner class to whoever is on top.
    final currentGeneratedType = generatedTypes.pop();
    switch (currentGeneratedType) {
      case Failure():
        return;
      case Success(:final value):
        var topLevelClass = generatedTypes.peak() as ClassMirror;
        if (value.isClass()) {
          topLevelClass.addClass(value as ClassMirror);
        } else if (value.isEnum()) {
          topLevelClass.addEnum(value as EnumMirror);
        } else {
          topLevelClass.addInterface(value as InterfaceMirror);
        }
    }
  }

  bool _atTheTopOfTheStack() {
    return generatedTypes.length == 1;
  }

  void _setGroupOnDeclaration(DeclarationMirror declarationMirror) {
    if (groupStack.peak() == null) {
      return;
    }
    if (groupStack.length > 0) {
      final group = groupStack.peak();
      declarationMirror.setGroup(group!.name, group.description);
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

  Result<T> pop() {
    if (_stack.isEmpty) {
      return Failure('Stack is empty');
    }
    T lastElement = _stack.last;
    _stack.removeLast();
    return Success(lastElement);
  }

  T? peak() => _stack.isNotEmpty ? _stack.last : null;
}

sealed class Result<T> {}

class Success<T> extends Result<T> {
  final T value;

  Success(this.value);
}

class Failure<T> extends Result<T> {
  final String errorMessage;

  Failure(this.errorMessage);
}
