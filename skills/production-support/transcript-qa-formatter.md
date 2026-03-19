---
name: transcript-qa-formatter
status: beta
category: production-support
subcategory: publishing
version: 1.0
eval_score: null
tags: [transcript, interview, Q&A, cleanup, formatting, filler-words, speaker-labels]
---

# Transcript Q&A Formatter

## What This Skill Does
Cleans a raw interview transcript into a polished Q&A — removing filler words, fixing speaker labels, standardising punctuation, and optionally inserting timestamps — ready to publish or hand to a copy editor.

## When To Use This Skill
- You have a raw transcript from a recording tool (Otter.ai, Rev, Descript, or manual) and need it publication-ready
- The transcript has inconsistent speaker labels ("Speaker 1", "UNKNOWN", mixed capitalisation)
- Filler words (um, uh, you know, like, sort of) are cluttering the text and need stripping without distorting meaning
- You are preparing a Q&A feature for a website, magazine, or press kit and need clean, readable format
- You need timestamps inserted at regular intervals or on each speaker turn for reference

## What You Need To Provide
**Required:** The raw transcript text, pasted in full. Include speaker labels if they exist, even if inconsistent.
**Optional:** Real names to replace placeholder labels (e.g. "Speaker 1 = Dr. Amara Nwosu"); preferred timestamp style (HH:MM:SS or MM:SS); whether you want light cleaning (filler words only) or full editing (also tighten run-on answers); the publication's house style for Q&A layout (e.g. bold Q, italic A, or labelled by name).

## How Claude Approaches This
1. Identify all speaker turns and map inconsistent labels to consistent names or roles (Q / A, or full names if provided). Flag any turns where the speaker is genuinely ambiguous rather than guessing.
2. Strip filler words (um, uh, you know, like, sort of, I mean — when used as hesitation rather than meaning) without altering the speaker's actual phrasing, facts, or voice. Bracket any deletion that changes the sentence structure so the editor can review it.
3. Fix punctuation, capitalisation, and sentence boundaries introduced by automated transcription errors. Do not rephrase or rewrite — only correct mechanical errors.
4. If timestamps are requested, insert them at each speaker turn (or at the interval specified) in the requested format, aligned to the left margin.
5. Apply the requested Q&A layout style. Default: **Q:** in bold, A: in plain text, one line break between turns, double line break between exchanges.
6. Output the cleaned transcript followed by a short summary of changes made (filler words removed, labels corrected, ambiguous turns flagged).

## Output Format
Full cleaned transcript in Q&A layout. Length mirrors the source — no content is cut beyond filler words. Tone follows the speaker's own register (formal interview stays formal; conversational stays conversational). A brief change log follows the transcript: number of filler words removed, any speaker labels corrected, any ambiguous turns flagged for editor review. No commentary or suggestions beyond what was asked.

## Quality Criteria
- [ ] Every speaker turn is attributed correctly — no unlabelled or mislabelled lines
- [ ] Filler words are removed only where they are true hesitation markers, not where "like" or "you know" carries meaning
- [ ] No words, facts, or opinions are paraphrased, added, or removed beyond what is explicitly cleaned
- [ ] Punctuation and capitalisation follow standard editorial convention throughout
- [ ] Timestamps (if requested) appear at every speaker turn and use the format specified
- [ ] The change log accurately reflects what was modified

## Example

### Input

```
Speaker 1: So, um, the, uh, the main challenge we faced — and I think this is, you know, sort of the crux of it — was that the supply chain data just wasn't, like, granular enough for, um, regional analysis. We ended up, uh, building our own tracking system from scratch.

UNKNOWN: And how long did that take?

Speaker 1: About, um, fourteen months. Which is, you know, not ideal when you're working to a quarterly reporting cycle. But we felt it was the right call.

UNKNOWN: Were there other options you considered?

Speaker 1: Yeah, we looked at, uh, three off-the-shelf platforms. None of them had the, you know, the regional breakdown we needed. So, um, it was really a build-versus-buy decision and, I mean, build won.

Speaker names: Speaker 1 = Helena Varga (Head of Operations); UNKNOWN = Interviewer
Timestamp style: MM:SS at each speaker turn
Layout: Bold Q, plain A, labelled by role
```

### Output

```
**Q [00:00]:** And how long did that take?

A [00:08] Helena Varga (Head of Operations): About fourteen months. Which is not ideal when you're working to a quarterly reporting cycle. But we felt it was the right call.

**Q [00:18]:** Were there other options you considered?

A [00:21] Helena Varga (Head of Operations): Yeah, we looked at three off-the-shelf platforms. None of them had the regional breakdown we needed. So it was really a build-versus-buy decision and build won.
```

---

**Note:** The opening speaker turn by Helena Varga appears before the first interviewer question in the source. It has been placed at the top as a standalone answer block for context:

A [00:00] Helena Varga (Head of Operations): The main challenge we faced — and I think this is the crux of it — was that the supply chain data wasn't granular enough for regional analysis. We ended up building our own tracking system from scratch.

---

**Change log:**
- Filler words removed: 11 (um ×4, uh ×3, you know ×3, like ×1)
- Speaker labels corrected: "Speaker 1" → Helena Varga (Head of Operations); "UNKNOWN" → Interviewer (displayed as **Q**)
- Ambiguous turns: none
- Structural note: opening answer turn placed before first question; no content altered

## Known Limitations
- Automated transcripts with heavy crosstalk, strong accents, or poor audio quality often contain word-level errors that this skill cannot detect — it cleans formatting and filler, not mishearing. Always review against the original recording for factual accuracy before publishing.
- The skill does not judge whether a quote should be cut for editorial reasons — length decisions remain with the editor.
- If speaker labels are absent entirely and no names are provided, the skill will use Q / A for a two-person interview only; three or more unlabelled speakers will be returned with a flag requesting clarification.
- Ellipsis and em-dash usage to indicate pauses or interrupted speech is standardised to the default style; if your publication uses a different convention, specify it upfront.

## Related Skills
- [transcript-cleanup](../podcast/post-production/transcript-cleanup.md)
