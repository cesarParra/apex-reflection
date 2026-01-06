"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.reflectTrigger = exports.reflect = void 0;
const path_1 = __importDefault(require("path"));
const fs_1 = __importDefault(require("fs"));
const child_process_1 = require("child_process");
function resolveNativeBinaryPath() {
    const platform = process.platform;
    const arch = process.arch;
    let folderName;
    if (platform === "darwin" && arch === "arm64") {
        folderName = "darwin-arm64";
    }
    else if (platform === "darwin" && arch === "x64") {
        folderName = "darwin-x64";
    }
    else if (platform === "linux" && arch === "x64") {
        folderName = "linux-x64";
    }
    else if (platform === "win32" && arch === "x64") {
        folderName = "windows-x64";
    }
    else {
        throw new Error(`Unsupported platform/arch combination: ${platform}/${arch}`);
    }
    const fileName = platform === "win32" ? "apex-reflection.exe" : "apex-reflection";
    // At runtime, this file is `dist/index.js`, so `__dirname` points to `dist/`.
    // postinstall installs to: dist/native/<platform-arch>/<fileName>
    const downloadedPath = path_1.default.join(__dirname, "native", folderName, fileName);
    // dev flow builds to: dist/native/<platform-arch>/<fileName>
    // (same place), but keep this explicit so we can evolve paths later.
    const devBuiltPath = downloadedPath;
    if (fs_1.default.existsSync(downloadedPath)) {
        return downloadedPath;
    }
    if (fs_1.default.existsSync(devBuiltPath)) {
        return devBuiltPath;
    }
    throw new Error(`Native binary not found. Expected one of:\n- ${downloadedPath}\n- ${devBuiltPath}\n\nIf you just installed this package, ensure postinstall succeeded.\nIf you're developing locally, run the dev build to create the host binary.`);
}
function reflectFor(type, declarationBody) {
    const binaryPath = resolveNativeBinaryPath();
    const result = (0, child_process_1.spawnSync)(binaryPath, [`--type=${type}`], {
        input: declarationBody,
        encoding: "utf8",
        maxBuffer: 1024 * 1024 * 50,
    });
    if (result.error) {
        throw new Error(`apex-reflection native binary failed to start. error:\n${String(result.error)}`);
    }
    if (result.status !== 0) {
        throw new Error(`apex-reflection native binary failed (code=${result.status}). stderr:\n${result.stderr ?? ""}`);
    }
    const stdout = (result.stdout ?? "").toString().trim();
    if (!stdout) {
        throw new Error("apex-reflection native binary produced no output on stdout.");
    }
    return stdout;
}
function reflect(declarationBody) {
    const stdout = reflectFor("reflectType", declarationBody);
    try {
        return JSON.parse(stdout);
    }
    catch (e) {
        throw new Error(`apex-reflection native binary output was not valid JSON.\nstdout:\n${stdout}\nerror: ${String(e)}`);
    }
}
exports.reflect = reflect;
function reflectTrigger(declarationBody) {
    const stdout = reflectFor("reflectTrigger", declarationBody);
    try {
        return JSON.parse(stdout);
    }
    catch (e) {
        throw new Error(`apex-reflection native binary output was not valid JSON.\nstdout:\n${stdout}\nerror: ${String(e)}`);
    }
}
exports.reflectTrigger = reflectTrigger;
