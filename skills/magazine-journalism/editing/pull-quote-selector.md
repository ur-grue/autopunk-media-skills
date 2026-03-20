---
name: pull-quote-selector
status: stable
category: magazine-journalism
subcategory: editing
version: 1.0
eval_score: 4.44
tags: [journalism, editing, pull-quotes, layout, design, magazine]
---

# Pull Quote Selector

## What This Skill Does
Reads a completed article and identifies the three to five strongest pull-quote candidates, ranked by visual impact and reader-stopping power, with trim suggestions for layout.

## When To Use This Skill
- You are laying out a feature and need pull quotes to break up long columns of text
- You want to select the most compelling lines before sending a piece to the design team
- You are editing a long-form article and want to identify the sentences with the most standalone impact
- You need pull quotes for a digital article's sidebar, social media cards, or newsletter preview

## What You Need To Provide
**Required:** The full article text (or the section from which pull quotes should be drawn).

**Optional:** The number of pull quotes needed (defaults to 3); maximum character count per quote (for layout constraints); whether the piece is print, digital, or social (affects selection criteria); any passages the editor has already flagged as candidates.

## How Claude Approaches This
1. **Reads for standalone impact.** Scans the article for sentences or short passages that make sense out of context — a reader glancing at the pull quote in a layout should understand its meaning and feel compelled to read the surrounding text. Eliminates any sentence that requires the previous paragraph to make sense.

2. **Prioritises by type.** Ranks candidates using a hierarchy: vivid declarative statements > surprising facts or statistics > memorable attributed quotes > strong opinion or analysis. Avoids selecting generic transitions, hedged claims, or sentences that summarise rather than provoke.

3. **Checks for distribution.** Ensures the selected quotes are drawn from different sections of the article — not clustered in the opening or closing paragraphs. For a three-quote selection in a 2,000-word piece, aims for one from the first third, one from the middle, and one from the final third.

4. **Trims for layout.** If a strong candidate exceeds the character limit, offers a trimmed version that preserves the core impact. Marks any trimmed quotes with "[...]" where words were removed. Never changes the meaning or misrepresents the original.

5. **Flags attribution.** For each selected quote, notes whether it is the journalist's own prose or an attributed quote from a source — layout teams often need to know this for formatting (quotation marks, attribution lines).

## Output Format
A ranked list of 3-5 pull-quote candidates. Each entry includes: rank number, the quote text (trimmed if needed), character count, the paragraph or section it comes from, whether it is authorial prose or an attributed source quote, and a one-line rationale for why it works as a pull quote. No rewriting of the original text — selections are extracted verbatim or trimmed with ellipses only.

```
**1.** "Quote text here." (87 characters)
*Source: Para 4 — Authorial prose*
Why: [One sentence explaining standalone impact.]

**2.** "Quote text here." (102 characters)
*Source: Para 9 — Attributed to [Name]*
Why: [One sentence explaining standalone impact.]
```

## Quality Criteria
- [ ] Every selected quote makes sense without reading the surrounding paragraphs
- [ ] Quotes are drawn from different sections of the article, not clustered together
- [ ] Character counts are accurate and respect any stated layout constraints
- [ ] No quote is rewritten — all are verbatim or trimmed with ellipses
- [ ] Attribution type (authorial prose vs. source quote) is correctly identified for each selection
- [ ] Rationale explains why the quote works visually and editorially, not just that it is "good"
- [ ] The top-ranked quote is genuinely the strongest standalone line in the piece

## Example

### Input
**Number of quotes needed:** 3
**Max character count:** 120 characters
**Article excerpt (680 words):**

---

The river had not flooded in living memory, which is precisely why nobody was prepared when it did. On the morning of September 14, residents of three low-lying neighbourhoods woke to find water at their doorsteps — not from rain, which had been modest, but from a surge caused by an upstream dam release that local authorities had approved without public notice.

"We had forty-five minutes between the first warning and water in our living room," said Elena Marsh, a retired school administrator who has lived on River Road for thirty-one years. "Forty-five minutes to save a lifetime of belongings. You can't do it."

Within hours, more than 600 households were displaced. Emergency shelters at two local schools reached capacity by noon. The regional emergency management agency, which had classified the area as low flood risk on maps last updated in 2019, acknowledged that its risk assessment had not accounted for changes in dam management protocols introduced in 2021.

The disconnect between the official risk classification and the reality on the ground is not unique to this community. A review of flood risk maps across the region found that 40 percent had not been updated in more than five years, despite significant changes in water infrastructure, land use, and rainfall patterns. Experts say the gap between map and reality is widening.

"Flood maps are political documents as much as scientific ones," said Dr. Rafael Henson, a hydrologist at a regional university. "Updating them means telling homeowners their property is worth less and telling local governments their infrastructure spending was inadequate. There is enormous institutional pressure to leave the maps alone."

The cost of the September flooding is still being calculated, but preliminary estimates place direct property damage above $22 million. The longer-term costs — families who will not return, businesses that will not reopen, the erosion of trust between residents and the agencies meant to protect them — are harder to quantify but likely far greater.

---

### Output

**1.** "Flood maps are political documents as much as scientific ones." (63 characters)
*Source: Para 5 — Attributed to Dr. Rafael Henson*
Why: Reframes a technical subject as a power issue in a single declarative sentence — works as a magazine-page stopper without any context needed.

**2.** "Forty-five minutes to save a lifetime of belongings. You can't do it." (71 characters)
*Source: Para 2 — Attributed to Elena Marsh*
Why: Emotional gut-punch with concrete specificity; the short sentences create visual rhythm that reads well in large pull-quote typography.

**3.** "The river had not flooded in living memory, which is precisely why nobody was prepared when it did." (99 characters)
*Source: Para 1 — Authorial prose*
Why: Classic irony structure that sets up the entire article's tension; works as a standalone hook for readers scanning the layout.

## Known Limitations
- Pull-quote selection is partly a visual judgment — what looks striking on a page depends on typography, column width, and surrounding images, none of which this skill can assess. The selections optimise for editorial impact, not visual design.
- For articles that are primarily data-driven or analytical with few vivid sentences, the skill may return candidates that are serviceable but not magnetic. In those cases, the writer may need to craft a dedicated pull quote rather than extract one.
- The skill selects from what exists in the text. If the article lacks strong standalone sentences, the output will reflect that limitation honestly rather than manufacturing impact that is not there.

## Related Skills
- [copy-editor-assistant](copy-editor-assistant.md) — clean up the article before selecting pull quotes
- [text-condenser](text-condenser.md) — shorten passages if pull-quote candidates are too long for layout
- [structure-checker](structure-checker.md) — verify the article's flow before finalising layout decisions
