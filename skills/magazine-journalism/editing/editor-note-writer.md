---
name: editor-note-writer
status: stable
category: magazine-journalism
subcategory: editing
version: 1.0
eval_score: 4.44
tags: [journalism, editing, corrections, editorial, transparency, ethics]
---

# Editor Note Writer

## What This Skill Does
Drafts a publication-ready editor's note — correction, clarification, update, or disclosure — from the facts you provide, following standard editorial transparency conventions.

## When To Use This Skill
- A published article contains a factual error and you need a correction note appended or prepended to the piece
- New information has emerged since publication and readers need an update notice
- An editorial decision requires disclosure — a conflict of interest, a source who has since recanted, or a legal outcome that changes the story
- You need to clarify ambiguous wording that generated reader complaints without issuing a formal correction

## What You Need To Provide
**Required:** The type of note (correction, clarification, update, or disclosure); a plain-language description of what happened — what was wrong or what changed; the article title or identifier so the note can reference it.

**Optional:** The publication date of the original article; the specific sentence or passage that is affected; any house style rules for how your publication formats editor's notes (e.g., "We use 'Correction:' in bold at the top of the article"); whether the note should be appended, prepended, or standalone.

## How Claude Approaches This
1. **Classifies the note type.** Determines whether this is a correction (something was factually wrong), a clarification (something was technically accurate but misleading), an update (new information has emerged), or a disclosure (editorial transparency about process or conflicts). Each type has a different conventional tone and structure.

2. **States the error or change plainly.** Writes what was originally published, what was incorrect or incomplete, and what the accurate version is — in that order. Uses neutral, non-defensive language. Never blames sources, readers, or circumstances. Never minimises the error.

3. **Calibrates length and tone to severity.** A minor factual correction (wrong date, misspelled name) gets two sentences. A substantive correction that changes the meaning of a key claim gets a full paragraph with context. A disclosure or update that affects editorial credibility gets careful, measured language that acknowledges the significance without being melodramatic.

4. **Formats to publication convention.** Applies the house style if provided. If no house style is specified, defaults to the most common convention: bold label ("Correction:", "Clarification:", "Update:", or "Editor's Note:"), followed by the date the note was added, followed by the note text. Designed to be dropped directly into the article or published as a standalone notice.

## Output Format
One to three sentences for minor corrections; one paragraph for substantive corrections or disclosures. Opens with a bold label and date. Plain, factual prose — no editorialising, no apologies beyond what is standard ("This article has been corrected"), no passive evasion of responsibility. The note should read as if written by a senior editor who respects the reader's time and intelligence.

```
**[Label]:** [Date note was added] — [Note text stating what was published, what was wrong/changed, and what the correct information is.]
```

## Quality Criteria
- [ ] Note type (correction, clarification, update, disclosure) is correctly identified and labelled
- [ ] The original error or issue is stated clearly — a reader who missed the original can understand what happened
- [ ] The correct information is provided explicitly, not implied
- [ ] Language is neutral and non-defensive — no blame-shifting, no minimising
- [ ] Length is proportionate to the severity of the issue
- [ ] Format follows the stated house style, or defaults to standard convention if none is provided
- [ ] The note could be published as-is without legal or editorial review flagging tone issues

## Example

### Input
**Type:** Correction
**Article:** "City Council Approves $40 Million Transit Expansion Plan"
**Published:** February 12, 2026
**What happened:** The article stated that the transit expansion would add 14 new bus routes. The correct number is 8 new bus routes and 6 extensions of existing routes. The total number of routes affected (14) was correct, but the characterisation of all of them as "new" was wrong.
**House style:** None specified.

### Output

**Correction:** March 20, 2026 — An earlier version of this article stated that the city's transit expansion plan would add 14 new bus routes. In fact, the plan includes 8 new routes and 6 extensions of existing routes. The total number of routes affected is 14, as originally reported. The article has been updated to reflect this distinction.

## Known Limitations
- This skill drafts the note but cannot verify whether the corrected information you provide is itself accurate. The editor remains responsible for confirming the facts before publication.
- For legally sensitive corrections — defamation, privacy, or matters under litigation — this skill produces editorially sound language but cannot substitute for legal review. Consult your publication's legal adviser before publishing.
- The skill defaults to English-language editorial conventions. Publications with language-specific correction formats (e.g., French "erratum" conventions) should provide their house style explicitly.

## Related Skills
- [copy-editor-assistant](copy-editor-assistant.md) — catch errors before publication to reduce the need for corrections
- [fact-check-prompt](fact-check-prompt.md) — verify claims in the draft before it goes live
- [house-style-enforcer](house-style-enforcer.md) — ensure the note matches your publication's formatting standards
