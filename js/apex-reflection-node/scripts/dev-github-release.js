#!/usr/bin/env node

/**
 * Dev GitHub Release helper:
 * - Reads this package version from ./package.json (expected to be bumped to -dev.* already)
 * - Creates (or updates) a GitHub Release with tag: v<version>
 * - Uploads the host native binary as a release asset named:
 *     apex-reflection-<platform>-<arch>[.exe]
 *
 * This is intended to support the "dev" npm dist-tag workflow:
 * - npm package postinstall downloads binaries from GitHub Releases at tag v<version>
 * - for dev publishes, we need corresponding dev release assets
 *
 * Requirements:
 * - GitHub CLI (`gh`) installed and authenticated (e.g., `gh auth login`)
 * - Run from: js/apex-reflection-node/
 * - Binary already built at: dist/native/<platform-arch>/apex-reflection(.exe)
 *
 * Usage:
 *   node scripts/dev-github-release.js
 *
 * Environment variables:
 *   GITHUB_REPO    default: cesarParra/apex-reflection
 *   FORCE_DRAFT    if "1", creates/updates a draft release
 *   PRERELEASE     if "1", marks release as prerelease (default: true for -dev.* versions)
 *   DRY_RUN        if "1", prints what it would do but does not call gh
 */

const fs = require("fs");
const path = require("path");
const { spawnSync } = require("child_process");

function main() {
  ensureCwdLooksRight();

  const repo = process.env.GITHUB_REPO || "cesarParra/apex-reflection";
  const dryRun = process.env.DRY_RUN === "1";
  const forceDraft = process.env.FORCE_DRAFT === "1";

  const pkg = readJson(path.join(process.cwd(), "package.json"));
  const version = pkg && pkg.version;
  if (!version || typeof version !== "string") {
    fail("package.json is missing a valid string `version` field.");
  }

  const tag = `v${version}`;
  const isDev = version.includes("-dev.");
  const prerelease =
    process.env.PRERELEASE === "1" ? true : process.env.PRERELEASE === "0" ? false : isDev;

  const target = resolveHostTarget(process.platform, process.arch);
  const binaryPath = path.join(process.cwd(), "dist", "native", target.folderName, target.binaryFileName);
  if (!fs.existsSync(binaryPath)) {
    fail(
      `Host native binary not found at:\n  ${binaryPath}\n` +
        "Build it first (e.g. `npm run dev:build`).",
    );
  }

  const assetName = `apex-reflection-${target.releasePlatform}-${target.releaseArch}${target.exeExt}`;
  const releaseTitle = tag;

  const notes = [
    `apex-reflection ${tag} (dev)`,
    "",
    "This is a development prerelease used by the npm package postinstall step.",
    "",
    `Host-built asset included: ${assetName}`,
  ].join("\n");

  // 1) Ensure release exists (create if missing)
  if (dryRun) {
    log(`[DRY_RUN] Would ensure GitHub Release exists: ${repo} ${tag}`);
  } else {
    ensureReleaseExists({ repo, tag, title: releaseTitle, notes, prerelease, draft: forceDraft });
  }

  // 2) Upload (or overwrite) asset
  if (dryRun) {
    log(`[DRY_RUN] Would upload asset: ${binaryPath} -> ${assetName} (clobber)`);
  } else {
    uploadAsset({ repo, tag, binaryPath, assetName });
  }

  log(`[dev-github-release] Done. Release: https://github.com/${repo}/releases/tag/${tag}`);
}

function ensureCwdLooksRight() {
  const pwd = process.cwd();
  const pkgPath = path.join(pwd, "package.json");
  if (!fs.existsSync(pkgPath)) {
    fail(
      `package.json not found in cwd:\n  ${pwd}\n` +
        "Run this script from `js/apex-reflection-node/`.",
    );
  }
}

function ensureReleaseExists({ repo, tag, title, notes, prerelease, draft }) {
  // Check if exists: gh release view <tag> -R <repo>
  const view = runGh(["release", "view", tag, "-R", repo], { allowFail: true, stdio: "pipe" });
  if (view.code === 0) {
    log(`[dev-github-release] Release already exists: ${tag} (will upload asset with --clobber)`);
    // Optionally update metadata (title/notes/prerelease/draft).
    // gh doesn't have an "edit everything" in one command across all versions reliably,
    // but it does have "release edit". We'll attempt it best-effort.
    const editArgs = ["release", "edit", tag, "-R", repo, "--title", title, "--notes", notes];
    if (prerelease) editArgs.push("--prerelease");
    if (draft) editArgs.push("--draft");
    // If not prerelease/draft, do nothing special; we won't try to unset flags.
    runGh(editArgs, { allowFail: true, stdio: "inherit" });
    return;
  }

  log(`[dev-github-release] Creating release: ${tag}`);
  const createArgs = ["release", "create", tag, "-R", repo, "--title", title, "--notes", notes];
  if (prerelease) createArgs.push("--prerelease");
  if (draft) createArgs.push("--draft");
  runGh(createArgs, { allowFail: false, stdio: "inherit" });
}

function uploadAsset({ repo, tag, binaryPath, assetName }) {
  // gh release upload <tag> <path>#<name> -R <repo> --clobber
  // Use the "#<name>" suffix so the uploaded asset name matches our convention.
  const spec = `${binaryPath}#${assetName}`;
  log(`[dev-github-release] Uploading asset: ${assetName}`);
  runGh(["release", "upload", tag, spec, "-R", repo, "--clobber"], { allowFail: false, stdio: "inherit" });
}

function resolveHostTarget(nodePlatform, nodeArch) {
  // Must match postinstall.js mapping (publish-scripts/postinstall.js)
  // release platform values: darwin | linux | windows
  let releasePlatform;
  if (nodePlatform === "darwin") releasePlatform = "darwin";
  else if (nodePlatform === "linux") releasePlatform = "linux";
  else if (nodePlatform === "win32") releasePlatform = "windows";
  else fail(`Unsupported platform: ${nodePlatform}`);

  if (nodeArch !== "x64" && nodeArch !== "arm64") {
    fail(`Unsupported architecture: ${nodeArch}`);
  }

  if (releasePlatform === "linux" && nodeArch !== "x64") {
    fail(`Unsupported architecture for linux: ${nodeArch}`);
  }
  if (releasePlatform === "windows" && nodeArch !== "x64") {
    fail(`Unsupported architecture for windows: ${nodeArch}`);
  }

  const folderName = `${releasePlatform}-${nodeArch}`;
  const exeExt = releasePlatform === "windows" ? ".exe" : "";
  const binaryFileName = `apex-reflection${exeExt}`;
  return {
    releasePlatform,
    releaseArch: nodeArch,
    folderName,
    exeExt,
    binaryFileName,
  };
}

function runGh(args, { allowFail, stdio }) {
  const result = spawnSync("gh", args, {
    stdio: stdio || "inherit", // "inherit" or ["inherit","pipe","pipe"]
    env: process.env,
  });

  const code = typeof result.status === "number" ? result.status : 1;

  if (result.error) {
    const msg =
      `Failed to execute 'gh'. Make sure GitHub CLI is installed and authenticated.\n` +
      `Error: ${stringifyErr(result.error)}`;
    if (!allowFail) fail(msg);
    return { code: 1, stdout: "", stderr: msg };
  }

  const stdout = result.stdout ? result.stdout.toString("utf8") : "";
  const stderr = result.stderr ? result.stderr.toString("utf8") : "";

  if (code !== 0 && !allowFail) {
    fail(
      `GitHub CLI command failed (exit ${code}).\n` +
        `Command: gh ${args.join(" ")}\n` +
        (stderr ? `stderr:\n${stderr}\n` : ""),
    );
  }

  return { code, stdout, stderr };
}

function readJson(p) {
  return JSON.parse(fs.readFileSync(p, "utf8"));
}

function log(msg) {
  process.stdout.write(`${msg}\n`);
}

function fail(msg) {
  process.stderr.write(`[dev-github-release] ${msg}\n`);
  process.exit(1);
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
