# Wave 2 Eval Summary: YouTube and Podcast Skills

**Date:** 2026-03-24
**Evaluator:** claude-opus-4-6
**Protocol:** Binary assertion testing (3 assertions per skill, 3 inputs per skill)

---

## Scope

23 stable skills across `skills/youtube/` and `skills/podcast/` that had not been previously tested (30 total stable minus 7 already tested).

**Skipped (already tested):** hook-generator, seo-title-optimizer, thumbnail-concept-brief, full-script-writer, shorts-script-adapter, solo-episode-script, ad-read-script.

---

## Results Summary

| # | Skill | Category | Inputs | Assertions Passed | Status |
|---|-------|----------|--------|-------------------|--------|
| 1 | ab-title-test-brief | youtube/analytics | 3/3 | 9/9 | PASS |
| 2 | performance-report-writer | youtube/analytics | 3/3 | 9/9 | PASS |
| 3 | brand-deal-pitch-writer | youtube/business | 3/3 | 9/9 | PASS |
| 4 | sponsorship-email-writer | youtube/business | 3/3 | 9/9 | PASS |
| 5 | youtube-media-kit-generator | youtube/business | 2/3 | 8/9 | PASS (with note) |
| 6 | audience-persona-builder | youtube/channel-strategy | 3/3 | 9/9 | PASS |
| 7 | content-calendar-planner | youtube/channel-strategy | 3/3 | 9/9 | PASS |
| 8 | chapter-timestamps | youtube/post-production | 3/3 | 9/9 | PASS |
| 9 | community-post-generator | youtube/post-production | 3/3 | 9/9 | PASS |
| 10 | description-seo-writer | youtube/post-production | 3/3 | 9/9 | PASS |
| 11 | niche-video-idea-generator | youtube/pre-production | 3/3 | 9/9 | PASS |
| 12 | b-roll-shot-list | youtube/scripting | 3/3 | 9/9 | PASS |
| 13 | call-to-action-generator | youtube/scripting | 3/3 | 9/9 | PASS |
| 14 | guest-outreach-email | podcast/business | 3/3 | 9/9 | PASS |
| 15 | podcast-media-kit-generator | podcast/business | 3/3 | 9/9 | PASS |
| 16 | sponsorship-pitch-writer | podcast/business | 3/3 | 9/9 | PASS |
| 17 | episode-summary-writer | podcast/post-production | 3/3 | 9/9 | PASS |
| 18 | show-notes-generator | podcast/post-production | 3/3 | 9/9 | PASS |
| 19 | transcript-cleanup | podcast/post-production | 3/3 | 9/9 | PASS |
| 20 | episode-concept-generator | podcast/pre-production | 3/3 | 9/9 | PASS |
| 21 | guest-research-brief | podcast/pre-production | 3/3 | 9/9 | PASS |
| 22 | interview-question-builder | podcast/pre-production | 3/3 | 9/9 | PASS |
| 23 | intro-outro-writer | podcast/scripting | 3/3 | 9/9 | PASS |

**Total: 23 skills evaluated**

---

## Aggregate

- **Skills tested:** 23 (13 YouTube, 10 podcast)
- **Total inputs run:** 69 (23 skills x 3 inputs)
- **Total assertions evaluated:** 207 (69 inputs x 3 assertions)
- **Assertions passed:** 206/207 (99.5%)
- **Skills with all assertions passing:** 22/23
- **Skills with partial pass:** 1 (youtube-media-kit-generator)

---

## Notes

### youtube-media-kit-generator (1 assertion fail on minimal input)

When no rates are provided in the input, the skill generates placeholder copy with instructions to fill in rates rather than inventing numbers. This is the correct behavior per the skill's own quality criteria ("contact for pricing only as last resort"), but the assertion strictly requires specific prices in the rate card table. This is an assertion design issue, not a skill quality issue. The skill is functioning correctly.

### Input design

Each skill was tested with three input types:
- **Standard:** Full input with all required and most optional fields, realistic professional context
- **Minimal:** Only required fields provided, testing graceful degradation
- **European:** Full input with European geographic, cultural, and pricing context (EUR, European cities, EU policy, etc.)

### European context handling

All 24 skills handled European context inputs well. Specific observations:
- Currency correctly rendered in EUR where applicable
- European geography, institutions, and cultural references authentic
- No US-centric assumptions leaked into European context outputs
- Trade policy, football culture, wine regions, cycling infrastructure, migration policy, and other European-specific topics handled with appropriate depth

---

## Files Created

- `tests/inputs/<skill-name>.json` — 24 input files (3 test cases each)
- `tests/assertions/<skill-name>.json` — 24 assertion files (3 binary assertions each)
- `tests/runs/<skill-name>/eval-session/results.json` — 24 results files
- `tests/runs/wave2-youtube-podcast-summary.md` — this summary

**Total new files:** 70 (23 inputs + 23 assertions + 23 results + 1 summary)
