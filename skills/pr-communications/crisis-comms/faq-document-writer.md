---
name: faq-document-writer
status: stable
category: pr-communications
subcategory: crisis-comms
version: 1.0
eval_score: 4.5
tags: [pr, crisis, faq, crisis-comms, media-handling]
---

# FAQ Document Writer

## What This Skill Does
Writes a journalist-facing FAQ document for a crisis or complex issue, anticipating the questions journalists are most likely to ask and providing approved, consistent answers that spokespeople and press officers can use verbatim or as a guide.

## When To Use This Skill
- You have issued a crisis or holding statement and need supporting material for incoming media calls
- You are preparing spokespeople for a press conference or media round and want to standardise the answers
- The story is complex (regulatory, technical, or legal) and you need everyone speaking from the same document
- You need an internal Q&A that doubles as a public-facing document with minimal editing

## What You Need To Provide
**Required:** A summary of the incident or issue (what happened, what is confirmed, what is under investigation); the organisation's name and sector; what the most likely journalist questions are, or a brief description of what the media have already asked; what is approved to say and what is not.

**Optional:** A holding statement or earlier press release for consistency reference; the target channel (internal use only / media-facing / public website); whether unanswerable questions should be flagged rather than answered; a list of specific questions to address; the spokesperson's name and title.

## How Claude Approaches This
1. Reviews the facts provided and identifies the five to ten questions a journalist covering this story would ask first — ordered by likely urgency, not organisational convenience.
2. Writes each question in the direct, blunt register journalists use ("Did you know about this before it happened?" not "Can you describe your prior awareness of the issue?").
3. Writes answers that are factual, specific, and consistent with any prior public statements — not evasive, but also not beyond what has been confirmed.
4. Flags questions where the honest answer is "we don't know yet" or "we cannot comment on that" — gives language for these rather than leaving them blank or inventing an answer.
5. Groups questions thematically if there are more than six, to make the document navigable.

## Output Format
Q&A format with bold questions and plain-text answers. 5–12 Q&A pairs. Each answer 30–80 words. Total document 400–900 words depending on complexity. Optional: thematic section headers if more than six pairs. Tone: calm, authoritative, factual. No bullet points within individual answers unless listing a specific sequence of events. Date and version number at top if requested.

## Quality Criteria
- [ ] Questions are phrased as a journalist would ask them, not as internal talking points
- [ ] Answers are consistent with any previously issued statements
- [ ] "We don't know yet" and "no comment" positions are acknowledged explicitly, with bridging language provided
- [ ] No answer contains information not grounded in the input briefing
- [ ] Answers avoid passive-voice evasions ("mistakes were made," "it has been determined")
- [ ] Document is usable by a spokesperson who has not read the full briefing

## Example

### Input
Issue: A pharmaceutical distribution company, Northgate Pharma Distribution, has discovered that a batch of blood pressure medication supplied to 47 pharmacies across the UK contained an incorrect dosage labelling error. The error was identified by an internal quality audit, not a patient complaint. No adverse patient outcomes have been reported. The batch has been recalled. The Medicines and Healthcare products Regulatory Agency (MHRA) has been notified. The cause is under investigation but believed to be a labelling machine fault at the third-party packaging contractor.

Approved to say: The recall is underway, MHRA has been notified, no adverse patient outcomes reported, internal audit identified the error, cause under investigation.

Not approved to say: The contractor's name, any information about litigation or regulatory enforcement action, the total number of units in the batch.

### Output
**Northgate Pharma Distribution — Media FAQ**
*Issue: Medication Labelling Error and Batch Recall*
*Version 1 — 16 March 2026*

---

**Q: What exactly went wrong?**
A batch of blood pressure medication supplied by Northgate Pharma Distribution was found to contain an incorrect dosage labelling error. The error affects labelling only — the medication itself was correctly manufactured. The batch has been recalled from all 47 pharmacies it was supplied to.

**Q: How did you find out about this?**
The error was identified through our own internal quality audit process. It was not reported by a patient or pharmacist. We are proud that our internal controls detected the issue before any harm occurred.

**Q: Has anyone been harmed?**
We have no reports of any adverse patient outcomes associated with this batch. Patients who received medication from this batch and have concerns are advised to speak to their pharmacist or GP.

**Q: Have you notified the regulator?**
Yes. We notified the Medicines and Healthcare products Regulatory Agency (MHRA) as soon as the error was confirmed. We are cooperating fully with the MHRA and will provide whatever information they require.

**Q: What is the cause of the error?**
The investigation is ongoing. We believe the error relates to a labelling process fault, but we will not confirm the specific cause until the investigation is complete. We expect to have preliminary findings within [X days].

**Q: How many packs are affected? Where are they now?**
We are not disclosing the total volume of the batch at this stage of the investigation. The recall process is underway and all 47 affected pharmacies have been contacted.

**Q: Should patients stop taking their medication?**
No patient should stop taking prescribed medication without speaking to their doctor or pharmacist first. Patients with concerns about this specific batch should contact their dispensing pharmacy, who can advise on next steps.

**Q: Will there be regulatory enforcement action?**
We cannot comment on the possibility of future regulatory action. We are focused on completing the recall, supporting the MHRA's review, and identifying the root cause of the labelling fault.

---

*Internal note: Questions about the packaging contractor's identity and any litigation matters should be referred to the legal team and not addressed by media spokespeople at this time.*

## Known Limitations
- Claude can only anticipate questions based on what it knows about standard media practice — genuinely unusual or technically specialist story angles may not be covered. Review the FAQ with someone who knows the beat.
- Answers that say "we cannot comment" or "this is under investigation" are honest, but journalists will push past them. The FAQ does not prepare spokespeople for bridging techniques, which requires human media training.
- All legal references, regulatory body names, and procedural details in the FAQ must be verified by legal and compliance before any spokesperson uses the document.

## Related Skills
- [crisis-statement-writer](./crisis-statement-writer.md)
- [holding-statement-writer](./holding-statement-writer.md)
- [spokesperson-briefing-note](../media-relations/spokesperson-briefing-note.md)
