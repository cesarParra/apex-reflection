#!/usr/bin/env node

/**
 * Postinstall script (publishable):
 * - Downloads the correct native binary for the current platform/arch from GitHub Releases
 * - Stores it inside this package at: dist/native/<platform-arch>/<binaryName>
 * - Ensures executable permissions on Unix-like systems
 *
 * Asset naming convention (GitHub Release assets):
 *   apex-reflection-<platform>-<arch>[.exe]
 *
 * Where:
 *   platform: darwin | linux | windows
 *   arch:     x64 | arm64 (darwin supports both; linux/windows only x64 in this setup)
 *
 * The GitHub release tag is expected to be:
 *   v<version>   (version taken from this package's package.json)
 *
 * This keeps the npm package small by downloading only the needed binary at install time.
 */

const https = require("https");
const fs = require("fs");
const path = require("path");
const stream = require("stream");
const { promisify } = require("util");

const pipeline = promisify(stream.pipeline);

const REPO_OWNER = "cesarParra";
const REPO_NAME = "apex-reflection";

function main() {
  console.log("[apex-reflection] postinstall: installing native binary...");

  const pkg = readPackageJson();
  const version = pkg.version;
  if (!version || typeof version !== "string") {
    fail("package.json missing a valid `version` field.");
  }

  const target = resolveTarget(process.platform, process.arch);
  const assetName = `apex-reflection-${target.releasePlatform}-${target.releaseArch}${target.exeExt}`;
  const tag = `v${version}`;

  const downloadUrl = `https://github.com/${REPO_OWNER}/${REPO_NAME}/releases/download/${tag}/${assetName}`;

  const outDir = path.join(__dirname, "..", "dist", "native", target.folderName);
  const outPath = path.join(outDir, target.binaryFileName);

  fs.mkdirSync(outDir, { recursive: true });

  return downloadFile(downloadUrl, outPath)
    .then(() => {
      if (process.platform !== "win32") {
        try {
          fs.chmodSync(outPath, 0o755);
        } catch (e) {
          console.warn(
            `[apex-reflection] postinstall: could not chmod +x ${outPath}: ${stringifyErr(e)}`
          );
        }
      }

      console.log(`[apex-reflection] postinstall: native binary installed at: ${outPath}`);
    })
    .catch((err) => {
      console.error("[apex-reflection] postinstall: failed to install native binary.");
      console.error(`[apex-reflection] postinstall: ${stringifyErr(err)}`);
      console.error("[apex-reflection] postinstall: Verify the release assets here:");
      console.error(`https://github.com/${REPO_OWNER}/${REPO_NAME}/releases/tag/${tag}`);
      process.exit(1);
    });
}

function readPackageJson() {
  const pkgPath = path.join(__dirname, "..", "package.json");
  const raw = fs.readFileSync(pkgPath, "utf8");
  return JSON.parse(raw);
}

function resolveTarget(nodePlatform, nodeArch) {
  const platformMap = {
    darwin: "darwin",
    linux: "linux",
    win32: "windows",
  };

  const releasePlatform = platformMap[nodePlatform];
  if (!releasePlatform) {
    throw new Error(`Unsupported platform: ${nodePlatform}`);
  }

  const supportedArch = new Set(["x64", "arm64"]);
  if (!supportedArch.has(nodeArch)) {
    throw new Error(`Unsupported architecture: ${nodeArch}`);
  }

  // Current intended support
  if (releasePlatform === "linux" && nodeArch !== "x64") {
    throw new Error(`Unsupported architecture for linux: ${nodeArch}`);
  }
  if (releasePlatform === "windows" && nodeArch !== "x64") {
    throw new Error(`Unsupported architecture for windows: ${nodeArch}`);
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

function downloadFile(url, destPath) {
  return new Promise((resolve, reject) => {
    const tmpPath = `${destPath}.tmp`;

    try {
      if (fs.existsSync(tmpPath)) fs.unlinkSync(tmpPath);
    } catch (_) {
      // ignore
    }

    const request = https.get(url, (response) => {
      if (response.statusCode === 301 || response.statusCode === 302) {
        const next = response.headers.location;
        response.resume();
        if (!next) return reject(new Error(`Redirect with no location for ${url}`));
        return downloadFile(next, destPath).then(resolve, reject);
      }

      if (response.statusCode !== 200) {
        response.resume();
        return reject(new Error(`HTTP ${response.statusCode} while downloading ${url}`));
      }

      const totalSize = Number(response.headers["content-length"] || 0);
      let downloaded = 0;

      response.on("data", (chunk) => {
        downloaded += chunk.length;
        if (totalSize > 0) {
          const pct = Math.floor((downloaded / totalSize) * 100);
          process.stdout.write(`\r[apex-reflection] postinstall: downloading... ${pct}%`);
        }
      });

      const file = fs.createWriteStream(tmpPath);

      pipeline(response, file)
        .then(() => {
          process.stdout.write("\n");
          fs.renameSync(tmpPath, destPath);
          resolve();
        })
        .catch((err) => {
          try {
            if (fs.existsSync(tmpPath)) fs.unlinkSync(tmpPath);
          } catch (_) {
            // ignore
          }
          reject(err);
        });
    });

    request.on("error", (err) => {
      try {
        if (fs.existsSync(tmpPath)) fs.unlinkSync(tmpPath);
      } catch (_) {
        // ignore
      }
      reject(err);
    });
  });
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

function fail(msg) {
  console.error(`[apex-reflection] postinstall: ${msg}`);
  process.exit(1);
}

Promise.resolve(main());
