---
name: structure-checker
status: stable
category: magazine-journalism
subcategory: editing
version: 1.0
eval_score: 4.50
tags: [journalism, editing, structure, flow, organization, architecture]
---

# Structure Checker

## What This Skill Does
Analyses a draft article's structural architecture — paragraph order, logical flow, redundancies, and pacing — and returns a diagnostic report with specific reordering, cutting, or restructuring recommendations.

## When To Use This Skill
- A draft feels "off" but you cannot pinpoint why — it may be a structural problem rather than a prose problem
- An article has been through multiple revisions and the original architecture has drifted
- You are editing a long-form piece (2,000+ words) and want to verify the structural logic before line-editing
- A writer has submitted a draft where the information is solid but the organisation is unclear

## What You Need To Provide
**Required:** The full draft text.

**Optional:** The intended article type (news report, feature, investigative, opinion, profile, explainer) — this affects what structural conventions Claude evaluates against; specific concerns (e.g., "the middle section feels slow," "I'm not sure the ending works"); the target publication or audience, if relevant to structure expectations.

## How Claude Approaches This
1. **Maps the architecture.** Reads the full draft and creates a paragraph-by-paragraph outline: what each paragraph does (introduces, provides evidence, quotes a source, transitions, contextualises, concludes). This map reveals the skeleton of the piece without the distraction of prose quality.

2. **Evaluates against structural conventions.** Checks the draft against the conventions for its article type. For news: inverted pyramid, most important information first, attribution high. For features: narrative arc, scene-setting, tension and resolution. For investigative: evidence-claim-evidence structure, source diversity, clear separation of fact and analysis. For opinion: thesis stated early, evidence marshalled logically, counterarguments addressed, strong close.

3. **Flags structural problems.** Identifies specific issues: paragraphs that are out of logical order; redundant passages that make the same point twice; sections where the energy drops (typically where context or background is front-loaded instead of distributed); missing transitions that leave the reader stranded between ideas; endings that arrive too suddenly or trail off.

4. **Recommends specific fixes.** For each flagged issue, provides a concrete recommendation: "Move paragraph 7 to follow paragraph 3 — it provides the evidence that paragraph 3's claim needs," or "Cut paragraph 12 — it restates the point made in paragraph 8 without adding new information." Recommendations are actionable, not vague ("consider restructuring the middle section").

5. **Provides a restructured outline.** After the diagnostic, offers a suggested paragraph order as a numbered list. The writer can compare this to the current order and decide which moves to make.

## Output Format
Three sections. First: a structural map (one line per paragraph summarising its function). Second: a flagged-issues list with specific recommendations, ordered by priority (most impactful structural fix first). Third: a suggested revised paragraph order. Ends with a one-line overall assessment of the draft's structural health (e.g., "Sound architecture with two significant ordering issues" or "Needs substantial restructuring — the information is strong but the current sequence works against it").

```
**Structural Map**
- Para 1: [Function]
- Para 2: [Function]
- ...

**Issues & Recommendations** (ordered by priority)
1. [Issue] → [Specific recommendation]
2. [Issue] → [Specific recommendation]

**Suggested Paragraph Order:** 1, 2, 5, 3, 4, 6, 8, 7, 9

**Overall Assessment:** [One sentence]
```

## Quality Criteria
- [ ] Structural map accurately describes what each paragraph does — not what it says, but its function
- [ ] Flagged issues are genuine structural problems, not prose-level complaints dressed up as structural ones
- [ ] Every recommendation is specific and actionable — paragraph numbers, directions, rationale
- [ ] Recommendations respect the conventions of the stated article type
- [ ] The suggested paragraph order is a genuine improvement, not a minor reshuffling that changes nothing
- [ ] The overall assessment is honest — does not flatter a structurally weak draft or over-criticise a sound one
- [ ] The skill does not rewrite any prose — it diagnoses and recommends, leaving the writing to the writer

## Example

### Input
**Article type:** Feature
**Concern:** "The piece doesn't build momentum — it feels like it stalls in the middle."
**Draft (6 paragraphs, 480 words):**

---

[1] When the last commercial fishing boat left the harbour in October, nobody on the quay expected it to return. The fleet that once numbered forty-two vessels was down to one, and the economics that had sustained generations of fishing families had finally collapsed.

[2] The town of approximately 8,000 people sits on a stretch of coastline that has seen its population decline by 22 percent over the past two decades. Young people leave for the regional capital. Businesses close. The pattern is familiar across dozens of similar communities.

[3] Maria Campos, who runs the town's last fish market, said she had seen the decline coming for years. "Every season, fewer boats. Every year, fewer customers. You don't need an economist to read those numbers."

[4] The fishing industry in the region has been affected by a combination of factors: overfishing in previous decades that depleted key stocks, rising fuel costs, increasing regulation, and competition from industrial trawlers operating further offshore. A government report published in 2024 estimated that small-scale coastal fishing was no longer economically viable without subsidy in 78 percent of communities surveyed.

[5] But something unexpected has happened in the months since the last boat left. A group of former fishing workers, led by Campos, has begun converting the harbour's disused processing facility into a marine research and tourism centre. The project, funded partly by a regional development grant and partly by a crowdfunding campaign that raised $180,000 in six weeks, aims to open by next summer.

[6] "We're not pretending fishing is coming back," Campos said. "We're asking what else the sea can give us."

---

### Output

**Structural Map**
- Para 1: Scene-setting — establishes the central event (last boat leaving) and the emotional stakes
- Para 2: Background context — demographic and economic decline statistics
- Para 3: Source quote — Maria Campos confirms the decline from a personal perspective
- Para 4: Explanatory context — systemic causes of the fishing industry's collapse
- Para 5: Narrative turn — introduces the unexpected development (harbour conversion project)
- Para 6: Closing quote — Campos frames the forward-looking theme

**Issues & Recommendations** (ordered by priority)

1. **Momentum stall between paras 2-4.** Three consecutive paragraphs of decline context (demographic stats, source confirming decline, industry analysis) before the narrative turn in para 5. The reader already understands the situation is bad by the end of para 1 — stacking three more paragraphs of bad news before the pivot delays the tension. → **Move para 5 earlier.** Place it after para 3 so the reader gets the turn before the detailed industry context. This creates a "things fell apart / but then / here's why they fell apart / here's what's next" rhythm instead of the current "things fell apart / things fell apart / things fell apart / but then" pattern.

2. **Para 4 works better as context after the turn.** The government report and systemic analysis read as background exposition in the current position. After the narrative turn, this same information becomes stakes — it tells the reader why what Campos is doing matters and how steep the odds are. → **Move para 4 to follow the new position of para 5**, between the turn and the closing quote.

3. **No issue with paras 1, 3, or 6.** The opening, the personal source quote, and the closing are correctly positioned.

**Suggested Paragraph Order:** 1, 2, 3, 5, 4, 6

**Overall Assessment:** Sound material and a strong opening, but the middle stalls because context is front-loaded before the narrative turn. Moving the pivot point earlier transforms the pacing from a slow decline into a story with forward motion.

## Known Limitations
- Structural analysis works best on drafts of 500+ words. For very short pieces (under 300 words), there may not be enough structural complexity to diagnose — a copy edit or line edit is more useful.
- The skill evaluates structure against editorial conventions, but some writers deliberately break structure for effect. If an unconventional structure is intentional, tell Claude in the input so it evaluates execution rather than flagging the departure as a problem.
- This skill does not evaluate prose quality, factual accuracy, or voice. It diagnoses architecture only. Run copy-editor-assistant and fact-check-prompt separately for those layers.

## Related Skills
- [copy-editor-assistant](copy-editor-assistant.md) — line-level editing after structural issues are resolved
- [text-condenser](text-condenser.md) — cut the piece after restructuring identifies redundant passages
- [text-expander](text-expander.md) — expand sections flagged as underdeveloped in the structural analysis
