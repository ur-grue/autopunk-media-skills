# X / Twitter thread — autopunk-media-skills launch

## Audience cue

This thread is for the AI-tooling crowd that overlaps with media-tech. Voice: confident, specific, no emoji, no hype words. One concrete example beats one claim.

## Thread (7 posts)

### 1/

```
I open-sourced 354 Claude skills for media professionals.

Documentary producers, journalists, podcasters, YouTubers, radio producers, newsletter writers, PR teams, screenwriters.

If you write for a living, there is a skill in this library that saves you an hour.

https://github.com/ur-grue/autopunk-media-skills
```

### 2/

```
Each skill turns Claude into a specialist for one task.

Not "act as a journalist." Specific output for a specific format with a specific quality bar.

178 of the 354 are marked stable. Stable means a G-Eval pass at ≥ 4.0/5 across seven dimensions, including a hard floor on Editorial Naturalness.
```

### 3/

```
Here is one of the stable skills running unedited.

YouTube hook generator. Input: video about why "immersion" fails for adult language learners.

Output:

"94% of adult language learners plateau within six months. Not because they quit. Because they are doing the one thing every expert recommends — and it is actively working against how the adult brain acquires language."
```

### 4/

```
Another. Documentary logline generator.

Input: feature doc about forensic archivists recovering destroyed government records.

Output:

"In a basement lab outside Washington, three archivists race to recover government records that were officially destroyed — before the statute of limitations runs out on the people who ordered the erasure."
```

### 5/

```
The quality bar matters because most "AI for journalism" output reads like a chatbot pretending to know the format.

This library is written by a commissioning editor who has worked in public broadcasting for 15 years.

It encodes production knowledge, not generic prompt templates.
```

### 6/

```
No coding required.

Clone the repo into your skills folder. Or open any skill file in a browser, copy it, paste it into Claude with your material.

Works in Claude Code, Cursor, Codex CLI, Gemini CLI. MIT licensed.
```

### 7/

```
If you work in media and have a writing task you do over and over — there is probably a skill for it. If there is not, open an Issue and I will add one.

→ https://github.com/ur-grue/autopunk-media-skills

Reposts appreciated if you know one journalist, producer, or podcaster who would use this.
```

## Optional 8/ (only if engagement is hot 30 min after thread)

```
The seventh G-Eval dimension is the one I am most proud of: Editorial Naturalness.

It scores against four lists of "AI tells" — lexical, structural, tonal, genre. An output cannot reach stable unless it reads like a working professional in the medium.

Framework is documented: tests/EVAL_FRAMEWORK.md
```

## Daily spotlight cadence (Days 2–10)

After the launch thread, one single post per day featuring ONE skill. Format:

```
{Skill name} — {one-line of what it does}

Input: {one-line scenario, generic}

Output:

"{actual unedited output, 60–120 words}"

{Direct link to the skill file on GitHub}
```

Queue 9 posts, one per day, rotating categories. The catalog of which skills to spotlight is in the plan document on AUT-20.

## Tagging / replies strategy

- Don't tag Anthropic directly in the launch thread. If they engage organically, great. Tagging in a "look at me" launch reads as desperate.
- Reply to every quote-tweet within 30 minutes for the first 6 hours.
- If a media-tech account (e.g. NiemanLab, Press Gazette, Latent Space, swyx) engages, push them the dev.to article + offer a custom angle for their audience.

## Handoff

This file is the publishable artifact for the X launch thread + daily spotlight cadence. Owned by Twitter Engager (8c4ce... — pick from agents list) starting Day 2 of the sprint.
