---
name: claim-fact-checker
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [fact-checking, verification, research, claims, sourcing]
---

# Claim Fact Checker

## What This Skill Does
Produces a structured verification brief for a specific claim — listing the key questions to investigate, the source types to consult, the red flags to watch for, and a framework for reaching a defensible editorial judgment.

## When To Use This Skill
- A source has made a specific statistical, historical, or factual claim during an interview or in a press statement
- You are editing a piece and want to flag every verifiable assertion before publication
- A story involves a disputed claim and you need a systematic way to approach editorial judgment
- You are preparing for a follow-up interview and want to anticipate whether a claim will hold up to scrutiny
- A press release or official document contains numbers, dates, or attributed quotes that need verification

## What You Need To Provide
**Required:** The exact claim, word for word, as it was stated. Who made it (role or category of speaker, not necessarily a name). The topic or story it relates to.

**Optional:** Any context about where the claim appeared (interview, press release, social media post, court document). Any prior reporting or sources you have already consulted. The publication deadline or urgency level.

## How Claude Approaches This
1. Breaks the claim into its component assertions — a single sentence often contains several distinct facts that each require separate verification.
2. For each component, identifies the most authoritative source type likely to confirm or refute it (official data, primary documents, academic literature, on-record expert comment, or contemporaneous reporting).
3. Flags specific logical or rhetorical patterns that make a claim harder to verify — undefined terms, missing denominators in statistics, unsourced attribution, timeframe ambiguity.
4. Produces a numbered verification checklist with clear pass/fail criteria for each item.
5. Recommends an editorial judgment framework: what level of evidence would be sufficient to publish the claim, to publish it with a caveat, or to exclude it entirely.

## Output Format
A structured brief of approximately 400–600 words. Divided into four sections: Claim Breakdown, Verification Checklist, Red Flags, and Editorial Judgment Framework. Written in plain editorial language — no jargon. Numbered checklist items, each with a recommended source type. Closing paragraph states explicitly what would constitute sufficient evidence for publication.

## Quality Criteria
- [ ] Every component assertion in the original claim is identified and listed separately
- [ ] Each checklist item names a specific, realistic source type (not "check online")
- [ ] At least one red flag is identified if the claim contains ambiguous language, an unverified attribution, or a statistic without a denominator
- [ ] The editorial judgment framework gives a clear threshold for publication, not-publication, and conditional publication
- [ ] Output contains no invented facts about the claim subject — Claude makes no judgment about whether the claim is true or false

## Example

### Input
Claim: "Since the new zoning policy was introduced three years ago, housing construction in this city has increased by 40 percent."
Speaker: The city's deputy housing commissioner, at a press conference.
Story: Investigation into whether the zoning reform has achieved its stated goals.

### Output

**Claim Breakdown**

This statement contains four distinct assertions, each requiring separate verification:

1. A zoning policy was introduced approximately three years ago.
2. That policy was specifically new (i.e., a significant change from prior policy, not a minor administrative update).
3. Housing construction in the city has increased since that date.
4. The increase is 40 percent, relative to a defined baseline.

---

**Verification Checklist**

1. Confirm the policy and its passage date.
   → Source type: Municipal council meeting records, official gazette, or planning department website. Look for the ordinance number and the date of adoption, not the date of announcement.

2. Establish what "new" means — is this a major reform or an incremental amendment?
   → Source type: Planning department legislative history; interviews with urban planning academics or a city council member from that period.

3. Obtain the actual housing construction figures.
   → Source type: Official building permit data (typically held by the city's planning or building department, often published as annual reports). Cross-reference with national housing statistics if available.

4. Verify the 40 percent figure — identify the baseline year and the comparison period.
   → Source type: The specific dataset the deputy commissioner used. Request the underlying data table, not a summary slide. Establish whether the figure counts permits issued, units completed, or units occupied — these differ significantly.

5. Check whether any confounding factors affected construction during this period (economic cycles, interest rate changes, major infrastructure investment, population change).
   → Source type: Economic reporting from the same period; national construction industry data.

---

**Red Flags**

- "40 percent" without a stated baseline is unverifiable. A 40 percent increase from a historic low is not equivalent to a 40 percent increase from a normal year.
- "Housing construction" is undefined — permits, completions, and occupied units tell different stories.
- The claim comes from an official with a direct interest in demonstrating policy success. This does not make the claim false, but it raises the bar for independent verification before publication.

---

**Editorial Judgment Framework**

Publish the claim as stated if: You have independently verified the specific dataset, confirmed the baseline year, and the figures align within normal rounding variance.

Publish with caveat if: The underlying data supports a trend of increase but the exact figure cannot be independently confirmed, or the definition of "construction" differs from the speaker's implied meaning.

Do not publish as stated if: The baseline is not obtainable, the dataset cannot be independently sourced, or the figure depends on a definition the commissioner cannot provide in writing.

## Known Limitations
- Claude cannot access live databases, government portals, or subscription data services. All source recommendations point to real source types, but the journalist must retrieve and read those sources.
- For highly technical statistical claims (regression analyses, adjusted rates, compound growth figures), this skill produces a framework but cannot catch methodological errors in the underlying data — a data journalist or statistician should review those cases.
- Claims involving sealed court records, embargoed research, or proprietary corporate data are outside the scope of this framework.

## Related Skills
- [claim-origin-tracer](./claim-origin-tracer.md)
- [source-cross-referencer](./source-cross-referencer.md)
- [statistics-verifier](./statistics-verifier.md)
- [claim-verification-checklist](../../magazine-journalism/fact-checking/claim-verification-checklist.md)
- [source-credibility-brief](../../magazine-journalism/fact-checking/source-credibility-brief.md)
