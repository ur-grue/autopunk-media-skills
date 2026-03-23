# Getting Started

## What you need

1. Access to [Claude](https://claude.ai) (free or Pro)
2. A production task you want help with

That's it. No software to install, no accounts to create.

---

## Three ways to use a skill

### Option 1: Copy and paste (simplest)

1. Browse the `skills/` folder and open the skill you need
2. Copy the entire skill file
3. Paste it into Claude along with your material
4. Get professional-grade output

### Option 2: Clone the library

```bash
git clone https://github.com/ur-grue/autopunk-media-skills.git ~/.claude/skills/autopunk-media-skills
```

This puts all 354 skills on your machine. Point your coding agent (Claude Code, Cursor, Codex CLI, Gemini CLI, OpenCode) at the skills directory.

### Option 3: Install a single skill

```bash
npx skills add ur-grue/autopunk-media-skills --skill hook-generator
```

---

## Finding the right skill

Skills are organized by **category** (what kind of media you make) and **production stage** (what you're doing right now).

| If you make... | Browse... |
|---|---|
| TV documentaries | `skills/tv-documentary/` |
| Magazine articles | `skills/magazine-journalism/` |
| YouTube videos | `skills/youtube/` |
| Podcasts | `skills/podcast/` |
| Radio / audio | `skills/radio-audio/` |
| Newsletters | `skills/newsletter/` |
| Social media content | `skills/social-media/` |
| Image prompts | `skills/image-prompting/` |

| If you're doing... | Browse... |
|---|---|
| Research | `skills/research/` |
| Pre-production | `skills/pre-production/` |
| Writing | `skills/writing/` |
| Editing | `skills/editing/` |
| Translation | `skills/translation-localization/` |
| Data work | `skills/data-journalism/` |
| Legal/compliance | `skills/archive-legal/` |
| Business/pitching | `skills/media-business/` |

---

## Understanding quality badges

| Badge | What it means |
|---|---|
| ✅ `stable` | Passed quality evaluation — safe to use as-is |
| 🔵 `beta` | Tested at least once — usable, may have rough edges |
| 🟡 `draft` | Written, not tested — use with caution |
| 🔲 `planned` | Placeholder only — not yet written |

Stick to `stable` skills for important work. Every stable skill scored 4.0/5 or higher on a six-dimension quality evaluation.

---

## Quick example

Try the `hook-generator` skill from `skills/youtube/pre-production/`:

**Paste this into Claude:**

> You are a YouTube hook specialist. Write 3 opening hook options for a video about why most people fail at learning a new language as an adult. Target audience: adults 28-45, frustrated learners. Tone: direct, science-backed.

You'll get three distinct hooks, each with a psychological mechanism explanation. Ready to use in your script.

---

## Next steps

- Browse the [full skill directory](../README.md#the-skill-directory)
- Read the [contributing guide](../CONTRIBUTING.md) if you want to submit a skill
- [Report a problem](https://github.com/ur-grue/autopunk-media-skills/issues) if a skill gives you bad output
