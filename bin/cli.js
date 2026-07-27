#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

const PACKAGE_ROOT = path.resolve(__dirname, '..');
const SKILLS_SRC = path.join(PACKAGE_ROOT, 'skills');
const AGENTS_SRC = path.join(PACKAGE_ROOT, 'agents');
const HOOKS_SRC = path.join(PACKAGE_ROOT, 'hooks');

const USAGE = `
autopunk-media-skills — install media production skills for Claude

Usage:
  autopunk-media-skills install [--target <dir>]   Copy skills to target directory
  autopunk-media-skills list                       List all available categories
  autopunk-media-skills info                       Show library stats
  autopunk-media-skills help                       Show this message

Options:
  --target <dir>   Where to install (default: ./.claude/skills/autopunk-media-skills)
  --agents         Also install agent definitions
  --hooks          Also install editorial hooks
  --all            Install skills + agents + hooks
`;

function countFiles(dir, ext) {
  let count = 0;
  if (!fs.existsSync(dir)) return 0;
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      count += countFiles(full, ext);
    } else if (entry.name.endsWith(ext)) {
      count++;
    }
  }
  return count;
}

function copyDir(src, dest) {
  let copied = 0;
  fs.mkdirSync(dest, { recursive: true });
  for (const entry of fs.readdirSync(src, { withFileTypes: true })) {
    const srcPath = path.join(src, entry.name);
    const destPath = path.join(dest, entry.name);
    if (entry.isDirectory()) {
      copied += copyDir(srcPath, destPath);
    } else if (entry.name.endsWith('.md') && entry.name !== 'README.md') {
      fs.copyFileSync(srcPath, destPath);
      copied++;
    }
  }
  return copied;
}

function listCategories() {
  if (!fs.existsSync(SKILLS_SRC)) {
    console.error('Error: skills directory not found.');
    process.exit(1);
  }
  const categories = fs.readdirSync(SKILLS_SRC, { withFileTypes: true })
    .filter(e => e.isDirectory())
    .map(e => {
      const count = countFiles(path.join(SKILLS_SRC, e.name), '.md');
      return { name: e.name, count };
    })
    .sort((a, b) => b.count - a.count);

  console.log('\nCategories:\n');
  for (const cat of categories) {
    console.log(`  ${cat.name.padEnd(24)} ${cat.count} skills`);
  }
  console.log(`\n  Total: ${categories.reduce((s, c) => s + c.count, 0)} skill files\n`);
}

function showInfo() {
  const skillCount = countFiles(SKILLS_SRC, '.md');
  const agentCount = countFiles(AGENTS_SRC, '.md') - 1; // exclude template
  const hookCount = countFiles(HOOKS_SRC, '.md');
  console.log(`
autopunk-media-skills v${require('../package.json').version}

  Skills:  ${skillCount}
  Agents:  ${agentCount}
  Hooks:   ${hookCount}

  License: MIT
  Repo:    https://github.com/ur-grue/autopunk-media-skills
`);
}

function install(args) {
  const targetIdx = args.indexOf('--target');
  const targetDir = targetIdx !== -1 && args[targetIdx + 1]
    ? path.resolve(args[targetIdx + 1])
    : path.resolve('.claude', 'skills', 'autopunk-media-skills');

  const installAgents = args.includes('--agents') || args.includes('--all');
  const installHooks = args.includes('--hooks') || args.includes('--all');

  console.log(`\nInstalling to: ${targetDir}\n`);

  const skillsCopied = copyDir(SKILLS_SRC, path.join(targetDir, 'skills'));
  console.log(`  Skills: ${skillsCopied} files copied`);

  if (installAgents) {
    const agentsCopied = copyDir(AGENTS_SRC, path.join(targetDir, 'agents'));
    console.log(`  Agents: ${agentsCopied} files copied`);
  }

  if (installHooks) {
    const hooksCopied = copyDir(HOOKS_SRC, path.join(targetDir, 'hooks'));
    console.log(`  Hooks:  ${hooksCopied} files copied`);
  }

  console.log('\nDone.\n');
}

const args = process.argv.slice(2);
const command = args[0] || 'help';

switch (command) {
  case 'install':
    install(args);
    break;
  case 'list':
    listCategories();
    break;
  case 'info':
    showInfo();
    break;
  case 'help':
  case '--help':
  case '-h':
    console.log(USAGE);
    break;
  default:
    console.error(`Unknown command: ${command}`);
    console.log(USAGE);
    process.exit(1);
}
