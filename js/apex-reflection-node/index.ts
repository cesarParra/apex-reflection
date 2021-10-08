const lib = require('./out');

export function reflect(declarationBody: string): Type {
  return JSON.parse(lib.reflect(declarationBody)) as Type;
}

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
}

export interface Annotation {
  rawDeclaration: string;
  name: string;
  type: string;
}

export interface ParameterMirror {
  memberModifiers: string[];
  name: string;
  type: string;
  docComment?: DocComment;
}

export interface MethodMirror {
  access_modifier: string;
  annotations: Annotation[];
  name: string;
  memberModifiers: string[];
  type: string;
  parameters: ParameterMirror[];
  docComment?: DocComment;
}

export interface PropertyMirror {
  access_modifier: string;
  annotations: Annotation[];
  name: string;
  memberModifiers: string[];
  type: string;
  docComment?: DocComment;
}

export interface FieldMirror {
  access_modifier: string;
  annotations: Annotation[];
  name: string;
  memberModifiers: string[];
  type: string;
  docComment?: DocComment;
}

export interface ConstructorMirror {
  access_modifier: string;
  annotations: Annotation[];
  parameters: ParameterMirror[];
  docComment?: DocComment;
}

// Types

type TypeName = 'class' | 'interface' | 'enum';
export type Type = InterfaceMirror | ClassMirror | EnumMirror;

export interface EnumMirror {
  annotations: Annotation[];
  name: string;
  type_name: TypeName;
  access_modifier: string;
  docComment?: DocComment;
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
}

export interface ClassMirror {
  string;
  annotations: Annotation[];
  name: string;
  type_name: TypeName;
  methods: MethodMirror[];
  sharingModifier?: string;
  classModifiers: string[];
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
}
