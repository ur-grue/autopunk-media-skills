---
name: beat-sheet-builder
status: stable
category: screenwriting
subcategory: development
version: 1.0
eval_score: 4.5
tags: [screenwriting, development, beat-sheet, structure, three-act]
---

# Beat Sheet Builder

## What This Skill Does
Generates a complete 15-beat story map for a feature film or TV pilot, placing every major structural turn across a three-act framework from a premise and character brief.

## When To Use This Skill
- You have a premise and protagonist but are struggling to structure the story before writing pages
- You need to identify whether your concept has enough dramatic momentum to sustain a full screenplay
- You are preparing to pitch and need a story roadmap to accompany your logline or treatment
- You are rewriting a draft and want to audit whether your existing beats land at the right story percentages

## What You Need To Provide
**Required:** Logline or one-paragraph premise; protagonist name, want (external goal), and need (internal lesson); antagonistic force or central conflict
**Optional:** Genre; target format (feature film or TV pilot — 30-min, 60-min); tone references ("dark and grounded," "comedic but emotional"); any beats already fixed by the writer

## How Claude Approaches This
1. Identifies the protagonist's wound, want, and need — the emotional engine that determines where the character starts and where they must end up
2. Maps the 15 Blake Snyder beats (Save the Cat structure) or the equivalent Syd Field turning-point model depending on format, placing each beat at the correct page/percentage mark for the stated length
3. Writes each beat as a concrete dramatic event, not a structural label — specifying what happens, to whom, and what changes as a result
4. Flags any beats where the provided premise is thin, noting what additional story material would be needed to fill them credibly

## Output Format
Numbered list of 15 beats. Each entry: beat name in bold, page/percentage marker in parentheses, one to three sentences describing the concrete scene or sequence. Total length: 600–900 words. Tone: professional development notes — clear, specific, zero jargon padding. Ends with a brief structural assessment (2–3 sentences) noting strengths and the single most vulnerable beat.

## Quality Criteria
- [ ] All 15 beats are present and named correctly (Opening Image through Final Image, or equivalent Syd Field turning points)
- [ ] Each beat is a concrete event, not a generic structural placeholder ("A setback occurs" is not acceptable)
- [ ] Page/percentage markers are accurate for the stated format length
- [ ] Protagonist's internal arc (need) is visible at the Midpoint, All Is Lost, and Final Image beats
- [ ] Antagonistic force appears or is implicated at the correct structural pressure points
- [ ] Structural assessment identifies the single weakest beat with a specific reason

## Example

### Input
**Format:** Feature film (approximately 110 pages)
**Logline:** A burned-out forensic accountant discovers her firm has been laundering money for a criminal syndicate — and that her mentor set her up to take the fall.
**Protagonist:** Nadia Voss. Want: expose the syndicate and clear her name. Need: stop letting loyalty to authority figures override her own judgment.
**Antagonist:** Her mentor, senior partner Marcus Drewe, who controls the firm's internal investigation and has law enforcement contacts in his pocket.
**Tone:** Grounded thriller, character-driven. References: Michael Clayton, The Insider.

### Output
**Beat Sheet — NADIA (Feature Film, 110 pages)**

**1. Opening Image (p. 1)**
Nadia at her desk at 11 p.m., cross-referencing columns on three monitors. She finds a rounding error in a client ledger — the kind nobody was supposed to notice — and quietly corrects it. She is meticulous, invisible, and entirely trusting of the system she serves.

**2. Theme Stated (p. 5)**
Marcus tells her over coffee: "In this business, Nadia, loyalty is the only audit that matters." She smiles and agrees. This is the lie she has to un-learn.

**3. Set-Up (pp. 1–10)**
We see Nadia's life: a rent-controlled apartment stacked with work files, a sister who calls once a week and gets voicemail, a junior colleague who idolizes her. She is defined entirely by professional excellence and deference to Marcus.

**4. Catalyst (p. 12)**
Nadia receives an anonymous thumb drive containing a duplicate set of accounts for Castellan Holdings, the firm's largest client. The figures are identical to hers — except for $47 million that appears, moves, and vanishes across eighteen months.

**5. Debate (pp. 12–25)**
She debates whether to take it to Marcus. She goes to Marcus. He assures her it's a legacy reconciliation error, praises her vigilance, and asks her to sit on it while he handles it internally. She agrees. That night she copies the drive.

**6. Break into Two (p. 25)**
She runs the Castellan figures against public filings and finds the pattern is deliberate and ongoing. She chooses not to go back to Marcus. She is going to find out herself.

**7. B Story (p. 30)**
She cold-contacts the anonymous source — an ex-employee now living under a different name in another city. He agrees to one call. He's terrified. He tells her she's already been identified as the investigator.

**8. Fun and Games (pp. 30–55)**
Nadia builds her case using only what she can access legitimately: auditing filings, pulling incorporation records, mapping shell entities. She is brilliant and methodical. The audience watches her close in while also watching surveillance footage intercut — someone is watching her close in.

**9. Midpoint (p. 55)**
A false victory: Nadia completes her evidence map and realizes the money flows to a single offshore account she can name. She schedules a meeting with the firm's external compliance counsel — the one person outside Marcus's reach. Then her source goes silent, permanently.

**10. Bad Guys Close In (pp. 55–75)**
Marcus places her on administrative leave citing "anomalies in her recent work." Her access is revoked. A regulatory investigator contacts her — using details only someone inside the firm could have provided. She realizes the investigation has been pointed at her.

**11. All Is Lost (p. 75)**
Nadia arrives home to find her apartment has been searched and the original thumb drive is gone. Her sister calls: two men came to her workplace asking questions. Nadia is completely alone, the system entirely weaponized against her, and she has nothing physical left.

**12. Dark Night of the Soul (pp. 75–85)**
She sits in her car outside the firm at 2 a.m. She could disappear. She has the contacts. Then she remembers what Marcus said about loyalty — and finally understands it was never about her loyalty to him. It was always about his loyalty to Castellan.

**13. Break into Three (p. 85)**
She still has one thing: she memorized the account numbers. And she knows one thing Marcus doesn't — she kept a second copy, filed in a format nobody thinks to search.

**14. Finale (pp. 85–105)**
Nadia goes around Marcus entirely, using the firm's mandatory regulatory disclosure process — the one procedure he cannot suppress without creating a paper trail of obstruction. She triggers a mandatory external audit. Marcus moves to destroy the evidence; the attempt itself becomes the evidence. He is arrested. She is exonerated.

**15. Final Image (p. 110)**
Nadia at a new desk in a smaller office — she's started her own forensic practice. Same meticulous attention. But when a junior asks for her sign-off, she says: "Show me your working. I want to understand it, not just approve it." The wound is healed. The lesson is lived.

---

**Structural Assessment:** The architecture is strong. The Midpoint false victory and All Is Lost are well-differentiated and each meaningfully escalates the stakes. The most vulnerable beat is the B Story contact — the anonymous source exits too cleanly at the Midpoint. He needs either a scene of consequence before he disappears, or his disappearance needs to cost Nadia something she cannot recover by other means, or the thriller mechanism feels tidy rather than dangerous.

## Known Limitations
- Beat sheets built from a one-paragraph premise will produce plausible but generalized story events; the more specific the input (concrete character details, a clear second-act obstacle), the more specific and useful the output
- The skill defaults to Blake Snyder's 15-beat Save the Cat structure; writers using alternative frameworks (Hero's Journey, Kishōtenketsu, episodic TV runner structure) should specify their preferred model or the output will misalign with their process
- The skill cannot evaluate whether a premise is commercially viable or emotionally resonant — it maps what's there, not whether what's there is strong enough

## Related Skills
- [logline-writer](./logline-writer.md)
- [treatment-writer](./treatment-writer.md)
- [character-profile-writer](./character-profile-writer.md)
