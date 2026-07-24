---
layout: default
title: Using with Zed
---

# Using with Zed

Zed is a fast, multiplayer code editor with built-in AI chat. When you open this repo as a project, Zed's AI assistant can read skill files and apply them to your work. You interact through the built-in assistant panel — no terminal needed.

---

## What You Get

**454 skills** across 15 media categories, plus **6 stable agents** that chain skills into complete workflows. Zed's multi-provider support means you can use Claude, OpenAI, Google, or local models.

[Browse all agents](/agents/) · [Pick your role](/roles/) to find your starting point.

---

## Setup (one time)

### 1. Install Zed

Download from [zed.dev](https://zed.dev). Available for Mac and Linux.

### 2. Configure an AI provider

Open Zed's settings (Cmd+, on Mac) and configure your preferred AI provider under **Assistant**. Zed supports Anthropic (Claude), OpenAI, Google, and Ollama for local models.

### 3. Clone the repo

```bash
git clone https://github.com/ur-grue/autopunk-media-skills.git
```

Or download it as a ZIP from GitHub and unzip it.

### 4. Open the repo in Zed

**File → Open** and select the `autopunk-media-skills` directory.

---

## How to use a skill

Open the assistant panel (Cmd+? on Mac) and add a skill file to the context. You can do this by:

1. Opening the skill file in a tab
2. In the assistant panel, clicking the **+** button and selecting the open file
3. Typing your instruction

Example:

```
Using the skill above, write a pitch treatment for a documentary about
the decline of local newspapers in rural America.
```

Or describe your task and ask Zed to find the skill:

```
I need show notes for a podcast episode. Look in the skills/podcast/
directory for the right skill and use it.
```

---

## Using agents

All six agents are in the `agents/` directory. Open the agent file in a tab, add it to the assistant context, then provide your brief:

```
Follow this agent's workflow.

Topic: why the four-day work week is failing in some companies.
Show: "The Work Report" — a 30-minute solo podcast for HR professionals.
Tone: analytical, evidence-based, occasionally provocative.
```

```
Follow this agent's workflow.

Draft: [paste your article]
Publication: online magazine, general interest.
Style: conversational but rigorous, 2000 words target.
```

---

## Tips

- **Add files to assistant context.** Zed's assistant works best when you explicitly add the skill or agent file to the conversation context.
- **Use the file explorer.** Browse `skills/` by category to find what you need. The directory structure mirrors media roles and tasks.
- **Zed is fast for iteration.** If the first output needs adjustment, refine your instruction in the same assistant thread. The skill stays in context.
- **Any provider works.** The skills are model-agnostic. Use whichever provider you have configured in Zed's settings.
