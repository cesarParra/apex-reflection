#!/usr/bin/env node

/**
 * Builds native Dart executables into `dist/native/<platform-arch>/`.
 *
 * Usage:
 *   node scripts/build-natives.js --host
 *   node scripts/build-natives.js --all
 *
 * Notes:
 * - This script is intended to be run from `js/apex-reflection-node/`.
 * - `--host` builds only the current platform/arch (for local dev).
 * - `--all` builds the set of targets that are buildable on the current host
 *   (primarily for CI where the workflow matrix runs on each OS).
 */

const { spawnSync } = require("child_process");
const fs = require("fs");
const path = require("path");

function main() {
  const args = process.argv.slice(2);
  const buildHost = args.includes("--host");
  const buildAll = args.includes("--all");

  if ((buildHost && buildAll) || (!buildHost && !buildAll)) {
    console.error("Usage: node scripts/build-natives.js --host | --all");
    process.exit(2);
  }

  const rootDir = process.cwd(); // expected: js/apex-reflection-node
  const dartEntry = path.resolve(rootDir, "..", "..", "bin", "apex_reflection.dart");

  if (!fs.existsSync(dartEntry)) {
    console.error(`Dart entrypoint not found at: ${dartEntry}`);
    console.error(
      "Run this script from `js/apex-reflection-node/` so the relative path resolution works.",
    );
    process.exit(2);
  }

  const host = detectHost();
  const targets = buildHost ? [host] : computeBuildableTargetsForHost(host);

  if (buildAll) {
    console.log(`[build-natives] Host: ${host.platform}/${host.arch}`);
    console.log(
      `[build-natives] Building all targets buildable on this host (${targets.length}):`,
    );
    for (const t of targets) console.log(`  - ${t.id} (${t.targetOs}/${t.targetArch})`);
  } else {
    console.log(`[build-natives] Building host target: ${host.id} (${host.targetOs}/${host.targetArch})`);
  }

  let failures = 0;
  for (const target of targets) {
    const ok = buildTarget(dartEntry, rootDir, target);
    if (!ok) failures++;
  }

  if (failures > 0) {
    console.error(`[build-natives] Failed building ${failures} target(s).`);
    process.exit(1);
  }

  console.log("[build-natives] Done.");
}

function detectHost() {
  const platform = process.platform;
  const arch = process.arch;

  // Map Node -> Dart compile flags and our folder naming.
  if (platform === "darwin" && arch === "arm64") {
    return {
      id: "darwin-arm64",
      platform,
      arch,
      targetOs: "macos",
      targetArch: "arm64",
      folder: "darwin-arm64",
      fileName: "apex-reflection",
    };
  }
  if (platform === "darwin" && arch === "x64") {
    return {
      id: "darwin-x64",
      platform,
      arch,
      targetOs: "macos",
      targetArch: "x64",
      folder: "darwin-x64",
      fileName: "apex-reflection",
    };
  }
  if (platform === "linux" && arch === "x64") {
    return {
      id: "linux-x64",
      platform,
      arch,
      targetOs: "linux",
      targetArch: "x64",
      folder: "linux-x64",
      fileName: "apex-reflection",
    };
  }
  if (platform === "win32" && arch === "x64") {
    return {
      id: "windows-x64",
      platform,
      arch,
      targetOs: "windows",
      targetArch: "x64",
      folder: "windows-x64",
      fileName: "apex-reflection.exe",
    };
  }

  console.error(`Unsupported host platform/arch: ${platform}/${arch}`);
  process.exit(2);
}

function computeBuildableTargetsForHost(host) {
  // In practice, Dart AOT cross-compilation availability varies by SDK/host.
  // We choose a conservative strategy:
  // - Always build the host target.
  // - Additionally, attempt other targets ONLY if they're known to be buildable
  //   (CI matrix should run on each OS to cover all platforms).
  //
  // This allows `--all` to be used in CI on each runner without breaking local dev.
  const targets = [host];

  // As of current behavior observed in this repo environment:
  // - macOS arm64 runner can generally build macOS arm64 (host), but may not build macOS x64.
  // - linux x64 runner can build linux x64 (host).
  // - windows x64 runner can build windows x64 (host).
  //
  // If in the future Dart supports more cross-targets on your setup, you can extend this mapping.
  return dedupeTargets(targets);
}

function dedupeTargets(targets) {
  const map = new Map();
  for (const t of targets) map.set(t.id, t);
  return Array.from(map.values());
}

function buildTarget(dartEntry, rootDir, target) {
  const outDir = path.join(rootDir, "dist", "native", target.folder);
  const outPath = path.join(outDir, target.fileName);

  fs.mkdirSync(outDir, { recursive: true });

  console.log(`[build-natives] Building ${target.id} -> ${path.relative(rootDir, outPath)}`);

  // Build command:
  // dart compile exe <entry> -o <out> --target-os=<os> --target-arch=<arch>
  const dartArgs = [
    "compile",
    "exe",
    dartEntry,
    "-o",
    outPath,
    "--target-os",
    target.targetOs,
    "--target-arch",
    target.targetArch,
  ];

  const result = spawnSync("dart", dartArgs, {
    stdio: "inherit",
    env: process.env,
  });

  if (result.error) {
    console.error(`[build-natives] Error spawning dart: ${result.error.message}`);
    return false;
  }

  if (result.status !== 0) {
    console.error(`[build-natives] Dart compilation failed for target ${target.id}.`);
    return false;
  }

  // Validate output exists
  if (!fs.existsSync(outPath)) {
    console.error(`[build-natives] Expected output missing: ${outPath}`);
    return false;
  }

  return true;
}

main();
