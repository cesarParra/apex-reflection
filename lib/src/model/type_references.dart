import 'package:json_annotation/json_annotation.dart';
import '../antlr/lib/apex/ApexParser.dart';

part 'type_references.g.dart';

// TODO: Unit/integration tests
// TODO: Update the MemberMirror Typescript type to add the different types of
// ObjectTypeReference that are possible
abstract class ObjectTypeReference {
  late String type;

  Map<String, dynamic> toJson();

  factory ObjectTypeReference(TypeRefContext? typeRefContext) {
    if (typeRefContext == null) {
      // If null is received, then we are dealing with a "void" type.
      return ReferenceObjectType('void');
    }

    final hasArrays = typeRefContext.arraySubscripts() == null ? false : typeRefContext.arraySubscripts()!.text.isNotEmpty;
    if (hasArrays) {
      // TODO: Implement array support
      throw UnimplementedError('Not implemented');
    }
    if (typeRefContext.typeName(0)!.LIST() != null) {
      // In Apex a list can have at MOST one type argument
      final childTypeRefContext = typeRefContext
          .typeName(0)!
          .typeArguments()!
          .typeList()!
          .typeRefs()[0]!;
      return ListObjectType(ObjectTypeReference(childTypeRefContext));
    }
    if (typeRefContext.typeName(0)!.SET() != null) {
      // In Apex a list can have at MOST one type argument
      final childTypeRefContext = typeRefContext
          .typeName(0)!
          .typeArguments()!
          .typeList()!
          .typeRefs()[0]!;
      return SetObjectType(ObjectTypeReference(childTypeRefContext));
    }
    if (typeRefContext.typeName(0)!.MAP() != null) {
      // In Apex a list can have at MOST two type arguments (key and value)
      final keyTypeRefContext = typeRefContext
          .typeName(0)!
          .typeArguments()!
          .typeList()!
          .typeRefs()[0]!;
      final valueTypeRefContext = typeRefContext
          .typeName(0)!
          .typeArguments()!
          .typeList()!
          .typeRefs()[1]!;
      return MapObjectType(ObjectTypeReference(keyTypeRefContext),
          ObjectTypeReference(valueTypeRefContext));
    }

    // If we got to this point that means we are dealing with a regular (non-collection)
    // type reference.
    return ReferenceObjectType(typeRefContext.typeName(0)!.text);
  }
}

ObjectTypeReference objectTypeFromJson(
    Map<String, dynamic>? json) {
  if (json == null) {
    return ReferenceObjectType.fromJson({"type": ""});
  }
  final String type = json['type'];
  switch (type) {
    case 'List':
      return ListObjectType.fromJson(json);
    case 'Set':
      return SetObjectType.fromJson(json);
    case 'Map':
      return MapObjectType.fromJson(json);
    default:
      return ReferenceObjectType.fromJson(json);
  }
}

Map<String, dynamic> objectTypeToJson(ObjectTypeReference objectType) {
  return objectType.toJson();
}

@JsonSerializable()
class ReferenceObjectType implements ObjectTypeReference {
  @override
  late String type;

  ReferenceObjectType(this.type);

  factory ReferenceObjectType.fromJson(Map<String, dynamic> json) =>
      _$ReferenceObjectTypeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ReferenceObjectTypeToJson(this);
}

@JsonSerializable()
class ListObjectType implements ObjectTypeReference {
  @override
  late String type;

  @JsonKey(fromJson: objectTypeFromJson, toJson: objectTypeToJson)
  final ObjectTypeReference ofType;

  ListObjectType(this.ofType) : type = 'List';

  factory ListObjectType.fromJson(Map<String, dynamic> json) =>
      _$ListObjectTypeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ListObjectTypeToJson(this);
}

@JsonSerializable()
class MapObjectType implements ObjectTypeReference {
  @override
  late String type;

  @JsonKey(fromJson: objectTypeFromJson, toJson: objectTypeToJson)
  final ObjectTypeReference keyType;
  @JsonKey(fromJson: objectTypeFromJson, toJson: objectTypeToJson)
  final ObjectTypeReference valueType;

  MapObjectType(this.keyType, this.valueType) : type = 'Map';

  factory MapObjectType.fromJson(Map<String, dynamic> json) =>
      _$MapObjectTypeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MapObjectTypeToJson(this);
}

@JsonSerializable()
class SetObjectType implements ObjectTypeReference {
  @override
  late String type;

  @JsonKey(fromJson: objectTypeFromJson, toJson: objectTypeToJson)
  final ObjectTypeReference ofType;

  SetObjectType(this.ofType) : type = 'Set';

  factory SetObjectType.fromJson(Map<String, dynamic> json) =>
      _$SetObjectTypeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SetObjectTypeToJson(this);
}
