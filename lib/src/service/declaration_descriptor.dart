import 'package:apex_reflection/src/extension_methods/list_extensions.dart';
import 'package:apex_reflection/src/model/modifiers.dart';

/// The classified modifiers and annotations that precede a declaration.
///
/// [accessModifiers] holds the mixed bag exactly as classified, enum values
/// for keyword modifiers alongside [Annotation] instances, and the getters
/// slice it by category. A declaration with no explicit access modifier is
/// private, which is Apex's default visibility.
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

  late final List<Annotation> annotations =
      accessModifiers.whereType<Annotation>().toList();

  late final List<MemberModifier> memberModifiers =
      accessModifiers.whereType<MemberModifier>().toList();

  DeclarationDescriptor({required this.accessModifiers, this.docComment});
}
