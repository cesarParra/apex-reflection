#!/usr/bin/env node

/**
 * Dev helper: chmod +x the host-native binary (if present).
 *
 * This is meant for local development when you build the native binary into:
 *   dist/native/<platform-arch>/apex-reflection(.exe)
 *
 * Usage:
 *   node scripts/dev-chmod-native-host.js
 */

const fs = require("fs");
const path = require("path");

function resolveHostFolder(platform, arch) {
  if (platform === "darwin" && arch === "arm64") return "darwin-arm64";
  if (platform === "darwin" && arch === "x64") return "darwin-x64";
  if (platform === "linux" && arch === "x64") return "linux-x64";
  if (platform === "win32" && arch === "x64") return "windows-x64";
  return null;
}

function main() {
  const platform = process.platform;
  const arch = process.arch;

  const folder = resolveHostFolder(platform, arch);
  if (!folder) {
    console.error(
      `[dev-chmod-native-host] Unsupported platform/arch: ${platform}/${arch}`,
    );
    process.exit(2);
  }

  const fileName = platform === "win32" ? "apex-reflection.exe" : "apex-reflection";

  // NOTE: This script is executed from the package root (js/apex-reflection-node),
  // so we resolve from process.cwd(). If someone runs it elsewhere, this will fail
  // loudly, which is fine for a dev-only script.
  const binaryPath = path.join(process.cwd(), "dist", "native", folder, fileName);

  if (!fs.existsSync(binaryPath)) {
    console.warn(
      `[dev-chmod-native-host] Binary not found at: ${binaryPath}\n` +
        "Build it first (e.g. `npm run dev:build`).",
    );
    process.exit(0);
  }

  if (platform === "win32") {
    // chmod is not meaningful on Windows the same way; keep this no-op.
    console.log(
      `[dev-chmod-native-host] Windows detected; skipping chmod for: ${binaryPath}`,
    );
    process.exit(0);
  }

  try {
    fs.chmodSync(binaryPath, 0o755);
    console.log(`[dev-chmod-native-host] chmod +x applied: ${binaryPath}`);
  } catch (e) {
    console.error(
      `[dev-chmod-native-host] Failed to chmod ${binaryPath}: ${
        e && e.message ? e.message : String(e)
      }`,
    );
    process.exit(1);
  }
}

main();
