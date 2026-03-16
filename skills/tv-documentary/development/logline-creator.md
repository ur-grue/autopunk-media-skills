---
name: logline-creator
status: stable
category: tv-documentary
subcategory: development
version: 1.0
eval_score: 4.5
tags: [documentary, development, logline, pitching, synopsis]
---

# Logline Creator

## What This Skill Does
Crafts 4–6 precise, compelling logline options for any documentary project, ranging from a single sentence to a two-sentence form, each with a different emphasis.

## When To Use This Skill
- You are preparing a pitch and need a logline before you can write a full treatment
- Your logline is too long, too vague, or not landing with commissioners or funders
- You need different logline versions for different contexts: festival submission, broadcaster pitch, press release, or social media bio
- You have a complex multi-subject documentary and need to find the single sentence that holds it together

## What You Need To Provide
**Required:** A description of your documentary project — the subject, the central story or argument, and the key character(s) or event(s) at the center
**Optional:** Intended broadcaster or festival context; tone of the film (observational, polemical, intimate, cinéma-vérité); what makes this film different from others on the same subject; any existing logline or synopsis you want to improve on

## How Claude Approaches This
1. Identifies the documentary's dramatic spine — not the topic, but the specific conflict, question, or transformation that the film will follow from opening to resolution
2. Locates the subject (who or what), the stake (what is at risk or in question), and the specific angle (what this film sees that others haven't) — the three structural components of a functioning logline
3. Generates variations across different logline structures: the character-drive form ("A [subject] who [situation] must [goal] before [stakes]"), the thematic statement form, the question form, and the compressed two-clause form used in broadcaster pitches
4. Calibrates length to context: a festival log line is 25–40 words; a broadcaster pitch line can be up to two sentences; a social/press line needs to work in under 20 words

## Output Format
4–6 numbered logline options. Each is labeled with its structural form and intended context (festival, broadcaster, press, social). A one-line annotation follows each, explaining the specific emphasis or trade-off made. Total length: 250–350 words.

## Quality Criteria
- [ ] Each logline identifies the subject, the central tension, and the stakes
- [ ] No logline describes the topic without the specific angle ("a film about climate change" fails; "a film about the scientists who predicted the crisis and were ignored for twenty years" works)
- [ ] The shortest option is under 25 words and works as a standalone pitch line
- [ ] At least one option is calibrated for a broadcaster pitch (can be two sentences)
- [ ] No logline contains jargon, production detail, or technical language
- [ ] None of the options are interchangeable — each emphasizes a different aspect of the film

## Example

### Input
Project description: A documentary following a retired forensic accountant who, in her seventies, began investigating financial fraud in rural water utility companies across three states. Over five years, she identified 14 cases of embezzlement affecting small towns. Several cases led to prosecutions. She has no formal legal authority and works entirely alone. The film is observational, following her current investigations.
Broadcaster context: Public broadcaster documentary strand, serious but accessible
Social/press bio line also needed

### Output

1. **The Character-Drive Form** *(broadcaster pitch)*
"Working alone and without legal authority, a retired forensic accountant in her seventies has spent five years investigating financial fraud in small-town water systems — and prosecutors keep calling her back."
*(Emphasis: her agency and the institutional validation paradox. Strong for broadcaster context.)*

2. **The Question Form** *(festival submission)*
"Who is watching the people who run your water? In three states, the answer has been one retired accountant with a spreadsheet and a conviction that fraud is always findable."
*(Emphasis: the systemic question behind the personal story.)*

3. **The Thematic Form** *(press release)*
"A portrait of one woman's conviction that public resources belong to the public — and the five-year investigation that proved her right fourteen times."
*(Emphasis: the moral argument. Works well in editorial contexts.)*

4. **The Compressed Two-Clause Form** *(broadcaster one-liner)*
"A retired forensic accountant investigates embezzlement in rural water utilities — from the inside of her own car, with no legal authority, and a 100% prosecution rate."
*(Emphasis: the productive absurdity of the situation. The "100% prosecution rate" is the hook.)*

5. **The Press/Social Bio Line** *(under 20 words)*
"One woman. No authority. Fourteen prosecutions. A documentary about what one retired accountant found in America's rural water bills."
*(Emphasis: punchy; works as a social card caption or press release opening sentence.)*

6. **The Festival Long Form** *(two sentences, under 50 words)*
"In her seventies, after a career in corporate forensic accounting, Margaret decided the fraud she kept reading about in small-town water utility scandals was findable. Five years, three states, and fourteen cases later, she hasn't been proven wrong."
*(Emphasis: personal arc and track record. Strong for documentary festivals.)*

## Known Limitations
- Loglines are only as specific as the project description you provide — if the documentary concept is still underdeveloped, the loglines will expose that rather than solve it
- A logline cannot substitute for a full treatment; commissioners and funders will need supporting context; use this skill alongside pitch-treatment-writer
- For projects that are genuinely multi-strand or multi-subject (three separate protagonists with no shared narrative), a single logline may be impossible; in this case, Claude will flag the structural issue and suggest alternative framings

## Related Skills
- [pitch-treatment-writer](pitch-treatment-writer.md)
- [festival-synopsis-writer](../localization/festival-synopsis-writer.md)
- [series-bible-generator](series-bible-generator.md)
