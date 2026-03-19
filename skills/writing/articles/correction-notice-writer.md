---
name: correction-notice-writer
status: beta
category: writing
subcategory: articles
version: 1.0
eval_score: null
tags: [corrections, accuracy, editorial-standards, transparency]
---

# Correction Notice Writer

## What This Skill Does
Drafts a formal, publication-ready correction notice for a previously published article, following accepted journalistic standards for transparency, precision, and tone.

## When To Use This Skill
- An error in a published article has been confirmed — a wrong figure, a misspelled name, a misattributed quote, an incorrect date
- Your editor has signed off on the correction and needs a final notice paragraph for the live page
- You need to issue a correction that is factual and neutral without drawing more attention to the error than necessary
- A subject has contacted your publication with a documented factual complaint and the complaint has been verified

## What You Need To Provide
**Required:**
- The article headline and publication date
- A precise description of what was wrong (the original, erroneous text)
- The correct information that should replace it
- Where in the article the error appeared (paragraph, caption, headline, etc.)

**Optional:**
- Whether this is a correction, a clarification, or an editor's note (different editorial weight)
- Your publication's house style for correction notices (e.g., whether the word "Correction" appears in bold, whether the date of correction is included)
- Any additional context the reader needs to understand why the original statement was wrong

## How Claude Approaches This
1. Identifies the nature of the error — factual, typographical, attributional, or contextual — and chooses the appropriate correction register (correction vs. clarification vs. editor's note)
2. Drafts a notice that states the error plainly, provides the accurate information, and does not speculate about cause or assign blame
3. Applies a neutral, professional tone that protects the publication's credibility without being defensive or dismissive
4. Formats the notice as a self-contained paragraph that can be appended to the top or bottom of the original article, or published as a standalone item

## Output Format
One to three sentences. The notice begins with the type of notice ("Correction:", "Clarification:", or "Editor's Note:") in bold if standard journalistic practice is followed. It states what appeared in the original article, what the correct information is, and — if needed — when the article was updated. No apology language unless the publication's style requires it. No passive voice to obscure what was wrong. Language is plain English, accessible to a general reader.

## Quality Criteria
- [ ] The error is described accurately and without ambiguity — a reader who did not see the original article can understand what changed
- [ ] The correct information is stated explicitly, not implied
- [ ] The notice does not over-explain, speculate, or editorialize about the cause of the error
- [ ] Tone is professional and neutral — neither defensive nor excessively apologetic
- [ ] The notice is short enough to be read in under 20 seconds

## Example

### Input
Article headline: "City Council Approves $4.2 Million Budget for Riverside Park Renovation"
Publication date: 14 March 2026
Error: The article stated that the vote passed 7–2. The actual vote was 6–3.
Location of error: Third paragraph, first sentence.
Notice type: Correction
House style: Begin with "Correction:" in bold, include the date the correction was made.

### Output
**Correction, 17 March 2026:** An earlier version of this article incorrectly stated that the city council approved the Riverside Park renovation budget by a vote of 7–2. The vote was 6–3. The article has been updated.

## Known Limitations
- This skill produces the notice text only — it does not update the original article body, add strike-through formatting, or file the correction in a CMS. Those steps remain with the editor.
- For corrections involving legal risk (defamation, pending litigation), the notice should be reviewed by legal counsel before publication. This skill does not provide legal advice.
- If the original error was in a headline or subheading, the notice may need to call that out explicitly — provide the location clearly in your input or Claude may default to assuming the error was in the article body.

## Related Skills
- [data-corrections-writer](../../data-journalism/publishing/data-corrections-writer.md)
- [fact-check-prompt](../../magazine-journalism/fact-checking/fact-check-prompt.md)
- [defamation-risk-checker](../../magazine-journalism/legal/defamation-risk-checker.md)
