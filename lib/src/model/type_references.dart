import 'package:json_annotation/json_annotation.dart';

part 'type_references.g.dart';

/// A reference to a type as it appears in a declaration: a field's type, a
/// method's return type, a parameter's type. Collection types expose the
/// types they contain through their concrete implementations.
abstract class ObjectTypeReference {
  late String type;
  late String rawDeclaration;

  Map<String, dynamic> toJson();
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
