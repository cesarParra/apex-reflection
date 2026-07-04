import 'package:apex_reflection/src/model/modifiers.dart';

/// The classified modifiers and annotations that precede a declaration.
///
/// A declaration with no explicit access modifier is private, which is Apex's
/// default visibility. When the same category appears more than once, the
/// first occurrence in source order wins.
class DeclarationDescriptor {
  final AccessModifier accessModifier;
  final SharingModifier? sharingModifier;
  final ClassModifier? classModifier;
  final List<Annotation> annotations;
  final List<MemberModifier> memberModifiers;

  DeclarationDescriptor._({
    required this.accessModifier,
    required this.sharingModifier,
    required this.classModifier,
    required this.annotations,
    required this.memberModifiers,
  });

  /// Classifies canonical (lowercase, space-stripped) modifier keywords into
  /// their categories. [isMember] steers `virtual`/`abstract`: on a member
  /// they are member modifiers, on a type they are class modifiers.
  /// Unrecognized keywords are ignored.
  factory DeclarationDescriptor.classify({
    required List<Annotation> annotations,
    required List<String> modifierKeywords,
    bool isMember = false,
  }) {
    AccessModifier? accessModifier;
    SharingModifier? sharingModifier;
    ClassModifier? classModifier;
    final memberModifiers = <MemberModifier>[];

    for (final keyword in modifierKeywords) {
      if (_accessModifiersByKeyword[keyword] case final found?) {
        accessModifier ??= found;
      } else if (!isMember && _classModifiersByKeyword[keyword] != null) {
        classModifier ??= _classModifiersByKeyword[keyword];
      } else if (_sharingModifiersByKeyword[keyword] case final found?) {
        sharingModifier ??= found;
      } else if (_memberModifiersByKeyword[keyword] case final found?) {
        memberModifiers.add(found);
      }
    }

    return DeclarationDescriptor._(
      accessModifier: accessModifier ?? AccessModifier.private,
      sharingModifier: sharingModifier,
      classModifier: classModifier,
      annotations: annotations,
      memberModifiers: memberModifiers,
    );
  }

  static final Map<String, AccessModifier> _accessModifiersByKeyword = {
    for (final modifier in AccessModifier.values) modifier.name: modifier,
  };

  static final Map<String, SharingModifier> _sharingModifiersByKeyword = {
    for (final modifier in SharingModifier.values)
      modifier.name.toLowerCase(): modifier,
  };

  static final Map<String, ClassModifier> _classModifiersByKeyword = {
    for (final modifier in ClassModifier.values) modifier.name: modifier,
  };

  static final Map<String, MemberModifier> _memberModifiersByKeyword = {
    for (final modifier in MemberModifier.values) modifier.value: modifier,
  };
}
