---
name: review-writer
status: beta
category: writing
subcategory: articles
version: 1.0
eval_score: null
tags: [reviews, criticism, books, film, exhibitions, arts-journalism, culture]
---

# Review Writer

## What This Skill Does
Drafts a structured, publication-ready critical review of a book, film, documentary, album, exhibition, or live performance — with a clear verdict, specific evidence, and a voice calibrated to the publication's register.

## When To Use This Skill
- You need a first draft review under deadline and have notes but not yet a structured argument
- You want to test a particular critical angle before committing to it in your own writing
- You are reviewing a format you cover less frequently (e.g., a film critic asked to review a book) and want a solid structural scaffold
- You need to produce a short review (150–300 words) for a section page or digest with a tight word count

## What You Need To Provide
**Required:**
- The subject being reviewed: title, creator(s), and format (book, film, album, exhibition, etc.)
- Your key notes: what you saw, read, or heard — specific scenes, arguments, passages, or moments that stood out positively or negatively
- Your verdict: is this recommended? Enthusiastically, with reservations, or not at all?

**Optional:**
- Target word count (default: 400–500 words)
- Publication context or tone (e.g., broadsheet literary, trade press, general-interest magazine, online outlet with informal register)
- A star rating or scoring system if your publication uses one
- Any critical framework you want applied (e.g., compare to the creator's previous work, assess in the context of the genre, evaluate the work's stated aims)
- Whether to include a contextual paragraph (release background, creator biography) or lead straight into the critique

## How Claude Approaches This
1. Identifies the critical angle that best organises your notes — usually the tension between what the work sets out to do and how well it succeeds
2. Drafts an opening that hooks the reader with a specific observation rather than a plot summary or biographical fact
3. Builds the body around two or three substantive points, each grounded in a specific detail from your notes (a scene, a chapter, a track, a gallery room) rather than general impressions
4. Lands a verdict that is clear and proportionate — neither over-qualified nor blunter than the evidence supports
5. Calibrates the voice and sentence rhythm to the register you specify; a trade-press capsule review reads very differently from a 500-word broadsheet piece

## Output Format
Structured prose review, no subheadings. Opens with a specific observation or scene rather than a plot synopsis. Body paragraphs each make one clear critical point. Final paragraph delivers the verdict and recommendation. Length matches your target word count. Tone matches the publication context you describe. If a star rating is requested, it appears at the end below a dividing line.

## Quality Criteria
- [ ] Every critical claim is grounded in a specific detail from the input notes, not a general impression
- [ ] The verdict is stated plainly and is consistent with the evidence presented
- [ ] The opening does not begin with "In [title]…" or with biographical background
- [ ] No plot spoilers beyond what would appear in a standard review (unless you specify otherwise)
- [ ] Voice and register are consistent throughout — no sudden shifts between formal and informal

## Example

### Input
**Subject:** *The Cartographer's Silence* — a debut novel by an unnamed author, literary fiction, set in 1930s Vienna. Published by a mid-sized literary press.

**Notes:**
- The central device — an obsessive mapmaker who charts grief rather than geography — is original and sustained well across the first two-thirds
- Prose is precise and occasionally beautiful; particularly strong in short chapters (there is a chapter of just four paragraphs about a lost letter that is close to perfect)
- The final third loses control: two new major characters introduced too late, the resolution feels rushed
- The dialogue is weak throughout — characters explain their emotions in ways no one would actually speak
- Strong sense of place; Vienna feels lived-in rather than researched

**Verdict:** Recommended with reservations — a flawed but genuinely promising debut.

**Target word count:** 420 words

**Publication context:** Broadsheet literary supplement, serious register, readers who read widely

### Output

---

There is a chapter near the middle of *The Cartographer's Silence* that runs to just four paragraphs. A character discovers a letter he was never meant to read, realises he has misunderstood a decade of his own history, and puts the letter away without speaking. Nothing else happens. It is the finest thing in the book — quiet, precise, and emotionally exact — and it signals both how good this debut can be and how rarely it reaches that standard.

The novel's central conceit is a strong one. Its narrator, a Viennese mapmaker working in the years between the wars, has developed a private system of cartography for charting emotional terrain: grief mapped as elevation, longing as gradient, loss as a boundary line constantly redrawn. The device never becomes precious because the author grounds it in the material world of the period — the smells of the cartographic studio, the particular bureaucratic anxieties of a city that senses what is coming. Vienna here is a place that has been lived in rather than researched, which is no small achievement for a debut.

For the first two-thirds, the prose carries real authority. Sentences do what they are required to do and then stop. The restraint is disciplined, not timid. But the novel's management of structure is less sure-handed. Two significant characters arrive in the final third with insufficient preparation, and the resolution — when it comes — moves at a pace that feels less like intention than deadline. A story built around the precision of grief deserves a more measured conclusion than this one receives.

The dialogue is a persistent problem throughout. Characters in *The Cartographer's Silence* tend to explain what they feel in terms they would never actually use. "I have spent thirty years mapping a country that no longer exists," says one character, in a line that would work as an epigraph but not in speech. It is a habit that undermines what is otherwise a disciplined restraint in the prose.

This is, despite its faults, a debut that announces a writer worth following. The capacity for that four-paragraph chapter is not common, and the novel's best sequences demonstrate an understanding of grief as both subject and structural principle that many more experienced novelists never achieve. Read it for what it gets right, which is more than enough to matter.

*Recommended with reservations*

---

## Known Limitations
- The quality of the review depends entirely on the specificity of your input notes — vague impressions ("it was slow in places") produce vague critical points; specific observations produce specific, credible criticism
- Claude will not fabricate details about a real work; if your notes are sparse on evidence for a particular claim, the draft will flag the gap rather than invent a supporting example
- For works in languages other than English, Claude can review translations but cannot assess the quality of the original prose or lyrics

## Related Skills
- [interview-transcript-editor](../../magazine-journalism/writing/interview-transcript-editor.md)
- [headline-generator](../articles/headline-generator.md)
- [copy-editor-assistant](../../editing/copy-editor-assistant.md)
