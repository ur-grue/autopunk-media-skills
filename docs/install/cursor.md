---
layout: default
title: Using with Cursor
---

# Using with Cursor

Cursor is a code editor with built-in AI chat. When you open this repo as a project, Cursor's AI can read the skill files and apply them to your work. You do not need to copy-paste — just describe what you need.

---

## What You Get

**454 skills** across 15 media categories, plus **6 stable agents** — editorial pipelines that chain multiple skills into one instruction. Highlights:

- **Magazine Editor** (4.96/5) — full editorial pipeline from structure to pull quotes
- **Investigative Reporter** (4.96/5) — FOIA, source verification, document analysis
- **Podcast Producer** (4.78/5) — concept through show notes in one workflow
- **YouTube Channel Operator** (4.48/5) — hook, script, SEO, thumbnail, community post

[Browse all agents](/agents/) · [Pick your role](/roles/) to find the best starting point.

---

## Setup (one time)

### 1. Install Cursor

Download from [cursor.com](https://cursor.com) and install it. Available for Mac, Windows, and Linux.

### 2. Clone the repo

```bash
git clone https://github.com/ur-grue/autopunk-media-skills.git
```

Or download it as a ZIP from GitHub and unzip it.

### 3. Open the repo in Cursor

**File → Open Folder** and select the `autopunk-media-skills` directory.

---

## How to use a skill

Open the AI chat panel (Cmd+L on Mac, Ctrl+L on Windows) and describe your task:

```
Read the pitch-treatment-writer skill in skills/tv-documentary/development/
and use it to write a treatment for a documentary about the last independent
bookshops in London.
```

Or reference a skill file directly by adding it to the chat context — click the **+** button in the chat panel, select the skill file, then type your instruction.

---

## Using agents

All six agents are in the `agents/` directory. Reference the agent file in Cursor's chat:

```
@agents/podcast-producer-agent.md

I have a guest booked — Dr. Sarah Chen, marine biologist specializing in coral
restoration. The show is "Ocean Matters," a 45-minute interview podcast for
environmentally conscious professionals. Generate the full episode package.
```

```
@agents/pr-crisis-response-agent.md

Crisis: A regional airline discovered 12 flights operated with expired
maintenance certifications. No incidents. Flagged in an internal audit,
not yet public. Organisation: SkyLink Regional. Spokesperson: James Park, COO.
```

---

## Using .cursorrules

For a more integrated experience, create a `.cursorrules` file in the repo root that tells Cursor about the skill library:

```
This repository contains media production skills — structured prompts for
journalism, documentary, podcast, YouTube, and PR tasks. Each skill is in
a SKILL.md file under skills/. When asked to perform a media production task,
find the matching skill and follow its instructions exactly.
```

This makes Cursor aware of the skills in every chat, without you needing to reference files manually.

---

## Tips

- **Add skill files to chat context.** Click **+** in the chat panel to attach a skill file. Cursor reads the full file and follows the instructions.
- **Use Composer for multi-file work.** If you want to run an agent that produces multiple output files, use Composer mode (Cmd+I / Ctrl+I) instead of chat.
- **Keep the project open.** Cursor's AI only sees files in the currently open project. If you close the folder, it loses access to the skills.
