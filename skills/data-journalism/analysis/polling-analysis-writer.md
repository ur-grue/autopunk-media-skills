---
name: polling-analysis-writer
status: stable
category: data-journalism
subcategory: analysis
version: 1.0
eval_score: 4.4
tags: [polling, surveys, public opinion, statistics, analysis]
---

# Polling Analysis Writer

## What This Skill Does
Analyses poll or survey results and writes a clear, accurate, publication-ready explanation for a general audience — covering the headline finding, key subgroup breakdowns, methodology caveats, and what the numbers do and do not mean.

## When To Use This Skill
- A polling firm or research organisation has released survey results and you need to write them up quickly and accurately
- You want to check your draft poll write-up for errors in interpretation (particularly subgroup misuse)
- You have multiple polls on the same question and need to contextualise the latest against previous findings
- An editor needs a plain-language explainer of a complex survey methodology to accompany a polling story

## What You Need To Provide
**Required:** The poll results — key headline figures, subgroup figures if relevant, sample size, fieldwork dates, and polling organisation. The question(s) asked, verbatim if possible.
**Optional:** Previous poll figures on the same question; the commission source (who paid for the poll); the publication's audience register.

## How Claude Approaches This
1. Reviews the results for the five most common polling reporting errors: cherry-picking subgroups, ignoring margin of error, treating non-significant differences as meaningful, misrepresenting question wording, and omitting who commissioned the poll.
2. Writes a plain-language summary that leads with the headline finding and places it in context — comparison to previous polls, margin of error, and any relevant methodology caveats.
3. Flags any result in the data that appears to be a subgroup finding and warns if the subsample is too small to report reliably.

## Output Format
A structured analysis document in three parts: (1) Headline summary — two to four sentences suitable for use as the opening of a news article. (2) Key findings — bullet list of three to six findings, each with the figure and a one-line plain-language gloss. (3) Methodology and caveats — two to five sentences on sample size, margin of error, fieldwork dates, question wording issues, and commissioning source. Readability target: accessible to any adult reader. No statistical jargon without immediate plain-language explanation.

## Quality Criteria
- [ ] Headline summary leads with the most newsworthy finding, not the most flattering one for any party
- [ ] Margin of error is stated and applied correctly to at least the headline figure
- [ ] Any subgroup figure below n=100 is flagged as unreliable
- [ ] Question wording is reproduced or summarised accurately
- [ ] Commissioning source is disclosed if known
- [ ] No difference between two figures is described as meaningful unless it exceeds the margin of error

## Example

### Input
Poll results: A survey of 1,847 registered voters conducted online over three days (12–14 March 2026) by Meridian Research on behalf of a national newspaper. Question asked: "If a general election were held tomorrow, which party would you vote for?" Results: Party A 38%, Party B 31%, Party C 18%, Other/Don't know/Wouldn't vote 13%. Subgroup: Among 18–24 year olds (n=203): Party A 29%, Party B 24%, Party C 34%. Previous poll (same pollster, January 2026): Party A 36%, Party B 33%, Party C 17%.

### Output
**Headline Summary**

A new poll puts Party A on 38% of the vote, its highest recorded figure with this pollster, with Party B at 31% and Party C at 18%. The seven-point lead for Party A over Party B has widened slightly since January, when the gap was three points — though both changes are within the poll's margin of error of approximately two to three percentage points.

**Key Findings**

- **Party A: 38%** — Up two points since January. Lead over Party B has grown, but the shift is at the margin-of-error boundary and should not be treated as definitive movement.
- **Party B: 31%** — Down two points since January. Back to levels last seen in late 2025.
- **Party C: 18%** — Up one point. Consistent with its recent polling range of 16–19%.
- **Young voters (18–24): Party C leads at 34%** — The most notable subgroup finding. Party C outpolls both major parties among this age group. Treat with some caution: subsample of 203 respondents carries a higher margin of error of around ±7 points.
- **13% undecided or would not vote** — A substantial pool. Movement in this group could shift headline figures significantly at an election.

**Methodology and Caveats**

The poll was conducted online with 1,847 registered voters between 12–14 March 2026 by Meridian Research, commissioned by the newspaper. Online panels tend to over-represent more politically engaged voters; results are weighted by age, gender, and region but not by past vote. The question asked about a "general election held tomorrow" — a hypothetical scenario that may not reflect actual turnout behaviour. The poll was commissioned by a publication with a declared editorial position; readers should bear this in mind when assessing news coverage of the results.

## Known Limitations
- This skill cannot assess whether the polling firm's weighting methodology is sound — that requires access to full methodology tables, which are often published separately. Always check the tables before writing up subgroup findings.
- The skill works from the figures provided. If the pollster has suppressed unfavourable subgroups or released only selected cross-tabs, the analysis will reflect only what was shared.
- International polling conventions vary. Margin-of-error guidance in this skill assumes a standard simple random sampling formula; complex weighted designs may have different effective sample sizes.

## Related Skills
- [statistics-explainer](./statistics-explainer.md)
- [data-story-finder](./data-story-finder.md)
- [dataset-summary-brief](./dataset-summary-brief.md)
