---
name: source-cross-referencer
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [fact-checking, sourcing, verification, research, credibility]
---

# Source Cross-Referencer

## What This Skill Does
Takes a specific claim and a list of sources you have gathered, then maps which sources support, contradict, or are silent on the claim — so you can see at a glance whether your sourcing is solid before publication.

## When To Use This Skill
- You have collected multiple sources on a story and need to know whether they genuinely agree or just appear to
- You are writing a contested claim and want to stress-test whether your sourcing holds up
- An editor has pushed back on a disputed fact and you need to show your evidence clearly
- You are preparing a fact-check package and need a structured comparison of what each source actually says
- You are producing a documentary and need to document that a key claim is independently corroborated

## What You Need To Provide
**Required:** The exact claim you want to cross-reference (one sentence, as it would appear in your story). A list of sources — for each source, paste the relevant excerpt or summarise what it says. Minimum two sources.

**Optional:** The original context where the claim appears (paragraph or script line). The type of story (news report, documentary, magazine feature, podcast episode). Any known relationship between the sources — for example, if two of them cite the same underlying report.

## How Claude Approaches This

1. Reads the claim precisely as stated — noting any specific numbers, dates, or qualifiers that a source would need to match exactly to count as corroboration.
2. Examines each source in turn and places it into one of four categories: **Supports** (source clearly backs the claim), **Partially supports** (source agrees with the general point but differs on a detail), **Contradicts** (source directly disputes the claim or gives a different figure), or **Silent** (source does not address this specific claim).
3. Checks whether sources that appear to agree are actually independent — if two sources trace back to the same original data or rely on the same study, it flags that as a single chain of evidence, not two independent confirmations.
4. Produces a structured comparison table followed by a brief narrative summary: what the weight of evidence shows, where genuine disagreement exists, and what gaps remain before the claim can be published with confidence.

## Output Format
Two-part output. First, a source comparison table with columns: Source Name / Type (official data, academic study, eyewitness account, etc.) / Position on Claim / Key Quote or Detail / Caveats. Then a short narrative paragraph (three to five sentences) summarising the overall picture: whether the claim is well-corroborated, contested, or undercooked — and what the journalist should do next. Total length: roughly 300–500 words depending on how many sources are provided. Plain language throughout. No legal advice, no editorial opinion beyond the sourcing assessment.

## Quality Criteria
- [ ] Every source provided is assessed and placed in a clear category — nothing left unaddressed
- [ ] The table distinguishes between sources that independently confirm a claim and sources that merely repeat each other
- [ ] Contradictions between sources are named specifically, not smoothed over
- [ ] The narrative summary gives a clear next step — what would strengthen the sourcing, or what is good enough to publish
- [ ] The output does not invent any sources or add information not contained in what the journalist provided

## Example

### Input
**Claim to cross-reference:** "Ambulance response times in the city's northern district averaged 14 minutes last year, well above the national benchmark of 8 minutes."

**Sources:**

1. **Regional health authority annual report** — "Mean emergency response time across all districts: 11.3 minutes. Northern district recorded the highest mean at 13.8 minutes."

2. **City council budget committee minutes** — Councillor quote: "Paramedic shortages have pushed response times in the north to nearly 15 minutes on some nights, which is unacceptable."

3. **National ambulance standards body** — Published benchmark: "Target response time for Category 2 emergencies is 18 minutes mean, with an aspirational target of 8 minutes. The 8-minute standard applies only to Category 1 life-threatening calls."

4. **Investigative piece in a regional newspaper** — "Northern district response times hit 14 minutes last year, according to health authority data, more than double the national target."

### Output

| Source | Type | Position on Claim | Key Detail | Caveat |
|---|---|---|---|---|
| Regional health authority annual report | Official government data | Partially supports | Records 13.8 min for northern district — close to the claimed 14 min but not identical | Difference of 0.2 min may matter for accuracy |
| City council budget committee minutes | Official meeting record | Partially supports | References "nearly 15 minutes on some nights" — consistent in direction but this is a peak figure, not an annual average | Councillor is not citing a specific statistic; this is anecdotal corroboration |
| National ambulance standards body | Official benchmark | Contradicts the framing | The 8-minute standard applies only to Category 1 (life-threatening) calls, not all emergencies | If your story does not specify call category, the comparison is misleading |
| Regional newspaper | Secondary source | Appears to support | Cites "14 minutes" from health authority data — but is drawing from the same underlying report as your Source 1 | Not independent corroboration; both traces to the same primary source |

**Narrative summary:** The claim has solid grounding in official data but two problems need fixing before publication. First, the annual report shows 13.8 minutes, not 14 — a small difference but worth correcting to avoid accuracy challenges. More significantly, the "8-minute national benchmark" framing is contested: the standards body defines that target for life-threatening Category 1 calls only. If the story is comparing all-category averages against a Category 1 target, the comparison is misleading and legally and editorially risky. The regional newspaper piece does not add independent corroboration — it draws on the same health authority data. Recommended next step: confirm the call-category breakdown from the health authority before finalising the claim, and either narrow the benchmark comparison to Category 1 calls or use the 18-minute mean target instead.

## Known Limitations
- Claude cannot access URLs, databases, or documents — it can only assess the information you paste in. If a source excerpt is incomplete or paraphrased, the assessment will only be as good as what you provide.
- This skill does not verify whether the sources themselves are accurate. It maps internal consistency and independence across sources, not ground truth.
- Source categories (Supports / Contradicts / etc.) reflect the claim exactly as worded. If your claim is slightly ambiguous, Claude will flag that rather than make a judgment call — you may need to tighten the wording first.
- For claims involving legal liability (defamation, privacy), this output is not a substitute for legal review.

## Related Skills
- [source-credibility-brief](../../magazine-journalism/fact-checking/source-credibility-brief.md)
- [statistics-verifier](./statistics-verifier.md)
- [claim-verification-checklist](../../magazine-journalism/fact-checking/claim-verification-checklist.md)
