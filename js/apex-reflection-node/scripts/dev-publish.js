#!/usr/bin/env node

/**
 * Dev publish helper:
 * - bumps this package version to a timestamped `-dev.<timestamp>` prerelease
 * - builds JS (`npm run build`)
 * - builds host native binary (`npm run dev:build:native:host`)
 * - chmods host native binary (best-effort)
 * - creates/updates a GitHub Release for v<version> and uploads the host binary asset
 * - publishes to npm with dist-tag `dev`
 *
 * Notes:
 * - This script is for local development and assumes you run it from:
 *     js/apex-reflection-node/
 * - The npm package `postinstall` downloads binaries from a GitHub Release tag named `v<version>`.
 *   Therefore, for dev publishes to work for consumers, we must upload a matching release asset.
 * - Requires GitHub CLI (`gh`) to be installed and authenticated (`gh auth login`).
 *
 * Usage:
 *   node scripts/dev-publish.js
 *
 * Optional env vars:
 *   NPM_TAG      default: dev
 *   NPM_ACCESS   default: public
 *   DRY_RUN      if "1", runs builds but does not publish (also skips GitHub release upload)
 *   GITHUB_REPO  default: cesarParra/apex-reflection
 */

const { spawnSync } = require("child_process");
const fs = require("fs");
const path = require("path");

function main() {
  ensureCwdLooksRight();

  const npmTag = process.env.NPM_TAG || "dev";
  const npmAccess = process.env.NPM_ACCESS || "public";
  const dryRun = process.env.DRY_RUN === "1";

  const bumpedVersion = runNodeScript(
    "scripts/dev-bump-version-prerelease.js",
    [],
  );
  console.log(`[dev-publish] version -> ${bumpedVersion}`);

  runCmd("npm", ["run", "build"]);
  runCmd("npm", ["run", "dev:build:native:host"]);

  // Best-effort chmod; don't fail publish if chmod isn't applicable.
  try {
    chmodHostBinaryIfPresent();
  } catch (e) {
    console.warn(`[dev-publish] chmod step skipped/failed: ${stringifyErr(e)}`);
  }

  if (dryRun) {
    console.log(
      "[dev-publish] DRY_RUN=1 set; skipping GitHub release upload and npm publish.",
    );
    return;
  }

  // Upload a matching GitHub Release asset so consumers can install the dev build
  // (postinstall downloads from GitHub Releases at tag v<version>).
  runCmd(process.execPath, ["scripts/dev-github-release.js"]);

  runCmd("npm", ["publish", "--tag", npmTag, "--access", npmAccess]);

  console.log(
    `[dev-publish] published ${bumpedVersion} with dist-tag "${npmTag}".`,
  );
}

function ensureCwdLooksRight() {
  const pkgPath = path.join(process.cwd(), "package.json");
  if (!fs.existsSync(pkgPath)) {
    throw new Error(
      `package.json not found in cwd: ${process.cwd()}\n` +
        "Run this from `js/apex-reflection-node/`.",
    );
  }
  const pkg = JSON.parse(fs.readFileSync(pkgPath, "utf8"));
  if (
    !pkg ||
    typeof pkg.name !== "string" ||
    !pkg.name.includes("apex-reflection")
  ) {
    console.warn(
      `[dev-publish] Warning: package name doesn't look like apex-reflection: ${pkg && pkg.name}`,
    );
  }
}

function runNodeScript(relativePath, args) {
  const full = path.join(process.cwd(), relativePath);
  if (!fs.existsSync(full)) {
    throw new Error(`Required script not found: ${relativePath}`);
  }

  // Capture stdout because the bump script prints the new version.
  const result = spawnSync(process.execPath, [full, ...args], {
    stdio: ["inherit", "pipe", "inherit"],
    env: process.env,
  });

  if (result.error) throw result.error;
  if (result.status !== 0) {
    throw new Error(
      `Script failed: node ${relativePath} (exit ${result.status})`,
    );
  }

  const out = (result.stdout || Buffer.from("")).toString("utf8").trim();
  return out;
}

function runCmd(cmd, args) {
  const result = spawnSync(cmd, args, {
    stdio: "inherit",
    env: process.env,
  });

  if (result.error) throw result.error;
  if (result.status !== 0) {
    throw new Error(
      `Command failed: ${cmd} ${args.join(" ")} (exit ${result.status})`,
    );
  }
}

function chmodHostBinaryIfPresent() {
  const platform = process.platform;
  const arch = process.arch;

  if (platform === "win32") {
    // No-op (chmod not meaningful the same way).
    return;
  }

  const folder = resolveHostFolder(platform, arch);
  if (!folder) {
    throw new Error(`Unsupported platform/arch for chmod: ${platform}/${arch}`);
  }

  const binaryPath = path.join(
    process.cwd(),
    "dist",
    "native",
    folder,
    "apex-reflection",
  );
  if (!fs.existsSync(binaryPath)) {
    console.warn(`[dev-publish] host binary not found to chmod: ${binaryPath}`);
    return;
  }

  fs.chmodSync(binaryPath, 0o755);
  console.log(`[dev-publish] chmod +x applied: ${binaryPath}`);
}

function resolveHostFolder(platform, arch) {
  if (platform === "darwin" && arch === "arm64") return "darwin-arm64";
  if (platform === "darwin" && arch === "x64") return "darwin-x64";
  if (platform === "linux" && arch === "x64") return "linux-x64";
  if (platform === "win32" && arch === "x64") return "windows-x64";
  return null;
}

function stringifyErr(e) {
  if (!e) return "unknown error";
  if (typeof e === "string") return e;
  if (e && e.message) return e.message;
  try {
    return JSON.stringify(e);
  } catch (_) {
    return String(e);
  }
}

main();
