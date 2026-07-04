#!/usr/bin/env node
"use strict";

const fs = require("fs");
const path = require("path");

function fail(message) {
  process.stderr.write(
    `[apex-reflection] copy-node-wasm-to-dist: ${message}\n`,
  );
  process.exit(1);
}

function main() {
  const projectRoot = path.resolve(__dirname, "..");
  const distDir = path.join(projectRoot, "dist");

  try {
    fs.mkdirSync(distDir, { recursive: true });
  } catch (e) {
    fail(
      `failed to create dist dir (${distDir}): ${e && e.message ? e.message : String(e)}`,
    );
  }

  // The wasm module and its loader are emitted as a matched pair by
  // `dart compile wasm`; shipping one without the other risks an ABI
  // mismatch, so both are copied together.
  for (const fileName of ["node.wasm", "node.mjs"]) {
    const src = path.join(projectRoot, fileName);
    const dst = path.join(distDir, fileName);

    if (!fs.existsSync(src)) {
      fail(`source file not found: ${src}`);
    }

    try {
      fs.copyFileSync(src, dst);
    } catch (e) {
      fail(
        `failed to copy ${fileName} to dist: ${e && e.message ? e.message : String(e)}`,
      );
    }

    process.stdout.write(
      `[apex-reflection] copy-node-wasm-to-dist: copied ${src} -> ${dst}\n`,
    );
  }
}

main();
