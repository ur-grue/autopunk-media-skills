---
layout: default
title: Using with Gemini CLI
---

# Using with Gemini CLI

Gemini CLI is Google's terminal-based AI agent. It reads files in your project directory, follows instructions, and produces structured output. When you run it inside this repo, it can find and apply skills just like any other coding agent.

---

## What You Get

**454 skills** across 15 media categories, plus **6 stable agents** that chain skills into complete workflows. The skills are model-agnostic — written for Claude but fully functional on Gemini models.

[Browse all agents](/agents/) · [Pick your role](/roles/) to find your starting point.

---

## Setup (one time)

### 1. Install Gemini CLI

```bash
npm install -g @google/gemini-cli
```

You need Node.js 18 or later and a Google account.

### 2. Authenticate

```bash
gemini
```

On first run, Gemini CLI opens a browser window for Google account authentication. Follow the prompts.

### 3. Clone the repo

```bash
git clone https://github.com/ur-grue/autopunk-media-skills.git
```

### 4. Run Gemini in the repo

```bash
cd autopunk-media-skills
gemini
```

---

## How to use a skill

Describe your task and reference the skill:

```
Read skills/podcast/pre-production/episode-concept-generator/SKILL.md and
generate 5 episode concepts for a true crime podcast about unsolved cold cases.
```

Or describe the task in plain language:

```
I need interview questions for a podcast guest who is a climate scientist.
Find the right skill in this repo.
```

---

## Using GEMINI.md

Gemini CLI reads a `GEMINI.md` file in the project root for context, similar to how Claude Code reads `CLAUDE.md`. This repo includes a `CLAUDE.md` that describes the full skill library. To make Gemini CLI aware of it, create a symlink:

```bash
cd autopunk-media-skills
ln -s CLAUDE.md GEMINI.md
```

Now Gemini CLI loads the project context automatically on every session.

---

## Using agents

All six agents are in the `agents/` directory. Reference the agent file:

```
Read agents/youtube-channel-operator-agent.md and follow its workflow.

Channel: "Tiny Kitchen Labs" — 15K subscribers, cooking experiments in
small spaces. Target audience: apartment dwellers who love cooking.
Topic: five one-pot pasta recipes that take under 20 minutes.
Target length: 10 minutes. Tone: casual, enthusiastic, practical.
```

```
Read agents/investigative-reporter-agent.md and follow its workflow.

Story: Local zoning board approved 14 variance requests from a single
developer in 18 months. No other developer received more than 2.
Publication: regional daily newspaper.
```

---

## Tips

- **Create a `GEMINI.md` symlink.** This gives Gemini CLI the same project context that Claude Code gets automatically.
- **Gemini reads local files.** No need to paste skill contents — tell it to read the file path.
- **The skills are model-agnostic.** Written for Claude but work on Gemini models. Output quality varies by model — use the strongest available for writing tasks.
