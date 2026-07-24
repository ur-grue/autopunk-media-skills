---
layout: default
title: Using with OpenCode
---

# Using with OpenCode

OpenCode is an open-source terminal AI agent that works with multiple model providers — Anthropic, OpenAI, Google, and local models. It reads project files, follows instructions, and produces structured output. When you run it in this repo, it applies skills the same way as any other coding agent.

---

## What You Get

**454 skills** across 15 media categories, plus **6 stable agents** that chain skills into complete workflows. Since OpenCode supports multiple providers, you can use whichever model you have access to.

[Browse all agents](/agents/) · [Pick your role](/roles/) to find your starting point.

---

## Setup (one time)

### 1. Install OpenCode

```bash
# macOS
brew install opencode-ai/tap/opencode

# Linux / manual
curl -fsSL https://opencode.ai/install.sh | sh
```

See the [OpenCode documentation](https://opencode.ai) for other installation methods.

### 2. Configure a model provider

OpenCode supports multiple providers. Set up whichever you use:

```bash
# Anthropic (Claude)
export ANTHROPIC_API_KEY="your-key-here"

# OpenAI
export OPENAI_API_KEY="your-key-here"

# Google (Gemini)
export GOOGLE_API_KEY="your-key-here"
```

### 3. Clone the repo

```bash
git clone https://github.com/ur-grue/autopunk-media-skills.git
```

### 4. Run OpenCode in the repo

```bash
cd autopunk-media-skills
opencode
```

---

## How to use a skill

Describe your task and reference the skill:

```
Read skills/newsletter/writing/edition-writer/SKILL.md and write a
newsletter edition about the state of independent journalism in 2026.
Target audience: media professionals.
```

Or just describe what you need:

```
I need a crisis communications holding statement. Find the right skill.
```

---

## Using agents

All six agents are in the `agents/` directory. Reference the agent file:

```
Read agents/documentary-development-agent.md and follow its workflow.

Idea: A documentary about the hidden world of competitive pigeon racing
in Northern England. Feature-length. Target: Channel 4 or BBC Storyville.
```

```
Read agents/podcast-producer-agent.md and follow its workflow.

Guest: Ana Kovac, forensic accountant specializing in art fraud.
Show: "Paper Trail" — 35-minute investigative interview podcast.
Audience: true crime enthusiasts with an interest in white-collar crime.
```

---

## Tips

- **OpenCode is provider-agnostic.** Use whichever model you have access to. The skills work across all of them.
- **For writing tasks, use the strongest model available.** The editorial naturalness of the output improves with model capability.
- **OpenCode reads local files natively.** Point it at the skill path — no copy-paste needed.
