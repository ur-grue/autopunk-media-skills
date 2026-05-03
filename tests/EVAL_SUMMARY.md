# Eval Summary

*Auto-generated. Last updated: 2026-05-03*

This report summarises the quality scores for every skill that has completed the G-Eval testing process. Only skills that passed are listed here. Scores run from 1 to 5, where 5 is flawless and 4.0 is the minimum acceptable for production use.

**Note (2026-05-03, AUT-23):** A 7th dimension — **Editorial Naturalness** — has been added to the G-Eval framework. The threshold for `stable` is now (overall mean ≥ 4.0 across all 7 dimensions) AND (Editorial Naturalness ≥ 4.0 individually as a hard floor). The Editorial Naturalness column in the table below is populated for the 10 skills baselined under AUT-23 (commit 040690a's lifted set). The remaining 219 stable skills will be baselined on Editorial Naturalness in the next eval round; their column shows `—` until then. No skill currently shows a value below 4.0 on this dimension.

---

## Overall Library Health

| Metric | Value |
|--------|-------|
| Total skills in library | 229 |
| Skills evaluated | 229 |
| Passed (overall mean ≥ 4.0) | 229 |
| Planned (pending evaluation) | 0 |
| Mean score across all stable skills | **4.43 / 5.00** |

All 229 skills have passed G-Eval testing across 15 categories. The library is complete.

---

## Scores By Skill (sorted highest to lowest)

| Skill | Category | Subcategory | Overall | Coherence | Consistency | Fluency | Relevance | Professionalism | Actionability | Editorial Naturalness |
|-------|----------|-------------|---------|-----------|-------------|---------|-----------|-----------------|---------------|----------------------|
| hook-generator | YouTube | Pre-production | **4.78** | 5.0 | 4.3 | 5.0 | 5.0 | 5.0 | 4.3 | — |
| archival-footage-brief | TV documentary | Pre-production | **4.66** | 4.7 | 4.7 | 4.7 | 4.3 | 4.5 | 4.7 | 5.0 |
| statistics-fact-checker | Magazine journalism | Fact-checking | **4.60** | 4.7 | 4.3 | 4.7 | 4.3 | 4.5 | 4.7 | 5.0 |
| investigation-timeline-builder | Magazine journalism | Investigation | **4.60** | 4.7 | 4.3 | 4.7 | 4.3 | 4.5 | 4.7 | 5.0 |
| libel-check-brief | Magazine journalism | Legal | **4.60** | 4.7 | 4.3 | 4.7 | 4.3 | 4.5 | 4.7 | 5.0 |
| character-arc-planner | TV documentary | Development | **4.60** | 4.7 | 4.3 | 4.7 | 4.3 | 4.5 | 4.7 | 5.0 |
| series-bible-generator | TV documentary | Development | **4.60** | 4.7 | 4.3 | 4.7 | 4.3 | 4.5 | 4.7 | 5.0 |
| subject-research-brief | TV documentary | Pre-production | **4.60** | 4.7 | 4.3 | 4.7 | 4.3 | 4.5 | 4.7 | 5.0 |
| source-credibility-brief | Magazine journalism | Fact-checking | **4.54** | 4.7 | 4.3 | 4.3 | 4.3 | 4.5 | 4.7 | 5.0 |
| expert-finder-brief | Magazine journalism | Investigation | **4.54** | 4.7 | 4.3 | 4.3 | 4.3 | 4.5 | 4.7 | 5.0 |
| location-scout-brief | TV documentary | Pre-production | **4.54** | 4.7 | 4.3 | 4.3 | 4.3 | 4.5 | 4.7 | 5.0 |
| claim-verification-checklist | Magazine journalism | Fact-checking | **4.50** | 4.7 | 4.7 | 4.3 | 4.7 | 4.3 | 4.3 | — |
| document-analysis-summary | Magazine journalism | Investigation | **4.50** | 4.7 | 4.7 | 4.7 | 4.3 | 4.3 | 4.3 | — |
| foia-request-writer | Magazine journalism | Investigation | **4.50** | 4.7 | 4.6 | 4.5 | 4.6 | 4.4 | 4.3 | — |
| source-research-brief | Magazine journalism | Investigation | **4.40** | 4.7 | 4.3 | 4.7 | 4.3 | 4.3 | 4.3 | — |

---

## Scores By Dimension (library-wide averages)

These are the average scores across all 229 stable skills, showing which quality dimensions the library currently handles best — and where there is room for improvement.

| Dimension | Library Average | What It Measures |
|-----------|----------------|-----------------|
| Coherence | **4.61** | Well-structured and logically organised |
| Fluency | **4.58** | Natural, readable, professional language |
| Consistency | **4.46** | Free of contradictions and invented facts |
| Relevance | **4.42** | Addresses exactly what was asked — no more, no less |
| Professionalism | **4.39** | Acceptable to an experienced media professional as-is |
| Actionability | **4.30** | Usable directly in production without major revision |
| Editorial Naturalness | **5.00** *(10-skill baseline only)* | Reads like a working professional in the medium, not like generic AI output |

**Key finding:** Coherence and fluency remain the library's strongest dimensions — outputs read well and are logically organised. Actionability remains the lowest-scoring dimension but is closing — the AUT-7 relift round (10 targeted skills) lifted Actionability from 4.0 to 4.7 on each affected skill by adding remediation step patterns, drop-in templates, worked shooting plans, broadcaster-specific language, follow-up questions, platform-specific sourcing tactics, rights-clearance next steps, and site-visit checklists. Library-wide, the gap from Coherence to Actionability has narrowed from 0.62 (initial 15-skill evaluation) to 0.34 (full library evaluation) to 0.31 (post-AUT-7).

**Editorial Naturalness — AUT-23 baseline note:** the 5.00 average above reflects only the 10 skills baselined in AUT-23 (the AUT-7 lifted set). Each scored 5/5 against the rubric in `EVAL_FRAMEWORK.md`, with zero AI-template tells in the canonical example output. This is partly a selection effect — AUT-7 was a careful relift round on already-stable skills — so a 10/10 pass should not be read as evidence the wider library will perform identically. The next eval round will baseline the remaining 219 stable skills on this dimension; that pass is the real signal. See `runs/AUT-23-editorial-naturalness-baseline.json` for per-skill scoring evidence including the strongest piece of genre craft observed in each.

---

## Skills Needing Attention

*All 11 dimension flags from the previous round have been cleared by the AUT-7 relift round (2026-05-02). Every skill that previously scored 4.0 on at least one dimension now scores ≥ 4.3 on every dimension. See `runs/AUT-7-actionability-relift.json` for per-skill before/after scoring.*

No skills currently score below 4.3 on any individual dimension. The next review pass will look for opportunities to lift Relevance — currently the lowest-scoring of the six dimensions library-wide — using the same targeted-revision approach as AUT-7.

**Pattern:** Newer categories (PR/Communications, Screenwriting, Radio/Audio) show stronger Actionability scores than the original batch, and the AUT-7 round retroactively brought the original-batch skills up to the same standard by adding remediation step patterns, drop-in templates, worked examples, follow-up question banks, platform-specific sourcing tactics, broadcaster-specific commissioning language, cost-range qualification rules, rights-clearance next steps, and site-visit checklists. The lesson is general: when a skill scores low on Actionability, the fix is rarely "more guidance" — it is "a structured drop-in artifact the user can paste into their workflow."

---

## What The Scores Mean

For any media professional reading this: a score of 4.0 means the output is good enough to use in production but may need light editing. A score of 4.5 means you can use it largely as-is. A score of 5.0 means it is as good as a skilled human would produce on the first try.

No skill in this library is marked stable unless it has been tested on three varied, realistic inputs and scored by the G-Eval protocol described in `EVAL_FRAMEWORK.md`.

---

*This report covers all 229 stable skills in the library. Every skill has been G-Eval tested with 3 varied inputs and scored across 6 dimensions; 10 skills (the AUT-7 lifted set) have additionally been baselined on the 7th dimension, Editorial Naturalness, under AUT-23. Remaining skills will be baselined on this dimension in the next eval round.*
