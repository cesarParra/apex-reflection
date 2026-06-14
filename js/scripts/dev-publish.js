#!/usr/bin/env node

/**
 * Dev publish helper:
 * - bumps this package version to a timestamped `-dev.<timestamp>` prerelease
 * - builds the package (`npm run build`) which compiles the TS wrapper and
 *   copies the wasm artifact (node.wasm) + loader (node.mjs) into dist/
 * - publishes to npm with dist-tag `dev`
 *
 * The wasm binary is bundled directly in the npm tarball (see the `files`
 * field in package.json), so there is no postinstall step and no native
 * binaries to build or upload to GitHub Releases.
 *
 * Notes:
 * - Run this from `./js`.
 * - Requires you to be authenticated to npm (`npm whoami`).
 *
 * Usage:
 *   node scripts/dev-publish.js
 *
 * Optional env vars:
 *   NPM_TAG      default: dev
 *   NPM_ACCESS   default: public
 *   DRY_RUN      if "1", bumps the version and builds but does not publish
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

  if (dryRun) {
    console.log(
      "[dev-publish] DRY_RUN=1 set; skipping npm publish.",
    );
    return;
  }

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
        "Run this from `./js`.",
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

main();
