# Repo Public Optimization — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Maximize the public visibility, credibility, and usability of autopunk-media-skills through GitHub metadata, CI/CD, docs site, and cleanup.

**Architecture:** Eight independent tasks across three tiers — quick metadata/cleanup wins, medium CI/CD automation, and a GitHub Pages docs site. Tasks are ordered by dependency but most can run in parallel.

**Tech Stack:** Git, GitHub Actions (YAML), Python 3 (stdlib only), GitHub Pages with Jekyll minimal theme, `gh` CLI

---

## File Map

| Action | Path | Responsibility |
|--------|------|----------------|
| Create | `.gitattributes` | Mark generated files for GitHub linguist |
| Create | `.github/FUNDING.yml` | Enable Sponsor button |
| Delete | `skills/**/* 3.*` (117 files) | Remove merge-conflict duplicates |
| Create | `.github/workflows/validate-skills.yml` | PR validation CI |
| Create | `.github/workflows/sync-marketplace.yml` | Auto-regenerate marketplace.json on merge |
| Create | `docs/_config.yml` | Jekyll config for GitHub Pages |
| Create | `docs/index.md` | Docs site landing page |
| Create | `docs/marketing/manual-actions.md` | Document all manual-only steps |

---

### Task 1: Create `.gitattributes` to fix language stats

**Files:**
- Create: `.gitattributes`

- [ ] **Step 1: Create the file**

```
*.evals.json linguist-generated=true
*.evals*.json linguist-generated=true
.claude-plugin/marketplace.json linguist-generated=true
```

This tells GitHub's linguist to exclude eval JSON and marketplace.json from language statistics, so the repo shows as "Markdown" (the actual content) instead of "JSON".

- [ ] **Step 2: Verify with git check-attr**

Run: `git check-attr linguist-generated -- skills/youtube/pre-production/hook-generator.evals.json`
Expected: `linguist-generated: true`

- [ ] **Step 3: Commit**

```bash
git add .gitattributes
git commit -m "chore: add .gitattributes to fix GitHub language stats"
```

---

### Task 2: Create `.github/FUNDING.yml`

**Files:**
- Create: `.github/FUNDING.yml`

- [ ] **Step 1: Create the file**

```yaml
github: ur-grue
```

This enables the "Sponsor" button on the repo page pointing to GitHub Sponsors. If ur-grue doesn't have GitHub Sponsors set up yet, this can be changed later to `ko_fi`, `buy_me_a_coffee`, or `custom` URL.

- [ ] **Step 2: Commit**

```bash
git add .github/FUNDING.yml
git commit -m "chore: add FUNDING.yml for GitHub Sponsors button"
```

---

### Task 3: Clean up 117 merge-conflict duplicate files

**Files:**
- Delete: all files matching `* 3.*` pattern under `skills/` (117 files)

- [ ] **Step 1: List all duplicates to verify**

Run: `find skills/ -name "* 3.*" | wc -l`
Expected: `117` (approximately)

- [ ] **Step 2: Delete all duplicates**

Run: `find skills/ -name "* 3.*" -delete`

- [ ] **Step 3: Verify deletion**

Run: `find skills/ -name "* 3.*" | wc -l`
Expected: `0`

- [ ] **Step 4: Also check for any " 2" or " 4" duplicates**

Run: `find . -name "* [0-9].*" -not -path "./.git/*" | wc -l`
Expected: `0`

- [ ] **Step 5: Commit**

```bash
git ls-files --deleted | xargs git add
git commit -m "chore: remove merge-conflict duplicate files"
```

---

### Task 4: GitHub Actions — Validate skill format on PR

**Files:**
- Create: `.github/workflows/validate-skills.yml`

- [ ] **Step 1: Create the workflow file**

```yaml
name: Validate Skills

on:
  pull_request:
    paths:
      - 'skills/**/*.md'
      - 'scripts/generate-marketplace.py'

jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - uses: actions/setup-python@v5
        with:
          python-version: '3.12'

      - name: Validate frontmatter in changed skills
        run: |
          python3 -c "
          import re, sys, os

          errors = []
          required = ['name', 'status', 'category', 'subcategory', 'version', 'tags']
          valid_statuses = ['planned', 'draft', 'beta', 'stable']

          for root, dirs, files in os.walk('skills'):
              if '/locales/' in root:
                  continue
              for f in files:
                  if not f.endswith('.md'):
                      continue
                  path = os.path.join(root, f)
                  with open(path) as fh:
                      text = fh.read()
                  m = re.match(r'^---\s*\n(.*?\n)---\s*\n', text, re.DOTALL)
                  if not m:
                      errors.append(f'{path}: missing frontmatter')
                      continue
                  fm = {}
                  for line in m.group(1).strip().split('\n'):
                      if ':' in line:
                          k, v = line.split(':', 1)
                          fm[k.strip()] = v.strip()
                  for key in required:
                      if key not in fm:
                          errors.append(f'{path}: missing field \"{key}\"')
                  if 'status' in fm and fm['status'] not in valid_statuses:
                      errors.append(f"{path}: invalid status '{fm['status']}'")
                  # Note: locales/ skills are skipped via the '/locales/' check above

          if errors:
              print(f'Found {len(errors)} validation errors:')
              for e in errors:
                  print(f'  ❌ {e}')
              sys.exit(1)
          else:
              print('✅ All skill files have valid frontmatter')
          "

      - name: Regenerate marketplace.json and check for drift
        run: |
          python3 scripts/generate-marketplace.py
          if git diff --quiet .claude-plugin/marketplace.json; then
            echo "✅ marketplace.json is in sync"
          else
            echo "⚠️  marketplace.json is out of sync — run: python3 scripts/generate-marketplace.py"
            git diff .claude-plugin/marketplace.json | head -20
            exit 1
          fi
```

- [ ] **Step 2: Commit**

```bash
git add .github/workflows/validate-skills.yml
git commit -m "ci: add skill validation workflow for PRs"
```

---

### Task 5: GitHub Actions — Auto-sync marketplace.json on merge

**Files:**
- Create: `.github/workflows/sync-marketplace.yml`

- [ ] **Step 1: Create the workflow file**

```yaml
name: Sync Marketplace

on:
  push:
    branches: [main]
    paths:
      - 'skills/**/*.md'

permissions:
  contents: write

jobs:
  sync:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - uses: actions/setup-python@v5
        with:
          python-version: '3.12'

      - name: Regenerate marketplace.json
        run: python3 scripts/generate-marketplace.py

      - name: Commit if changed
        run: |
          git config user.name "github-actions[bot]"
          git config user.email "github-actions[bot]@users.noreply.github.com"
          git add .claude-plugin/marketplace.json
          if git diff --cached --quiet; then
            echo "No changes to marketplace.json"
          else
            git commit -m "chore: auto-sync marketplace.json [skip ci]"
            git push
          fi
```

- [ ] **Step 2: Commit**

```bash
git add .github/workflows/sync-marketplace.yml
git commit -m "ci: auto-sync marketplace.json on merge to main"
```

---

### Task 6: GitHub Pages docs site

**Files:**
- Create: `docs/_config.yml`
- Create: `docs/index.md`

- [ ] **Step 1: Create Jekyll config**

`docs/_config.yml`:

```yaml
title: autopunk-media-skills
description: 354 free AI skills for media professionals
baseurl: /autopunk-media-skills
remote_theme: pages-themes/minimal@v0.2.0
plugins:
  - jekyll-remote-theme
```

- [ ] **Step 2: Create docs landing page**

`docs/index.md`:

```markdown
---
layout: default
title: autopunk-media-skills
---

# autopunk-media-skills

**354 free AI skills for TV producers, journalists, podcasters, YouTubers, and media professionals.**

## Quick Links

- [Getting Started](getting-started.md) — pick your role, get 3 starter skills
- [Skill Index](skill-index.md) — find any skill by what you need to do
- [Writing Better Inputs](writing-better-inputs.md) — get usable output on the first try
- [Troubleshooting](troubleshooting.md) — common fixes for common problems

## Workflows

Step-by-step guides that chain multiple skills for complete projects:

- [YouTube Video Launch](workflows/youtube-video-launch.md) (8 skills)
- [Investigative Journalism Project](workflows/investigative-journalism-project.md) (10 skills)
- [Podcast Season Launch](workflows/podcast-season-launch.md) (9 skills)
- [Documentary Pitch to Greenlight](workflows/documentary-pitch-to-greenlight.md) (8 skills)
- [Newsletter From Scratch](workflows/newsletter-from-scratch.md) (8 skills)
- [PR Crisis Response](workflows/pr-crisis-response.md) (6 skills)

## Install

```bash
git clone https://github.com/ur-grue/autopunk-media-skills.git ~/.claude/skills/autopunk-media-skills
```

Compatible with Claude Code, Cursor, Codex CLI, Gemini CLI, OpenCode, and any agent supporting the Agent Skills standard.

---

[View on GitHub](https://github.com/ur-grue/autopunk-media-skills) · [Report a problem](https://github.com/ur-grue/autopunk-media-skills/issues)
```

- [ ] **Step 3: Commit**

```bash
git add docs/_config.yml docs/index.md
git commit -m "feat: add GitHub Pages docs site with Jekyll minimal theme"
```

- [ ] **Step 4: Enable GitHub Pages**

Run:
```bash
gh api repos/ur-grue/autopunk-media-skills/pages -X POST --input - <<'EOF' 2>/dev/null || \
gh api repos/ur-grue/autopunk-media-skills/pages -X PUT --input - <<'EOF'
{"source":{"branch":"main","path":"/docs"},"build_type":"legacy"}
EOF
```

- [ ] **Step 5: Update README homepage URL**

In `README.md`, the Install section already has the repo URL. Also update the repo homepage:

Run: `gh repo edit ur-grue/autopunk-media-skills --homepage "https://ur-grue.github.io/autopunk-media-skills/"`

---

### Task 7: Document manual actions

**Files:**
- Create: `docs/marketing/manual-actions.md`

- [ ] **Step 1: Create the manual actions file**

This consolidates all actions that require the maintainer (can't be automated):

```markdown
# Manual Actions Checklist

Actions that require human intervention — cannot be automated by CI/CD.

## GitHub Profile
- [ ] Pin `autopunk-media-skills` on your GitHub profile (Settings > Pinned repositories)
- [ ] Update ur-grue/ur-grue README.md with repo link (see `docs/marketing/profile-readme.md`)

## Social Preview
- [ ] Set `.github/banner.svg` as social preview: repo Settings > Social preview > Upload

## Community Engagement
- [ ] Star competing repos from ur-grue account:
  - [ ] `jamditis/claude-skills-journalism`
  - [ ] `fdaudens/ai-journalism-skills`
  - [ ] `anthropics/skills`
  - [ ] `Orchestra-Research/AI-Research-SKILLs`
- [ ] Open friendly cross-link issue on `jamditis/claude-skills-journalism`:
  - Title: "Cross-link: autopunk-media-skills (354 broadcast/TV/podcast skills)"
  - Body: "Hey! Great collection for investigative journalism. We've built a complementary library focused on broadcast, TV documentary, podcast, and radio production (354 skills). Would you be open to a mutual cross-link in our READMEs? We already link to your repo in our Related Projects section. Happy to discuss."
- [ ] Submit awesome-list PRs (see `docs/marketing/awesome-list-prs.md`)
- [ ] Submit to directories (see `docs/marketing/directory-submissions.md`)

## Content Marketing
- [ ] Write dev.to post: "354 Free Claude Skills for Media Professionals"
- [ ] Post to r/ClaudeAI with 2-3 example outputs
- [ ] LinkedIn post (EN) from maintainer profile

## Eval Pipeline
- [ ] Run eval pipeline with API key:
  ```bash
  export ANTHROPIC_API_KEY="sk-ant-..."
  ./tests/run-eval.sh --skill hook-generator
  # Then expand to all top 20:
  ./tests/run-eval.sh --top20
  ```
- [ ] Review results in `tests/runs/` and update skill scores if needed

## Demo Video (optional, high impact)
- [ ] Record 2-minute screen recording showing:
  1. Clone the repo (10 sec)
  2. Open a skill file, show the structure (15 sec)
  3. Paste into Claude, show the output (45 sec)
  4. Show a second skill from a different category (30 sec)
  5. End with the README and skill count (10 sec)
- [ ] Upload to YouTube, embed in README
- [ ] Share on LinkedIn and Reddit
```

- [ ] **Step 2: Commit**

```bash
git add docs/marketing/manual-actions.md
git commit -m "docs: add manual actions checklist for maintainer"
```

---

### Task 8: Final push and validation

- [ ] **Step 1: Push all commits**

```bash
git push origin main
```

- [ ] **Step 2: Verify GitHub Actions workflows appear**

Run: `gh workflow list`
Expected: `validate-skills` and `sync-marketplace` listed

- [ ] **Step 3: Verify GitHub Pages is deploying**

Run: `gh api repos/ur-grue/autopunk-media-skills/pages --jq '.html_url'`
Expected: `https://ur-grue.github.io/autopunk-media-skills/`

- [ ] **Step 4: Verify language stats**

Visit https://github.com/ur-grue/autopunk-media-skills — language bar should show Markdown as primary, not JSON.
Note: GitHub recalculates language stats asynchronously; may take a few minutes.

- [ ] **Step 5: Verify Sponsor button**

Visit https://github.com/ur-grue/autopunk-media-skills — "Sponsor" button should appear if ur-grue has GitHub Sponsors configured, otherwise the button appears once Sponsors is enabled.

- [ ] **Step 6: Final file inventory**

```bash
echo "=== New files ==="
ls -la .gitattributes .github/FUNDING.yml .github/workflows/*.yml docs/_config.yml docs/index.md docs/marketing/manual-actions.md
echo "=== Duplicate cleanup ==="
find skills/ -name "* [0-9].*" | wc -l
# Expected: 0
```
