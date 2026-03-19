---
name: passive-voice-checker
status: beta
category: editing
subcategory: editing
version: 1.0
eval_score: null
tags: [editing, writing, clarity, style, passive-voice]
---

# Passive Voice Checker

## What This Skill Does
Scans a draft article, script, or report for passive-voice constructions, explains why each weakens the prose, and rewrites every flagged sentence in active voice.

## When To Use This Skill
- Before sending a draft to a senior editor and you want to tighten the writing yourself first
- When a house style guide requires active voice and you need a systematic check
- When a script or article feels sluggish or distant and you suspect passive construction is the cause
- When training junior writers by showing side-by-side active and passive comparisons

## What You Need To Provide
**Required:** The full text of the article, script, broadcast copy, or report you want checked.
**Optional:** Any sentences or sections where passive voice is intentional and should be left unchanged (for example, a direct quote or a deliberate stylistic choice in a documentary narration).

## How Claude Approaches This
1. Reads the entire text to understand context, tone, and subject matter before flagging anything.
2. Identifies every passive-voice construction — defined as any sentence where the grammatical subject receives the action rather than performs it — and notes its location and the underlying reason it weakens the text (obscures the actor, reduces energy, or creates ambiguity about who is responsible).
3. Rewrites each flagged sentence in active voice, preserving the original meaning and matching the existing tone and register. Where a passive construction is defensible (for example, the actor is genuinely unknown or deliberately withheld), Claude notes this rather than forcing an awkward rewrite.
4. Produces a structured report listing every flag alongside its rewrite, followed by a final clean version of the full text with all active-voice replacements applied.

## Output Format
Two sections:

**Section 1 — Flags and rewrites:** A numbered list. Each entry shows the original passive sentence, a one-line explanation of the problem, and the rewritten active version. Sentences intentionally left passive are listed separately with a brief justification.

**Section 2 — Clean revised text:** The full text with all accepted rewrites applied, formatted identically to the original (paragraphs, headings, line breaks preserved). No editorial commentary in this section.

Length scales with the input. A 500-word article typically produces 5–12 flagged items.

## Quality Criteria
- [ ] Every passive construction in the input is identified — none missed, none falsely flagged
- [ ] Each rewrite preserves the original meaning without adding or removing information
- [ ] Rewrites match the register of the surrounding text (broadcast copy stays conversational; long-form journalism stays measured)
- [ ] The clean revised text reads as a coherent whole, not a patchwork of corrections
- [ ] Genuine edge cases (unknown actor, passive for stylistic effect) are noted rather than forced into awkward active constructions

## Example

### Input
The following is an excerpt from a 400-word news feature on a hospital data breach:

> The patient records of approximately 84,000 people were accessed by an unauthorised third party in November. A security audit was subsequently conducted by an external firm hired by the hospital board. Recommendations were made to improve encryption standards, and new protocols are expected to be introduced before the end of the quarter. A spokesperson for the hospital said the incident was being taken very seriously. No criminal charges have been filed.

Please check for passive voice. The final sentence ("No criminal charges have been filed") is intentional — we want to avoid implying who would file them.

### Output

**Section 1 — Flags and rewrites**

1. **Original:** The patient records of approximately 84,000 people were accessed by an unauthorised third party in November.
   **Problem:** The actor (the unauthorised third party) is buried at the end. Leads with the object, burying the most newsworthy element.
   **Rewrite:** An unauthorised third party accessed the patient records of approximately 84,000 people in November.

2. **Original:** A security audit was subsequently conducted by an external firm hired by the hospital board.
   **Problem:** Passive buries both the actor and the timeline. The sentence reads as though the audit simply happened.
   **Rewrite:** An external firm hired by the hospital board subsequently conducted a security audit.

3. **Original:** Recommendations were made to improve encryption standards.
   **Problem:** Actor entirely absent. Who made the recommendations? The audit? The firm? This creates ambiguity that undermines the credibility of the claim.
   **Rewrite:** The external firm recommended improvements to encryption standards.

4. **Original:** new protocols are expected to be introduced before the end of the quarter.
   **Problem:** Double passive ("are expected to be introduced") makes this sentence feel tentative and bureaucratic.
   **Rewrite:** The hospital expects to introduce new protocols before the end of the quarter.

5. **Original:** the incident was being taken very seriously.
   **Problem:** Passive in a direct quote paraphrase weakens the attribution. The spokesperson's claim should have a clear subject.
   **Rewrite:** A hospital spokesperson said management was taking the incident very seriously.

**Left unchanged (intentional passive):**
- "No criminal charges have been filed." — Actor deliberately withheld. Flagging who has not filed charges would imply a specific prosecuting authority. Left as is per instruction.

---

**Section 2 — Clean revised text**

An unauthorised third party accessed the patient records of approximately 84,000 people in November. An external firm hired by the hospital board subsequently conducted a security audit. The external firm recommended improvements to encryption standards, and the hospital expects to introduce new protocols before the end of the quarter. A hospital spokesperson said management was taking the incident very seriously. No criminal charges have been filed.

## Known Limitations
- This skill works on English-language text only. It will attempt other languages but accuracy drops significantly.
- Very long texts (above 3,000 words) should be submitted in sections to avoid losing precision on later passages.
- Passive voice in direct quotations is flagged for awareness but not rewritten — altering a source's words is an editorial decision that must remain with the journalist.
- The skill cannot judge whether a stylistic passive is appropriate for a specific house style. When in doubt, it flags and explains rather than making an executive decision.

## Related Skills
- [copy-editor](../editing/copy-editor.md)
- [proofreader](../editing/proofreader.md)
- [redundancy-checker](../editing/redundancy-checker.md)
- [structure-flow-checker](../editing/structure-flow-checker.md)
