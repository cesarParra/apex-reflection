#!/usr/bin/env node

/**
 * Postinstall script.
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
 * Note:
 * - To make installs resilient (especially for dev releases), we try multiple possible asset names.
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
  const tag = `v${version}`;

  const outDir = path.join(
    __dirname,
    "..",
    "dist",
    "native",
    target.folderName,
  );
  const outPath = path.join(outDir, target.binaryFileName);

  fs.mkdirSync(outDir, { recursive: true });

  const candidateAssetNames = buildCandidateAssetNames(target);

  return downloadFirstAvailableAsset(tag, candidateAssetNames, outPath)
    .then(({ assetName }) => {
      if (process.platform !== "win32") {
        try {
          fs.chmodSync(outPath, 0o755);
        } catch (e) {
          console.warn(
            `[apex-reflection] postinstall: could not chmod +x ${outPath}: ${stringifyErr(e)}`,
          );
        }
      }

      console.log(
        `[apex-reflection] postinstall: native binary installed at: ${outPath} (asset: ${assetName})`,
      );
    })
    .catch((err) => {
      // Non-fatal: do not fail installation for downstream dependents.
      // At runtime, the tool will surface a clear error if the binary is missing.
      console.warn(
        "[apex-reflection] postinstall: warning: failed to install native binary (install will continue).",
      );
      console.warn(`[apex-reflection] postinstall: ${stringifyErr(err)}`);
      console.warn(
        "[apex-reflection] postinstall: If you intend to use apex-reflection, ensure the native binary is available.",
      );
      console.warn(
        "[apex-reflection] postinstall: Verify the release assets here:",
      );
      console.warn(
        `https://github.com/${REPO_OWNER}/${REPO_NAME}/releases/tag/${tag}`,
      );
      // Exit successfully and defer the failure to runtime.
      process.exit(0);
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

function buildCandidateAssetNames(target) {
  // Primary convention (expected):
  //   apex-reflection-<platform>-<arch>[.exe]
  const primary = `apex-reflection-${target.releasePlatform}-${target.releaseArch}${target.exeExt}`;

  // Fallbacks (mainly for dev flows / edge cases):
  const fallbacks = [];

  // Unsuffixed name (no arch/platform)
  // - For windows, prefer .exe and then without extension (just in case).
  if (target.releasePlatform === "windows") {
    fallbacks.push("apex-reflection.exe");
    fallbacks.push("apex-reflection");
  } else {
    fallbacks.push("apex-reflection");
  }

  // De-dup while preserving order
  const seen = new Set();
  return [primary, ...fallbacks].filter((name) => {
    if (seen.has(name)) return false;
    seen.add(name);
    return true;
  });
}

function downloadFirstAvailableAsset(tag, assetNames, destPath) {
  const base = `https://github.com/${REPO_OWNER}/${REPO_NAME}/releases/download/${tag}/`;

  let lastErr = null;

  // Try sequentially until one downloads successfully
  return assetNames
    .reduce(
      (p, assetName) => {
        return p.catch((_) => {
          const url = `${base}${assetName}`;
          process.stdout.write(
            `[apex-reflection] postinstall: trying ${url}\n`,
          );
          return downloadFile(url, destPath).then(() => ({ assetName }));
        });
      },
      Promise.reject(new Error("No candidate asset attempted yet.")),
    )
    .catch((err) => {
      lastErr = err;
      const tried = assetNames.map((n) => `${base}${n}`).join("\n");
      const msg =
        `Unable to download any matching binary asset for ${process.platform}/${process.arch}.\n` +
        `Tried:\n${tried}\n` +
        `Last error: ${stringifyErr(lastErr)}`;
      throw new Error(msg);
    });
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
        if (!next)
          return reject(new Error(`Redirect with no location for ${url}`));
        return downloadFile(next, destPath).then(resolve, reject);
      }

      if (response.statusCode !== 200) {
        response.resume();
        return reject(
          new Error(`HTTP ${response.statusCode} while downloading ${url}`),
        );
      }

      const totalSize = Number(response.headers["content-length"] || 0);
      let downloaded = 0;

      response.on("data", (chunk) => {
        downloaded += chunk.length;
        if (totalSize > 0) {
          const pct = Math.floor((downloaded / totalSize) * 100);
          process.stdout.write(
            `\r[apex-reflection] postinstall: downloading... ${pct}%`,
          );
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
