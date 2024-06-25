import 'package:json_annotation/json_annotation.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart';

part 'type_references.g.dart';

abstract class ObjectTypeReference {
  late String type;
  late String rawDeclaration;

  Map<String, dynamic> toJson();

  factory ObjectTypeReference(TypeRefContext? typeRefContext) {
    if (typeRefContext == null) {
      // If null is received, then we are dealing with a "void" type.
      return ReferenceObjectType('void');
    }

    final hasArrays = typeRefContext.arraySubscripts() == null
        ? false
        : typeRefContext.arraySubscripts()!.text.isNotEmpty;
    if (hasArrays) {
      // If the type is an array (has [] at the end), we treat received
      // TypeRefContext as a list
      // This removes the first 2 characters: '[' and ']'
      typeRefContext.arraySubscripts()!.children!.removeRange(0, 2);

      return ListObjectType(
          ObjectTypeReference(typeRefContext), typeRefContext.text);
    }
    if (typeRefContext.typeName(0)!.LIST() != null) {
      // In Apex a list can have at MOST one type argument
      final childTypeRefContext =
          typeRefContext.typeName(0)!.typeArguments()!.typeList()!.typeRef(0)!;
      return ListObjectType(
          ObjectTypeReference(childTypeRefContext), typeRefContext.text);
    }
    if (typeRefContext.typeName(0)!.SET() != null) {
      // In Apex a list can have at MOST one type argument
      final childTypeRefContext =
          typeRefContext.typeName(0)!.typeArguments()!.typeList()!.typeRef(0)!;
      return SetObjectType(
          ObjectTypeReference(childTypeRefContext), typeRefContext.text);
    }
    if (typeRefContext.typeName(0)!.MAP() != null) {
      // In Apex a list can have at MOST two type arguments (key and value)
      final keyTypeRefContext =
          typeRefContext.typeName(0)!.typeArguments()!.typeList()!.typeRef(0)!;
      final valueTypeRefContext =
          typeRefContext.typeName(0)!.typeArguments()!.typeList()!.typeRef(1)!;
      return MapObjectType(
        ObjectTypeReference(keyTypeRefContext),
        ObjectTypeReference(valueTypeRefContext),
        typeRefContext.text,
      );
    }
    if (typeRefContext.typeName(0)!.typeArguments() != null) {
      // If there are type arguments (arguments between < >), it means we are dealing with a Generic type
      final type = typeRefContext.typeName(0)!.id()!.text;
      final childTypeRefContext =
          typeRefContext.typeName(0)!.typeArguments()!.typeList()!.typeRef(0)!;
      return GenericObjectType(
          type, ObjectTypeReference(childTypeRefContext), typeRefContext.text);
    }

    // If we got to this point that means we are dealing with a regular (non-collection)
    // type reference.
    return ReferenceObjectType(typeRefContext.text);
  }
}

ObjectTypeReference objectTypeFromJson(Map<String, dynamic>? json) {
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

  @override
  late String rawDeclaration;

  ReferenceObjectType(this.type) : rawDeclaration = type;

  factory ReferenceObjectType.fromJson(Map<String, dynamic> json) =>
      _$ReferenceObjectTypeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ReferenceObjectTypeToJson(this);
}

@JsonSerializable()
class ListObjectType implements ObjectTypeReference {
  @override
  late String type;

  @override
  late String rawDeclaration;

  @JsonKey(fromJson: objectTypeFromJson, toJson: objectTypeToJson)
  final ObjectTypeReference ofType;

  ListObjectType(this.ofType, this.rawDeclaration) : type = 'List';

  factory ListObjectType.fromJson(Map<String, dynamic> json) =>
      _$ListObjectTypeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ListObjectTypeToJson(this);
}

@JsonSerializable()
class MapObjectType implements ObjectTypeReference {
  @override
  late String type;

  @override
  late String rawDeclaration;

  @JsonKey(fromJson: objectTypeFromJson, toJson: objectTypeToJson)
  final ObjectTypeReference keyType;
  @JsonKey(fromJson: objectTypeFromJson, toJson: objectTypeToJson)
  final ObjectTypeReference valueType;

  MapObjectType(this.keyType, this.valueType, this.rawDeclaration)
      : type = 'Map';

  factory MapObjectType.fromJson(Map<String, dynamic> json) =>
      _$MapObjectTypeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MapObjectTypeToJson(this);
}

@JsonSerializable()
class SetObjectType implements ObjectTypeReference {
  @override
  late String type;

  @override
  late String rawDeclaration;

  @JsonKey(fromJson: objectTypeFromJson, toJson: objectTypeToJson)
  final ObjectTypeReference ofType;

  SetObjectType(this.ofType, this.rawDeclaration) : type = 'Set';

  factory SetObjectType.fromJson(Map<String, dynamic> json) =>
      _$SetObjectTypeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SetObjectTypeToJson(this);
}

@JsonSerializable()
class GenericObjectType implements ObjectTypeReference {
  @override
  late String type;

  @override
  late String rawDeclaration;

  @JsonKey(fromJson: objectTypeFromJson, toJson: objectTypeToJson)
  final ObjectTypeReference ofType;

  GenericObjectType(this.type, this.ofType, this.rawDeclaration);

  factory GenericObjectType.fromJson(Map<String, dynamic> json) =>
      _$GenericObjectTypeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GenericObjectTypeToJson(this);
}
