#!/usr/bin/env node

/**
 * Dev helper: bump this package's version to a timestamped -dev prerelease.
 *
 * Example:
 *   2.22.0   -> 2.22.0-dev.20251224153045
 *   2.22.0-foo.1 -> 2.22.0-dev.20251224153045   (drops existing prerelease/build metadata)
 *
 * This edits ./package.json in-place (run from `./js`).
 *
 * Usage:
 *   node scripts/dev-bump-version-prerelease.js
 */

const fs = require("fs");
const path = require("path");

function pad2(n) {
  return String(n).padStart(2, "0");
}

/**
 * Returns YYYYMMDDhhmmss in local time (stable and filesystem/tag friendly).
 */
function timestamp14() {
  const d = new Date();
  return (
    String(d.getFullYear()) +
    pad2(d.getMonth() + 1) +
    pad2(d.getDate()) +
    pad2(d.getHours()) +
    pad2(d.getMinutes()) +
    pad2(d.getSeconds())
  );
}

/**
 * Extracts the base semver (major.minor.patch) from a version string.
 * Falls back to the portion before the first '-' if it doesn't match semver strictly.
 */
function baseVersion(version) {
  const m = /^(\d+)\.(\d+)\.(\d+)(?:[-+].*)?$/.exec(version);
  if (m) return `${m[1]}.${m[2]}.${m[3]}`;
  return String(version).split("-")[0];
}

function main() {
  const pkgPath = path.join(process.cwd(), "package.json");

  if (!fs.existsSync(pkgPath)) {
    console.error(
      `[dev-bump-version-prerelease] package.json not found at: ${pkgPath}\n` +
        "Run this script from `./js`.",
    );
    process.exit(2);
  }

  const raw = fs.readFileSync(pkgPath, "utf8");
  const pkg = JSON.parse(raw);

  if (!pkg || typeof pkg.version !== "string") {
    console.error(
      "[dev-bump-version-prerelease] package.json is missing a string `version` field.",
    );
    process.exit(2);
  }

  const base = baseVersion(pkg.version);
  const ts = timestamp14();
  const next = `${base}-dev.${ts}`;

  pkg.version = next;
  fs.writeFileSync(pkgPath, JSON.stringify(pkg, null, 2) + "\n", "utf8");

  console.log(next);
}

main();
