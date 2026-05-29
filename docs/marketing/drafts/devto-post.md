# 394 Free Claude Skills for Media Professionals

**TL;DR:** I built a free, open-source library of 394 Claude skills designed for TV producers, journalists, podcasters, YouTubers, and content creators. Every skill is quality-tested. No coding required.

**Repo:** [github.com/ur-grue/autopunk-media-skills](https://github.com/ur-grue/autopunk-media-skills)

---

## The problem

Media professionals spend hours on repetitive writing tasks — pitch treatments, show notes, interview questions, press releases, SEO descriptions, episode summaries. These are structured, pattern-based, and often urgent.

AI can handle them. But most AI tools for media were built by people who've never worked in a newsroom, a production office, or an edit suite. The output sounds like a chatbot, not like a professional who knows the format.

## What this is

**autopunk-media-skills** is a library of Claude skills — ready-to-use prompts and instructions that turn Claude into a specialist for one specific media task.

Think of each skill as hiring an expert collaborator: one writes pitch treatments, another generates SEO-optimized YouTube titles, another cleans up interview transcripts, another builds cinematic image prompts.

There are 394 of them, organized by media format and production stage:

| Category | Skills |
|----------|--------|
| TV Documentary | 28 |
| Magazine Journalism | 39 |
| YouTube | 18 |
| Podcast | 12 |
| Image Prompting | 10 |
| Media Business | 19 |
| Social Media | 11 |
| Radio / Audio | 12 |
| Newsletter | 13 |
| PR / Communications | 13 |
| Screenwriting | 9 |
| Data Journalism | 15 |
| Research | 18 |
| Translation | 7 |
| Production Support | 7 |

## Example: YouTube hook generator

Here's what the `hook-generator` skill produces when you give it a video topic:

**Input:** Video about the hidden reason most adults fail at learning a new language — and why "immersion" advice is scientifically wrong. Target: frustrated adults 28–45.

**Output (one of three hooks):**

> "Every language app, every tutor, every Reddit thread told you the same thing: immerse yourself. Surround yourself with the language. Just listen. Just watch. Just live it.
>
> You did that. For months. And you still can't hold a conversation.
>
> Here's what they didn't tell you — and what the research has known since 1985."

That's the quality level across the library. Production-ready. Usable without editing.

## Quality testing

226 skills have been tested against binary assertions using diverse inputs (standard, minimal, European context). **2,354 out of 2,390 checks passed — 98.5% pass rate.** Radio/Audio and PR/Communications scored 100%.

All 36 failures occurred on deliberately minimal inputs where skills correctly refused to fabricate content — the desired professional behavior.

## How to use it

**Option A — Clone the library:**

```bash
git clone https://github.com/ur-grue/autopunk-media-skills.git
```

Works in Claude Code, Cursor, Codex CLI, Gemini CLI, and any agent supporting the Agent Skills standard.

**Option B — Copy and paste:** Browse `skills/`, find what you need, paste it into Claude with your material.

**No coding required.** The entire library is plain text. Pick a skill, read "What You Need To Provide," give Claude what it asks for, and get professional output.

## Who it's for

- TV documentary producers
- Magazine and investigative journalists
- YouTube creators
- Podcast producers
- Radio producers
- Newsletter writers
- PR professionals
- Screenwriters
- Data journalists
- Social media managers
- Visual content creators
- Anyone who writes for a living and wants to produce faster

## What's next

The library is MIT-licensed and accepting contributions. If you work in media and have a task you do repeatedly, there's probably a skill for it — and if there isn't, you can request one.

→ [Browse the full library](https://github.com/ur-grue/autopunk-media-skills)

---

*Built by a commissioning editor with 15+ years in public broadcasting. These skills encode real production knowledge — not generic prompt templates.*
