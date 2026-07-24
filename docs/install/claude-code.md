---
layout: default
title: Using with Claude Code
---

# Using with Claude Code

Claude Code is Anthropic's coding agent that runs in your terminal. It can read files, run commands, and work through multi-step tasks. When you point it at this repo, it can find and apply skills automatically — you describe the task, it picks the right skill.

---

## What You Get

The library contains **454 skills** across 15 media categories, plus **6 stable agents** that chain skills into complete workflows:

| Agent | What it does | G-Eval |
|-------|-------------|--------|
| [Magazine Editor](/agents/magazine-editor-agent/) | Full editorial pipeline — structure, copy edit, fact-check, headlines | 4.96/5 |
| [Investigative Reporter](/agents/investigative-reporter-agent/) | FOIA, source verification, document analysis, story structure | 4.96/5 |
| [Documentary Development](/agents/documentary-development-agent/) | Pitch treatment, series bible, logline, character arcs | 4.81/5 |
| [Podcast Producer](/agents/podcast-producer-agent/) | Episode concept through show notes in one workflow | 4.78/5 |
| [PR Crisis Response](/agents/pr-crisis-response-agent/) | Holding statement, Q&A, media brief, internal comms | 4.56/5 |
| [YouTube Channel Operator](/agents/youtube-channel-operator-agent/) | Hook, script, SEO, thumbnail brief, community post | 4.48/5 |

Not sure where to start? **[Pick your role](/roles/)** — journalist, podcaster, YouTuber, documentary producer, PR/comms, or newsletter writer — and see the skills and agents that match.

---

## Setup (one time)

### 1. Install Claude Code

```bash
npm install -g @anthropic-ai/claude-code
```

You need Node.js 18 or later. If you do not have Node.js, download it from [nodejs.org](https://nodejs.org).

### 2. Clone the repo

```bash
git clone https://github.com/ur-grue/autopunk-media-skills.git
```

### 3. Open Claude Code in the repo

```bash
cd autopunk-media-skills
claude
```

That's it. Claude Code reads the `CLAUDE.md` file automatically and understands the full skill library.

---

## How to use a skill

Once you are inside Claude Code in the repo directory, describe your task:

```
Write a pitch treatment for a documentary about urban beekeeping in Berlin.
Use the pitch-treatment-writer skill.
```

Claude Code reads the skill file, follows its instructions, and produces the output. You can also just describe the task without naming the skill — it will find the right one:

```
I need show notes for a podcast episode about remote work burnout.
```

---

## Using agents

Agents chain multiple skills into a complete workflow. All six are in the `agents/` directory. Examples:

```
Run the magazine-editor-agent on this article draft.
```

```
Read agents/podcast-producer-agent.md and create a full episode package.
Guest: Dr. Lena Torres, urban ecologist. Show: "City Wild," 40-minute
interview podcast. Audience: environmentally curious city dwellers.
```

```
Take this article and run it through the full editorial pipeline —
structure check, copy edit, fact-check prompt, headlines, and pull quotes.
```

---

## Tips

- **Stay in the repo directory.** Claude Code reads files relative to where you launched it. If you `cd` elsewhere, it loses access to the skills.
- **Name the skill when you know it.** "Use the hook-generator skill" is faster than "write me a YouTube opening" — though both work.
- **Paste your material directly.** You can paste a transcript, article draft, or brief right into the chat alongside your instruction.
- **Use `/read` for long files.** If your input material is in a file, tell Claude Code to read it: "Read `draft.txt` and run the copy-editor skill on it."
