export declare function reflect(declarationBody: string): ReflectionResult;
export interface ParamAnnotation {
    bodyLines: string[];
    paramName: string;
}
export interface ReturnAnnotation {
    bodyLines: string[];
}
export interface ExampleAnnotation {
    bodyLines: string[];
}
export interface ThrowsAnnotation {
    bodyLines: string[];
    exceptionName: string;
}
export interface DocCommentAnnotation {
    name: string;
    bodyLines: string[];
    body: string;
}
export interface DocComment {
    rawDeclaration?: string;
    paramAnnotations: ParamAnnotation[];
    returnAnnotation: ReturnAnnotation;
    exampleAnnotation: ExampleAnnotation;
    throwsAnnotations: ThrowsAnnotation[];
    annotations: DocCommentAnnotation[];
    descriptionLines: string[];
    description: string;
    error?: string;
}
export interface AnnotationElementValue {
    key: string;
    value: string;
}
export interface Annotation {
    rawDeclaration: string;
    name: string;
    type: string;
    elementValues?: AnnotationElementValue[];
}
export type ReferencedType = ReferenceObjectType | ListObjectType | SetObjectType | MapObjectType;
export interface ReferenceObjectType {
    type: string;
    rawDeclaration: string;
}
export interface ListObjectType extends ReferenceObjectType {
    ofType: ReferenceObjectType;
}
export interface SetObjectType extends ReferenceObjectType {
    ofType: ReferenceObjectType;
}
export interface MapObjectType extends ReferenceObjectType {
    keyType: ReferenceObjectType;
    valueType: ReferenceObjectType;
}
export interface EnumValue {
    name: string;
    docComment?: DocComment;
}
export interface ParameterMirror {
    memberModifiers: string[];
    name: string;
    typeReference: ReferencedType;
    docComment?: DocComment;
}
export interface MethodMirror {
    access_modifier: string;
    annotations: Annotation[];
    name: string;
    memberModifiers: string[];
    typeReference: ReferencedType;
    parameters: ParameterMirror[];
    docComment?: DocComment;
    group?: string;
    groupDescription?: string;
}
export interface PropertyMirror {
    access_modifier: string;
    annotations: Annotation[];
    name: string;
    memberModifiers: string[];
    typeReference: ReferencedType;
    docComment?: DocComment;
    group?: string;
    groupDescription?: string;
}
export interface FieldMirror {
    access_modifier: string;
    annotations: Annotation[];
    name: string;
    memberModifiers: string[];
    typeReference: ReferencedType;
    docComment?: DocComment;
    group?: string;
    groupDescription?: string;
}
export interface ConstructorMirror {
    access_modifier: string;
    annotations: Annotation[];
    parameters: ParameterMirror[];
    docComment?: DocComment;
    group?: string;
    groupDescription?: string;
}
export interface ReflectionResult {
    typeMirror?: Type;
    error?: ParsingError;
}
export interface ParsingError {
    message: string;
}
type TypeName = 'class' | 'interface' | 'enum';
export type Type = InterfaceMirror | ClassMirror | EnumMirror;
export interface EnumMirror {
    annotations: Annotation[];
    name: string;
    type_name: TypeName;
    access_modifier: string;
    docComment?: DocComment;
    group?: string;
    groupDescription?: string;
    values: EnumValue[];
}
export interface InterfaceMirror {
    annotations: Annotation[];
    name: string;
    type_name: TypeName;
    methods: MethodMirror[];
    extended_interfaces: string[];
    access_modifier: string;
    docComment?: DocComment;
    sharingModifier?: string;
    group?: string;
    groupDescription?: string;
}
export interface ClassMirror {
    annotations: Annotation[];
    name: string;
    type_name: TypeName;
    methods: MethodMirror[];
    sharingModifier?: string;
    classModifier?: string;
    extended_class?: string;
    implemented_interfaces: string[];
    properties: PropertyMirror[];
    fields: FieldMirror[];
    constructors: ConstructorMirror[];
    enums: EnumMirror[];
    interfaces: InterfaceMirror[];
    classes: ClassMirror[];
    access_modifier: string;
    docComment?: DocComment;
    group?: string;
    groupDescription?: string;
}
export {};
