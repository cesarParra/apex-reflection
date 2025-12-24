import path from "path";
import fs from "fs";
import { spawnSync } from "child_process";

function resolveNativeBinaryPath(): string {
  const platform = process.platform;
  const arch = process.arch;

  let folderName: string;
  if (platform === "darwin" && arch === "arm64") {
    folderName = "darwin-arm64";
  } else if (platform === "darwin" && arch === "x64") {
    folderName = "darwin-x64";
  } else if (platform === "linux" && arch === "x64") {
    folderName = "linux-x64";
  } else if (platform === "win32" && arch === "x64") {
    folderName = "windows-x64";
  } else {
    throw new Error(
      `Unsupported platform/arch combination: ${platform}/${arch}`,
    );
  }

  const fileName =
    platform === "win32" ? "apex-reflection.exe" : "apex-reflection";

  // At runtime, this file is `dist/index.js`, so `__dirname` points to `dist/`.
  // postinstall installs to: dist/native/<platform-arch>/<fileName>
  const downloadedPath = path.join(__dirname, "native", folderName, fileName);

  // dev flow builds to: dist/native/<platform-arch>/<fileName>
  // (same place), but keep this explicit so we can evolve paths later.
  const devBuiltPath = downloadedPath;

  if (fs.existsSync(downloadedPath)) {
    return downloadedPath;
  }
  if (fs.existsSync(devBuiltPath)) {
    return devBuiltPath;
  }

  throw new Error(
    `Native binary not found. Expected one of:\n- ${downloadedPath}\n- ${devBuiltPath}\n\nIf you just installed this package, ensure postinstall succeeded.\nIf you're developing locally, run the dev build to create the host binary.`,
  );
}

export function reflect(declarationBody: string): ReflectionResult {
  const binaryPath = resolveNativeBinaryPath();

  const result = spawnSync(binaryPath, ["--type=reflectType"], {
    input: declarationBody,
    encoding: "utf8",
    maxBuffer: 1024 * 1024 * 50,
  });

  if (result.error) {
    throw new Error(
      `apex-reflection native binary failed to start. error:\n${String(result.error)}`,
    );
  }

  if (result.status !== 0) {
    throw new Error(
      `apex-reflection native binary failed (code=${result.status}). stderr:\n${result.stderr ?? ""}`,
    );
  }

  const stdout = (result.stdout ?? "").toString().trim();
  if (!stdout) {
    throw new Error(
      "apex-reflection native binary produced no output on stdout.",
    );
  }

  try {
    return JSON.parse(stdout) as ReflectionResult;
  } catch (e) {
    throw new Error(
      `apex-reflection native binary output was not valid JSON.\nstdout:\n${stdout}\nerror: ${String(e)}`,
    );
  }
}

export function reflectTrigger(
  declarationBody: string,
): TriggerReflectionResult {
  const binaryPath = resolveNativeBinaryPath();

  const result = spawnSync(binaryPath, ["--type=reflectTrigger"], {
    input: declarationBody,
    encoding: "utf8",
    maxBuffer: 1024 * 1024 * 50,
  });

  if (result.error) {
    throw new Error(
      `apex-reflection native binary failed to start. error:\n${String(result.error)}`,
    );
  }

  if (result.status !== 0) {
    throw new Error(
      `apex-reflection native binary failed (code=${result.status}). stderr:\n${result.stderr ?? ""}`,
    );
  }

  const stdout = (result.stdout ?? "").toString().trim();
  if (!stdout) {
    throw new Error(
      "apex-reflection native binary produced no output on stdout.",
    );
  }

  try {
    return JSON.parse(stdout) as TriggerReflectionResult;
  } catch (e) {
    throw new Error(
      `apex-reflection native binary output was not valid JSON.\nstdout:\n${stdout}\nerror: ${String(e)}`,
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
