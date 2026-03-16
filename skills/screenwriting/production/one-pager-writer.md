---
name: one-pager-writer
status: stable
category: screenwriting
subcategory: production
version: 1.0
eval_score: 4.4
tags: [screenwriting, production, one-pager, pitch, sales]
---

# One-Pager Writer

## What This Skill Does
Writes a one-page screenplay sales document — logline, short synopsis, tone references, and writer positioning — formatted for producer meetings, development slates, and financier packets.

## When To Use This Skill
- You have a script or treatment and need a one-page leave-behind for a producer or development meeting
- You are submitting to a financing body, production company, or festival development program that requires a one-pager alongside the script
- You need a uniform format for a slate of projects (three or more scripts) being presented to a company
- You have a completed treatment but need a compressed version for an executive who won't read more than a page

## What You Need To Provide
**Required:** Title; format (feature, TV pilot, series); logline or one-paragraph premise; three-act story summary (can be brief); writer's name and one-line bio or positioning statement
**Optional:** Tone/genre references (comparable titles); target audience; production notes (budget tier, shooting location, key casting considerations); any awards, fellowships, or prior credits relevant to the project

## How Claude Approaches This
1. Opens with a clean title block — project title, format, writer's name — and the logline, which is the document's single most important sentence
2. Writes a two-paragraph synopsis: the first paragraph covers the setup and protagonist; the second covers the central conflict and what is at stake, stopping before the resolution (a one-pager leaves the ending to the room)
3. Constructs a tone and comparables section with two to three reference titles and a single sentence explaining what this project shares with them and what makes it distinct
4. Closes with a writer bio line — one to three sentences — positioning the writer's relevant experience, voice, or prior work relative to this specific project

## Output Format
Single-page equivalent: approximately 350–450 words of body text. Four sections with minimal headers: **[PROJECT TITLE]** (centered, all caps), **[FORMAT · WRITER]** (subtitle line), **Logline** (1 sentence), **Story** (two paragraphs, ~150 words total, present tense), **Tone & Comparables** (2–4 sentences), **About the Writer** (1–3 sentences). No bullet points. No production history or budget figures unless provided. The document should be readable in under 90 seconds.

## Quality Criteria
- [ ] Logline is under 40 words and contains protagonist, conflict, and stakes
- [ ] Synopsis stops before the climax — leaves something for the room
- [ ] Tone and comparables section cites at least two reference titles and articulates what distinguishes this project from them
- [ ] Writer bio is relevant to the project — generic credits not relevant to this genre or story are omitted
- [ ] The whole document reads as a single confident sales voice, not a summary report
- [ ] Total body text fits comfortably on one standard page (approximately 350–450 words)

## Example

### Input
**Title:** SHELF LIFE
**Format:** Feature film
**Writer:** Priya Khatri — debut feature, produced short films, previously worked as a line producer on three mid-budget dramatic features
**Logline:** A supermarket shelf-stacker in her late thirties realizes, during a single overnight shift, that she has been sleepwalking through a life she chose entirely for other people.
**Story summary:**
- Act 1: Clare arrives for her regular overnight shift. Everything is the same as every other Thursday. Except tonight, a new employee shows up who is seventeen and reminds Clare of herself at that age.
- Act 2: Over the course of eight hours, Clare pieces together — through inventory tasks, loading bay conversations, and a phone she shouldn't have read — that the version of her life she has been presenting to her family is not the one she actually has. She earns less than she told them. She has been passed over for management twice. She wanted to be an architect.
- Act 3: Dawn. The shift ends. She does not quit. She does not make a speech. She does one small, irreversible thing — she sends an email to a college she deferred seventeen years ago — and walks to her car.
**Tone references:** Aftersun, Wendy and Lucy
**Target audience:** Theatrical arthouse; would suit a mid-budget UK or European co-production structure

### Output

---

**SHELF LIFE**
Feature Film · Written by Priya Khatri

---

**Logline**
During a single overnight shift at a supermarket, a woman in her late thirties comes to understand — quietly, irreversibly — that she has spent seventeen years living a life that was never hers.

---

**Story**
CLARE, 38, arrives at the supermarket at 11 p.m. for her regular Thursday overnight. She knows every aisle, every colleague, every procedure. Tonight a new employee joins her section — a teenager named Jamie who moves through the store the way Clare used to move through the world: like someone who still believes things are going to change.

Over the next eight hours, across inventory counts, loading bay breaks, and a borrowed phone that contains a message she was never meant to read, Clare reassembles the true shape of her life. She earns less than she told her family. She has been passed over for promotion twice. The architecture degree she deferred at twenty-one was deferred, then quietly surrendered, then never mentioned again. By the time the sun comes up and the morning staff arrive, Clare has not made a dramatic gesture. She has sent one email. She walks to her car.

---

**Tone & Comparables**
SHELF LIFE sits alongside *Aftersun* and *Wendy and Lucy* in its attention to working-class interiority and its refusal to sentimentalize or resolve. Where those films hold the audience at an observational distance, this one grants access to the full interior — the gap between what Clare says and what she knows. It is a film about the small, structurally invisible ways that women's ambitions disappear, told in real time over one night shift.

---

**About the Writer**
Priya Khatri brings production experience from three mid-budget dramatic features and the precision of a practitioner who understands both the creative and logistical realities of a shoot of this scale. SHELF LIFE is her debut feature screenplay.

---

## Known Limitations
- One-pagers are sales documents, not story documents; the skill will compress and select story information for maximum pitch appeal, which may mean certain subplots or thematic elements are omitted — writers should review the output and restore any elements critical to their pitch
- The skill produces a single confident version; writers who want multiple tone options (e.g., one version emphasizing commercial hooks, one emphasizing awards positioning) should run the skill twice with different emphasis instructions
- Writer bio sections depend entirely on what the writer provides; the skill cannot fabricate or infer credits, and sparse bio input will produce a sparse bio section

## Related Skills
- [logline-writer](../development/logline-writer.md)
- [treatment-writer](../development/treatment-writer.md)
- [coverage-report-writer](../revision/coverage-report-writer.md)
