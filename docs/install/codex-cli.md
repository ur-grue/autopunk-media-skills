---
layout: default
title: Using with Codex CLI
---

# Using with Codex CLI

Codex CLI is OpenAI's terminal-based coding agent. It reads files in your working directory, follows instructions, and produces output — similar to Claude Code but using OpenAI models. The skills in this library work the same way: point Codex at the repo and describe your task.

---

## What You Get

**454 skills** across 15 media categories, plus **6 stable agents** that chain skills into complete workflows. The skills were written and tested on Claude but are model-agnostic — they work on OpenAI models too.

[Browse all agents](/agents/) · [Pick your role](/roles/) to find your starting point.

---

## Setup (one time)

### 1. Install Codex CLI

```bash
npm install -g @openai/codex
```

You need Node.js 22 or later and an OpenAI API key.

### 2. Set your API key

```bash
export OPENAI_API_KEY="your-key-here"
```

Add this to your shell profile (`~/.zshrc` or `~/.bashrc`) so it persists.

### 3. Clone the repo

```bash
git clone https://github.com/ur-grue/autopunk-media-skills.git
```

### 4. Run Codex in the repo

```bash
cd autopunk-media-skills
codex
```

---

## How to use a skill

Describe your task and name the skill:

```
Read skills/youtube/pre-production/hook-generator/SKILL.md and use it to
write hooks for a video about why most people fail at meal prep.
```

Or describe the task and let Codex find the right skill:

```
I need a press release for a product launch. Find the right skill in this
repo and follow it.
```

---

## Using agents

All six agents are in the `agents/` directory. Reference the agent file:

```
Read agents/pr-crisis-response-agent.md and follow its workflow.

Crisis: A food delivery startup discovered that driver background checks
were not completed for 200 drivers hired in Q2. No incidents reported,
but the gap was flagged in an internal audit. Not yet public.
Organisation: QuickBite, food delivery.
Spokesperson: Maria Torres, VP of Operations.
```

```
Read agents/magazine-editor-agent.md and run the full editorial pipeline
on this article draft about the gig economy's impact on local journalism.
```

---

## Tips

- **Use `--model` for stronger output.** The writing-heavy skills benefit from the strongest available model. Check OpenAI's current model lineup for the best option.
- **Codex reads files natively.** You do not need to paste skill contents — just tell it to read the file path.
- **The skills are model-agnostic.** They were written and tested on Claude but work on any model that follows structured instructions. Output quality may vary between models.
