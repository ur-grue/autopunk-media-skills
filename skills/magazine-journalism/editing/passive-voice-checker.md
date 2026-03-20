---
name: passive-voice-checker
status: stable
category: magazine-journalism
subcategory: editing
version: 1.0
eval_score: 4.44
tags: [journalism, editing, passive-voice, active-voice, style, clarity]
---

# Passive Voice Checker

## What This Skill Does
Identifies every passive-voice construction in a draft, assesses whether each weakens or serves the prose, and offers active-voice alternatives for those that should be changed — while leaving justified passives alone.

## When To Use This Skill
- You are editing a draft that feels flat or evasive and suspect passive voice is part of the problem
- A style guide requires active voice as the default and you need to verify compliance
- You want a systematic review of voice before submitting a feature, investigation, or opinion piece
- You are coaching a junior writer on active-voice habits and want flagged examples to discuss

## What You Need To Provide
**Required:** The draft text to be reviewed.

**Optional:** The article type (news, feature, opinion, investigative) — this affects how strictly passive voice is treated; your tolerance level ("flag all passives" vs. "flag only those that weaken the prose"); any passages where passive voice is intentional and should not be flagged.

## How Claude Approaches This
1. **Identifies all passive constructions.** Scans the draft for every instance of passive voice — both obvious forms ("was arrested," "has been criticised") and subtler constructions ("is considered to be," "remains unaddressed"). Counts the total and calculates the passive-voice ratio as a percentage of all finite verbs.

2. **Classifies each instance.** Not all passive voice is bad. Assigns each instance to one of three categories:
   - **Weaken — change recommended.** The passive obscures who did what, drains energy from the sentence, or allows the writer to avoid naming a responsible actor. Most common in news and investigative writing where attribution matters.
   - **Neutral — change optional.** The passive is not actively harmful but an active alternative would be slightly stronger. Common in transitions and background paragraphs.
   - **Justified — keep.** The passive is the better choice because the receiver of the action is more important than the actor, the actor is unknown or irrelevant, or the sentence rhythm benefits from the passive construction. Common in science writing and when the subject of the sentence is the story's focus.

3. **Provides active alternatives.** For every "weaken" and "neutral" instance, rewrites the sentence in active voice. The rewrite preserves the original meaning and stays as close to the writer's style as possible. Does not rewrite "justified" instances unless the user requested "flag all passives."

4. **Summarises the pattern.** After the flagged list, provides a brief assessment: the overall passive-voice ratio, whether it is high for the article type, where the passives cluster (often in attribution-heavy or context-heavy paragraphs), and whether the pattern suggests a habit the writer should address.

## Output Format
A numbered list of flagged passive-voice instances, each with the original sentence, the classification (weaken/neutral/justified), and an active-voice alternative where recommended. Followed by a summary with the passive-voice ratio and pattern analysis.

```
**Passive Voice Report**
*Total passive constructions: [N] | Passive-voice ratio: [X]%*

1. **[Weaken]** (Para [N]): "[Original sentence]"
   → Active: "[Rewritten sentence]"

2. **[Justified]** (Para [N]): "[Original sentence]"
   → No change recommended. [Brief reason.]

3. **[Neutral]** (Para [N]): "[Original sentence]"
   → Active (optional): "[Rewritten sentence]"

---
**Pattern Summary:** [2-3 sentences on overall ratio, clustering, and recommendation]
```

## Quality Criteria
- [ ] Every passive-voice construction in the draft is identified — none are missed
- [ ] Classifications (weaken/neutral/justified) are accurate — justified passives are not marked for change, and weakening passives are not excused
- [ ] Active-voice alternatives preserve the original meaning without introducing distortion
- [ ] Rewrites match the writer's style and register — they do not sound like a different author
- [ ] The passive-voice ratio is correctly calculated
- [ ] The pattern summary identifies where passives cluster and whether the ratio is appropriate for the article type
- [ ] "Justified" instances include a brief, specific reason for keeping the passive

## Example

### Input
**Article type:** News report
**Tolerance:** Flag all passives, but distinguish justified from problematic
**Draft (220 words):**

---

A new policy requiring background checks for all volunteer coaches was approved by the city's parks department on Tuesday. The policy was developed over eight months in response to complaints from parents who said the existing vetting process was inadequate.

Under the new rules, all volunteers will be required to undergo a criminal background check and complete a safeguarding course before being permitted to work with children. The cost of the checks will be covered by the department.

The decision was welcomed by the Parents' Coalition, which had campaigned for stricter oversight since 2024. "This is what accountability looks like," said coalition spokesperson Nadine Park. "We were told for years that the system was working. It wasn't."

The parks department said the policy was expected to take effect in September. Officials acknowledged that implementation had been delayed by budget constraints and staffing shortages in the department's human resources division.

---

### Output

**Passive Voice Report**
*Total passive constructions: 9 | Passive-voice ratio: 47%*

1. **[Weaken]** (Para 1): "A new policy requiring background checks for all volunteer coaches was approved by the city's parks department on Tuesday."
   → Active: "The city's parks department approved a new policy on Tuesday requiring background checks for all volunteer coaches."

2. **[Neutral]** (Para 1): "The policy was developed over eight months in response to complaints from parents who said the existing vetting process was inadequate."
   → Active (optional): "The department developed the policy over eight months in response to complaints from parents who said the existing vetting process was inadequate."

3. **[Neutral]** (Para 2): "All volunteers will be required to undergo a criminal background check and complete a safeguarding course before being permitted to work with children."
   → Active (optional): "The new rules require all volunteers to undergo a criminal background check and complete a safeguarding course before working with children."

4. **[Justified]** (Para 2): "The cost of the checks will be covered by the department."
   → No change recommended. The cost is the subject the reader cares about here — leading with it answers the natural question ("who pays?") more directly than "The department will cover the cost."

5. **[Weaken]** (Para 3): "The decision was welcomed by the Parents' Coalition, which had campaigned for stricter oversight since 2024."
   → Active: "The Parents' Coalition, which had campaigned for stricter oversight since 2024, welcomed the decision."

6. **[Weaken]** (Para 3): "We were told for years that the system was working."
   → Active: "Officials told us for years that the system was working." *Note: This is a direct quote — the writer cannot change it. Flag for awareness only.*

7. **[Justified]** (Para 3): "It wasn't."
   → No change recommended. This is not passive voice — it is an active-voice contraction of "it was not [working]." Included for completeness; no flag needed.

8. **[Weaken]** (Para 4): "The policy was expected to take effect in September."
   → Active: "The parks department said the policy would take effect in September."

9. **[Neutral]** (Para 4): "Implementation had been delayed by budget constraints and staffing shortages in the department's human resources division."
   → Active (optional): "Budget constraints and staffing shortages in the department's human resources division had delayed implementation."

---
**Pattern Summary:** At 47%, the passive-voice ratio is high for a news report — most news style guides target under 20%. The passives cluster in paragraph openings, which gives the piece a flat, bureaucratic cadence: things happen but nobody visibly does them. Converting the four "weaken" items to active voice would drop the ratio to approximately 25% and make the reporting feel more direct and authoritative. The two justified passives are correctly deployed and should stay.

## Known Limitations
- The skill flags passive constructions based on grammatical analysis, but the boundary between passive voice and past-participle adjectives is sometimes ambiguous ("the door was closed" — passive action or description of state?). Where ambiguity exists, the skill flags and explains rather than making a definitive call.
- Direct quotes cannot be changed. The skill will flag passive voice within quotes for awareness but clearly marks them as non-editable. The writer must decide whether to paraphrase or keep the quote as-is.
- Passive voice is a stylistic consideration, not an error. Some excellent journalism uses high passive-voice ratios deliberately — particularly in certain investigative or legal-affairs contexts where the passive construction reflects genuine ambiguity about agency. The skill's recommendations should be weighed against editorial judgment.

## Related Skills
- [copy-editor-assistant](copy-editor-assistant.md) — comprehensive line editing that includes but goes beyond voice
- [jargon-flagger](jargon-flagger.md) — another clarity-focused editing pass that pairs well with passive-voice checking
- [house-style-enforcer](house-style-enforcer.md) — check whether your publication's style guide has a specific passive-voice policy
