#!/usr/bin/env node
"use strict";

const fs = require("fs");
const path = require("path");

function fail(message) {
  process.stderr.write(`[apex-reflection] copy-out-js-to-dist: ${message}\n`);
  process.exit(1);
}

function main() {
  const projectRoot = path.resolve(__dirname, "..");
  const src = path.join(projectRoot, "out.js");
  const distDir = path.join(projectRoot, "dist");
  const dst = path.join(distDir, "out.js");

  if (!fs.existsSync(src)) {
    fail(`source file not found: ${src}`);
  }

  try {
    fs.mkdirSync(distDir, { recursive: true });
  } catch (e) {
    fail(
      `failed to create dist dir (${distDir}): ${e && e.message ? e.message : String(e)}`,
    );
  }

  try {
    fs.copyFileSync(src, dst);
  } catch (e) {
    fail(
      `failed to copy out.js to dist: ${e && e.message ? e.message : String(e)}`,
    );
  }

  process.stdout.write(
    `[apex-reflection] copy-out-js-to-dist: copied ${src} -> ${dst}\n`,
  );
}

main();
