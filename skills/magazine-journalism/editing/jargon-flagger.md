---
name: jargon-flagger
status: stable
category: magazine-journalism
subcategory: editing
version: 1.0
eval_score: 4.44
tags: [journalism, editing, jargon, accessibility, plain-language, clarity]
---

# Jargon Flagger

## What This Skill Does
Scans a draft and flags every instance of technical jargon, unexplained acronyms, and insider language that a general-audience reader would not understand — with a plain-language alternative for each.

## When To Use This Skill
- You are editing a piece written by a subject-matter expert and need to check it for accessibility before publication
- A draft covers a technical topic (finance, medicine, law, technology, policy) and is aimed at a general readership
- You want to verify that a piece meets plain-language standards before sending it to an editor
- You are adapting a specialist report or press release into a consumer-facing article

## What You Need To Provide
**Required:** The draft text to be reviewed.

**Optional:** The target audience's assumed knowledge level (e.g., "general newspaper reader," "informed but non-specialist," "industry audience who knows the basics"); the subject domain (helps calibrate what counts as jargon vs. common knowledge in that field); any terms you have already decided to keep and do not want flagged.

## How Claude Approaches This
1. **Establishes the knowledge baseline.** Determines what a reader of the stated audience would reasonably be expected to understand. For a general newspaper reader, terms like "GDP" or "DNA" are assumed known; "quantitative easing" or "epigenetics" are not. For an informed-but-non-specialist audience, the threshold is higher. If no audience is specified, defaults to a general magazine reader.

2. **Scans for three categories.** Flags items in three tiers:
   - **Jargon** — technical terms from a specific field used without definition (e.g., "amortisation," "comorbidity," "arbitrage")
   - **Unexplained acronyms** — acronyms used before being spelled out, or never spelled out at all (e.g., "EBITDA," "RCT," "FOIA")
   - **Insider language** — phrases that are not technically jargon but assume familiarity with a specific world (e.g., "above the fold," "the C-suite," "discovery phase")

3. **Provides alternatives.** For each flagged term, offers a plain-language replacement or a brief definition that could be inserted parenthetically. Does not rewrite the surrounding sentence — provides the replacement term only so the writer can integrate it in their own voice.

4. **Assesses overall accessibility.** After the item list, gives a brief verdict: how jargon-heavy the piece is relative to its intended audience, and whether the flagged items are concentrated in one section or distributed throughout.

## Output Format
A numbered list of flagged items, each formatted with the term, its category, its location in the text, and a plain-language alternative. Followed by a brief accessibility verdict. No rewriting of full passages — alternatives are targeted replacements or parenthetical definitions.

```
**Jargon Report**
*Audience baseline: [stated or assumed audience]*

1. **"[term]"** (Para [N]) — [Jargon / Acronym / Insider language]
   → Plain alternative: "[replacement or definition]"

2. **"[term]"** (Para [N]) — [Jargon / Acronym / Insider language]
   → Plain alternative: "[replacement or definition]"

---
**Accessibility Verdict:** [2-3 sentences on overall jargon density and distribution]
```

## Quality Criteria
- [ ] Every genuinely inaccessible term is flagged — no significant jargon is missed
- [ ] No terms are flagged that a reasonable reader of the stated audience would already know
- [ ] Plain-language alternatives are accurate — they do not oversimplify to the point of changing the meaning
- [ ] Categories (jargon, acronym, insider language) are correctly assigned
- [ ] Location cues are specific enough to find each term in the draft
- [ ] The accessibility verdict is calibrated to the actual density — does not overstate or understate the problem
- [ ] Alternatives are offered as replacements, not as rewrites of surrounding sentences

## Example

### Input
**Audience:** General newspaper reader
**Domain:** Healthcare policy
**Draft (280 words):**

---

The government's new primary care strategy relies heavily on expanding the role of NPs and PAs in underserved areas. The plan, which was developed after extensive stakeholder engagement, proposes shifting a significant portion of patient encounters from GPs to mid-level providers — a move that the BMA has described as "workforce substitution dressed up as innovation."

Proponents argue that task-shifting is a proven approach in global health systems. The WHO has documented its effectiveness in LMICs, and several high-income countries have expanded scope of practice for non-physician clinicians with positive outcomes for patient throughput and cost-per-encounter metrics.

Critics counter that the evidence base is weaker than proponents suggest. A recent systematic review found that while patient satisfaction scores were comparable, clinical outcomes data was heterogeneous and the studies had significant risk of bias. The review's authors cautioned against extrapolating from controlled pilot programmes to national rollout.

The strategy also includes provisions for integrated care pathways and a new outcomes-based commissioning framework that would tie provider reimbursement to QALYs rather than volume of service. Health economists say this represents a fundamental shift from fee-for-service to value-based care, but implementation will require significant investment in health informatics infrastructure and interoperability standards.

---

### Output

**Jargon Report**
*Audience baseline: General newspaper reader*

1. **"NPs and PAs"** (Para 1) — Acronym
   → Plain alternative: "nurse practitioners and physician associates" (spell out on first use)

2. **"stakeholder engagement"** (Para 1) — Insider language
   → Plain alternative: "consultation with doctors, nurses, patient groups, and health officials"

3. **"mid-level providers"** (Para 1) — Jargon
   → Plain alternative: "nurses and other non-doctor clinicians" or define briefly on first use

4. **"BMA"** (Para 1) — Acronym
   → Plain alternative: Spell out as "British Medical Association" on first use

5. **"task-shifting"** (Para 2) — Jargon
   → Plain alternative: "moving certain medical tasks from doctors to other qualified health workers"

6. **"LMICs"** (Para 2) — Acronym
   → Plain alternative: "low- and middle-income countries"

7. **"scope of practice"** (Para 2) — Jargon
   → Plain alternative: "the range of procedures and treatments they are allowed to perform"

8. **"patient throughput"** (Para 2) — Jargon
   → Plain alternative: "the number of patients seen"

9. **"cost-per-encounter metrics"** (Para 2) — Jargon
   → Plain alternative: "the cost of each patient visit"

10. **"systematic review"** (Para 3) — Jargon
    → Plain alternative: "a study that analysed all available research on the topic"

11. **"heterogeneous"** (Para 3) — Jargon
    → Plain alternative: "varied and inconsistent"

12. **"risk of bias"** (Para 3) — Jargon
    → Plain alternative: "flaws in how the studies were designed"

13. **"integrated care pathways"** (Para 4) — Jargon
    → Plain alternative: "coordinated treatment plans that connect different parts of the health system"

14. **"outcomes-based commissioning framework"** (Para 4) — Jargon
    → Plain alternative: "a funding model that pays providers based on patient health results"

15. **"QALYs"** (Para 4) — Acronym
    → Plain alternative: "quality-adjusted life years — a measure of how much a treatment improves a patient's health and lifespan"

16. **"fee-for-service"** (Para 4) — Jargon
    → Plain alternative: "paying doctors per appointment or procedure"

17. **"value-based care"** (Para 4) — Jargon
    → Plain alternative: "a model that rewards keeping patients healthy rather than treating them repeatedly"

18. **"health informatics infrastructure"** (Para 4) — Jargon
    → Plain alternative: "digital record-keeping and data-sharing systems"

19. **"interoperability standards"** (Para 4) — Jargon
    → Plain alternative: "rules that allow different computer systems to share patient information"

---
**Accessibility Verdict:** This draft is heavily jargon-laden — 19 flagged terms across 280 words, or roughly one inaccessible term every 15 words. The density increases sharply in paragraphs 2 and 4, which read as specialist policy language rather than journalism. For a general newspaper reader, the piece would need substantial de-jargoning; for an informed policy audience, approximately half these terms could be retained with brief definitions on first use.

## Known Limitations
- The skill calibrates to the stated audience, but "general reader" is imprecise. What counts as common knowledge varies by country, region, and the specific readership of a publication. When in doubt, err on the side of flagging more rather than fewer terms.
- Plain-language alternatives necessarily lose some precision. "Systematic review" and "a study that analysed all available research" are not identical in meaning to an expert. The skill prioritises reader comprehension over technical exactness — the writer must decide where precision is essential.
- The skill flags terminology but does not assess whether the underlying concepts are explained well. A piece can use no jargon and still be incomprehensible if the ideas are poorly structured. For that, run structure-checker.

## Related Skills
- [copy-editor-assistant](copy-editor-assistant.md) — catch grammar and style issues alongside jargon
- [house-style-enforcer](house-style-enforcer.md) — check terminology against a publication's approved vocabulary
- [structure-checker](structure-checker.md) — diagnose clarity problems that go beyond terminology
