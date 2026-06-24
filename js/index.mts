import fs from "node:fs";
import { compile } from "./node.mjs";

type ReflectExports = {
  reflect: (declarationBody: string) => string;
  reflectTrigger: (declarationBody: string) => string;
};

let instancePromise: Promise<ReflectExports> | undefined;

function loadInstance(): Promise<ReflectExports> {
  if (!instancePromise) {
    instancePromise = (async () => {
      const bytes = fs.readFileSync(new URL("./node.wasm", import.meta.url));
      const compiledApp = await compile(bytes);
      const instantiatedApp = await compiledApp.instantiate();
      instantiatedApp.invokeMain();
      return {
        reflect: (globalThis as any).reflect as (s: string) => string,
        reflectTrigger: (globalThis as any).reflectTrigger as (
          s: string,
        ) => string,
      };
    })().catch((error) => {
      instancePromise = undefined;
      throw error;
    });
  }
  return instancePromise;
}

async function reflectFor(
  type: "reflectType" | "reflectTrigger",
  declarationBody: string,
): Promise<string> {
  const instance = await loadInstance();
  return type === "reflectType"
    ? instance.reflect(declarationBody)
    : instance.reflectTrigger(declarationBody);
}

export async function reflect(
  declarationBody: string,
): Promise<ReflectionResult> {
  const result = await reflectFor("reflectType", declarationBody);

  try {
    return JSON.parse(result) as ReflectionResult;
  } catch (e) {
    throw new Error(
      `apex-reflection output was not valid JSON.\nstdout:\n${result}\nerror: ${String(e)}`,
    );
  }
}

export async function reflectTrigger(
  declarationBody: string,
): Promise<TriggerReflectionResult> {
  const result = await reflectFor("reflectTrigger", declarationBody);

  try {
    return JSON.parse(result) as TriggerReflectionResult;
  } catch (e) {
    throw new Error(
      `apex-reflection output was not valid JSON.\nstdout:\n${result}\nerror: ${String(e)}`,
    );
  }
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
  returnAnnotation: ReturnAnnotation | null;
  exampleAnnotation: ExampleAnnotation | null;
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

export type ReferencedType =
  | ReferenceObjectType
  | ListObjectType
  | SetObjectType
  | MapObjectType
  | GenericObjectType;

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

export interface GenericObjectType extends ReferenceObjectType {
  ofType: ReferenceObjectType;
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

export interface TriggerReflectionResult {
  triggerMirror?: TriggerMirror;
  error?: ParsingError;
}

export interface ParsingError {
  message: string;
}

// Types

type TypeName = "class" | "interface" | "enum";
export type Type = InterfaceMirror | ClassMirror | EnumMirror;

export interface TriggerMirror {
  docComment?: DocComment;
  name: string;
  object_name: string;
  events: string[];
}

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
