#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

// Get the new version from command line argument
const newVersion = process.argv[2];

if (!newVersion) {
  console.error('Usage: node scripts/bump-version.js <new-version>');
  console.error('Example: node scripts/bump-version.js 0.1.0');
  process.exit(1);
}

// Validate version format
if (!/^\d+\.\d+\.\d+$/.test(newVersion)) {
  console.error('Invalid version format. Please use semantic versioning (e.g., 1.2.3)');
  process.exit(1);
}

// Update package.json
const packageJsonPath = path.join(__dirname, '..', 'package.json');
const packageJson = JSON.parse(fs.readFileSync(packageJsonPath, 'utf8'));
packageJson.version = newVersion;
fs.writeFileSync(packageJsonPath, JSON.stringify(packageJson, null, 2) + '\n');
console.log(`✓ Updated package.json to version ${newVersion}`);

console.log('\nNext steps:');
console.log('1. Commit these changes: git add -A && git commit -m "Bump version to ' + newVersion + '"');
console.log('2. Push to main: git push origin main');
console.log('3. The GitHub Action will automatically create a release and publish to npm');
