---
name: jargon-flagger
status: beta
category: editing
subcategory: editing
version: 1.0
eval_score: null
tags: [editing, accessibility, plain-language, audience, clarity]
---

# Jargon Flagger

## What This Skill Does
Scans a draft article, script, or report for technical, insider, or specialist language that a general audience is unlikely to understand, and suggests plain-language replacements.

## When To Use This Skill
- Before publishing a piece written by a subject-matter expert (scientist, economist, lawyer, policy analyst) who may not write for a general audience
- When editing a draft that has moved between departments and picked up internal vocabulary
- Before adapting a specialist report or press release into a news article
- When your publication has lowered its assumed reading age or changed its target audience
- After receiving reader complaints that previous coverage was hard to follow

## What You Need To Provide
**Required:** The full draft text you want reviewed.
**Optional:** The intended audience (e.g., "general public, no assumed expertise"); the subject area (e.g., "monetary policy", "oncology"); any terms you want preserved because they are defined earlier in the piece.

## How Claude Approaches This
1. Reads the full text and identifies words, phrases, or constructions that a reader without specialist knowledge would find opaque, ambiguous, or off-putting — including acronyms, discipline-specific terms, bureaucratic phrases, and unnecessarily complex sentence structures.
2. For each flagged item, notes the location (quote the surrounding sentence), explains briefly why a general reader may struggle with it, and offers one or two plain-language alternatives that preserve the original meaning.
3. Produces a structured flagged list followed by a clean summary of how many items were found, grouped by type (acronym, technical term, bureaucratic phrase, other).

## Output Format
- A numbered list of flagged items, each showing: the original phrase in quotation marks, a one-sentence explanation of the problem, and one or two suggested replacements.
- A short summary paragraph at the end: total flags, breakdown by type, overall accessibility verdict (clear / moderate / heavy revision needed).
- Tone is direct and practical — written for an editor who will make the final call.
- Length scales with the input. A 600-word draft typically produces 5–15 flags.

## Quality Criteria
- [ ] Every flagged term is genuinely likely to confuse a non-specialist reader — no false positives on common words
- [ ] Suggested replacements are accurate to the original meaning, not watered-down paraphrases
- [ ] The summary gives an honest overall verdict, not blanket reassurance
- [ ] Acronyms are flagged the first time they appear if not spelled out in the text
- [ ] No jargon is introduced in the flagged-item explanations themselves

## Example

### Input
**Draft text:**
"The ministry's Q3 disbursement cadence has been impacted by liquidity constraints arising from the fiscal consolidation trajectory outlined in the supplementary estimates. Stakeholders should note that the capex envelope remains ring-fenced pending the completion of the mid-term expenditure review. Line departments have been advised to front-load their procurement pipelines to mitigate potential underspend."

**Intended audience:** General public, no assumed knowledge of government finance.

### Output
**Jargon Flag Report**

1. **"Q3 disbursement cadence"**
   Sentence: *"The ministry's Q3 disbursement cadence has been impacted…"*
   Problem: "Q3" (third financial quarter) and "disbursement cadence" (the schedule of payments) are both insider terms. A reader may not know either.
   Suggested replacement: *"the ministry's payment schedule for the third quarter of the year"*

2. **"liquidity constraints"**
   Sentence: *"…liquidity constraints arising from the fiscal consolidation trajectory…"*
   Problem: "Liquidity constraints" means the government doesn't have enough ready cash — a specific financial concept that sounds more technical than it is.
   Suggested replacement: *"a shortage of available funds"*

3. **"fiscal consolidation trajectory"**
   Sentence: *"…arising from the fiscal consolidation trajectory outlined in the supplementary estimates."*
   Problem: "Fiscal consolidation" is economist shorthand for reducing the deficit, usually through spending cuts or tax rises. "Trajectory" adds bureaucratic weight without adding meaning.
   Suggested replacement: *"the government's plan to reduce spending"*

4. **"supplementary estimates"**
   Sentence: *"…outlined in the supplementary estimates."*
   Problem: Refers to a specific parliamentary budget document. A reader cannot be expected to know what this is.
   Suggested replacement: *"a mid-year budget document"* — or explain in full: *"a revised budget document submitted to parliament mid-year"*

5. **"capex envelope"**
   Sentence: *"…the capex envelope remains ring-fenced…"*
   Problem: "Capex" (capital expenditure — money spent on infrastructure and assets rather than day-to-day costs) is finance jargon. "Envelope" as a budget term is also insider usage.
   Suggested replacement: *"the budget set aside for capital projects"*

6. **"ring-fenced"**
   Sentence: *"…the capex envelope remains ring-fenced pending the completion…"*
   Problem: Widely used in policy writing but not universally understood. Means the money is protected and cannot be moved to other uses.
   Suggested replacement: *"protected"* or *"reserved and not available for other spending"*

7. **"mid-term expenditure review"**
   Sentence: *"…pending the completion of the mid-term expenditure review."*
   Problem: Refers to a formal government process that a general reader has no reason to know about.
   Suggested replacement: *"a scheduled review of government spending"*

8. **"Line departments"**
   Sentence: *"Line departments have been advised to front-load their procurement pipelines…"*
   Problem: "Line departments" is Whitehall/government-sector vocabulary for ministries or agencies. Unclear to anyone outside the civil service.
   Suggested replacement: *"Government departments"*

9. **"front-load their procurement pipelines"**
   Sentence: *"…advised to front-load their procurement pipelines to mitigate potential underspend."*
   Problem: Double jargon. "Front-loading" (bringing planned purchases forward in time) and "procurement pipeline" (the queue of planned purchases) together make this sentence almost unreadable.
   Suggested replacement: *"bring forward planned purchases to avoid ending the year with unspent funds"*

10. **"underspend"**
    Sentence: *"…to mitigate potential underspend."*
    Problem: Budget jargon for spending less than allocated. Not in everyday use.
    Suggested replacement: *"spending less than budgeted"*

---

**Summary**
Total flags: 10
Breakdown: 4 technical/financial terms · 3 bureaucratic phrases · 2 compound jargon phrases · 1 acronym (Q3)
Overall verdict: **Heavy revision needed.** Almost every sentence contains at least one term that will lose a general reader. The underlying information is not complex — the language choices are the problem.

## Known Limitations
- Claude does not know your specific audience's existing knowledge level unless you state it. A term that needs flagging for a tabloid readership may be fine for a specialist trade title — always specify your audience.
- Jargon judgment is somewhat contextual. If a term has already been defined earlier in the piece (and you have told Claude to preserve it), Claude will still flag it if it appears in the submitted excerpt without the definition.
- Claude cannot detect spoken-word jargon from video or audio transcripts unless you paste the transcript text.
- Some industry terms have no clean plain-language equivalent. Claude will flag them and explain them rather than replace them — the editor must decide whether to explain in situ or cut.

## Related Skills
- [house-style-enforcer](../magazine-journalism/editing/house-style-enforcer.md)
- [copy-editor-assistant](../magazine-journalism/editing/copy-editor-assistant.md)
- [multi-author-harmoniser](./multi-author-harmoniser.md)
