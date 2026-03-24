# Wave 2 — TV Documentary Eval Summary

**Date:** 2026-03-24
**Evaluator:** Claude Opus 4.6 (1M context)
**Scope:** All untested stable skills in `skills/tv-documentary/` (excluding logline-creator, pitch-treatment-writer, commentary-writer, interview-question-generator — tested in Wave 1)
**Method:** 3 binary assertions per skill, tested across 3 inputs each (standard, minimal, European context) = 66 test cases total, 198 assertion checks

---

## Results Table

| # | Skill | Subcategory | Eval Score | Standard | Minimal | European | Overall Pass Rate |
|---|-------|-------------|------------|----------|---------|----------|-------------------|
| 1 | narrator-voice-adapter | scripting | 4.4 | 3/3 | 3/3 | 3/3 | **100%** |
| 2 | scene-breakdown-writer | scripting | 4.4 | 3/3 | 2/3 | 3/3 | **89%** |
| 3 | animated-explainer-script | scripting | 4.44 | 3/3 | 3/3 | 3/3 | **100%** |
| 4 | character-arc-planner | development | 4.4 | 3/3 | 3/3 | 3/3 | **100%** |
| 5 | series-bible-generator | development | 4.4 | 3/3 | 2/3 | 3/3 | **89%** |
| 6 | grant-proposal-writer | business | 4.4 | 3/3 | 2/3 | 3/3 | **89%** |
| 7 | one-sheet-writer | business | 4.5 | 3/3 | 3/3 | 3/3 | **100%** |
| 8 | co-production-brief | business | 4.4 | 3/3 | 2/3 | 3/3 | **89%** |
| 9 | broadcaster-pitch-writer | business | 4.4 | 3/3 | 3/3 | 3/3 | **100%** |
| 10 | location-request-letter | pre-production | 4.47 | 3/3 | 3/3 | 3/3 | **100%** |
| 11 | equipment-list-generator | pre-production | 4.42 | 3/3 | 3/3 | 3/3 | **100%** |
| 12 | archival-footage-brief | pre-production | 4.3 | 3/3 | 3/3 | 3/3 | **100%** |
| 13 | production-schedule-writer | pre-production | 4.3 | 3/3 | 3/3 | 3/3 | **100%** |
| 14 | production-budget-estimator | pre-production | 4.39 | 3/3 | 3/3 | 3/3 | **100%** |
| 15 | call-sheet-writer | pre-production | 4.44 | 3/3 | 3/3 | 3/3 | **100%** |
| 16 | subject-research-brief | pre-production | 4.4 | 3/3 | 3/3 | 3/3 | **100%** |
| 17 | location-scout-brief | pre-production | 4.3 | 3/3 | 3/3 | 3/3 | **100%** |
| 18 | press-kit-generator | post-production | 4.4 | 3/3 | 3/3 | 3/3 | **100%** |
| 19 | transcript-timecoder | post-production | 4.39 | 3/3 | 3/3 | 3/3 | **100%** |
| 20 | rough-cut-notes | post-production | 4.4 | 3/3 | 3/3 | 3/3 | **100%** |
| 21 | subtitles-rewriter | post-production | 4.4 | 3/3 | 3/3 | 3/3 | **100%** |
| 22 | dubbing-script-adapter | localization | 4.5 | 3/3 | 3/3 | 3/3 | **100%** |
| 23 | festival-synopsis-writer | localization | 4.5 | 3/3 | 3/3 | 3/3 | **100%** |

---

## Aggregate Statistics

- **Total skills tested:** 23
- **Total test cases:** 69 (23 skills x 3 inputs)
- **Total assertion checks:** 207 (69 test cases x 3 assertions)
- **Assertions passed:** 203 / 207
- **Assertions failed:** 4 / 207
- **Overall pass rate:** 98.1%

---

## By Subcategory

| Subcategory | Skills Tested | Pass Rate |
|-------------|--------------|-----------|
| scripting | 3 | 96.3% |
| development | 2 | 94.4% |
| business | 4 | 94.4% |
| pre-production | 8 | 100% |
| post-production | 4 | 100% |
| localization | 2 | 100% |

---

## Failures Analysis

**4 assertion failures across 4 test cases — all on "minimal" inputs:**

1. **scene-breakdown-writer / SBW-02 (minimal):** SBW-A2 failed — no target running time was specified in the minimal input, so the assertion "scenes sum to target" could not be evaluated against a user-provided target. The skill behaved correctly by assigning a reasonable estimate. This is an input gap, not a skill defect.

2. **series-bible-generator / SBG-02 (minimal):** SBG-A2 failed — the input described standalone episodes (each following a different self-builder), making a series-wide narrative arc structurally impossible. The skill correctly noted this limitation but could not manufacture an arc that the concept does not support. Input-driven limitation.

3. **grant-proposal-writer / GPW-02 (minimal):** GPW-A2 failed — no funder priorities were provided in the minimal input, so the assertion "uses funder's stated priorities" could not be met. The skill correctly used generic arts-council framing. Input-driven limitation.

4. **co-production-brief / CPB-02 (minimal):** CPB-A2 failed — "equal co-production" was stated without specific percentages, rights, or credit structure. The skill proposed reasonable defaults but could not meet the "specific offer" assertion with specificity when the user did not provide specifics. Input-driven limitation.

**Pattern:** All failures occur on minimal inputs where the user did not provide information the assertion requires. No failures on standard or European context inputs. No skill produced incorrect or misleading output in any test case.

---

## Recommendations

1. **All 23 skills confirm their stable status.** No skill requires a status downgrade.
2. **Minimal input handling is the only weak point.** Consider adding a "minimum viable input" note to each skill's documentation, clarifying which optional fields materially affect output quality.
3. **Pre-production subcategory is the strongest** — 8 skills with 100% pass rate across all input types.
4. **European context inputs perform as well as standard inputs** — skills handle international terminology, currencies, institutions, and cultural registers correctly.
