---
phase: 2
slug: priority-skills-stable
status: draft
nyquist_compliant: false
wave_0_complete: false
created: 2026-03-17
---

# Phase 2 — Validation Strategy

> Per-phase validation contract for G-Eval quality sampling during skill development.

---

## Test Infrastructure

| Property | Value |
|----------|-------|
| **Framework** | G-Eval (6-dimension rubric — see tests/EVAL_FRAMEWORK.md) |
| **Config file** | tests/EVAL_FRAMEWORK.md |
| **Quick run command** | `Run G-Eval for [skill-name] — single skill spot check` |
| **Full suite command** | `Run G-Eval for all skills in this wave — all 5 at once` |
| **Estimated runtime** | ~5 minutes per skill (manual rubric scoring) |

---

## Sampling Rate

- **After every skill written:** Run G-Eval for that skill before marking beta
- **After every wave:** Run G-Eval for all 5 wave skills, confirm mean ≥ 4.0 before advancing
- **Before phase complete:** All 20 skills must have `eval_score` ≥ 4.0 in frontmatter
- **Max feedback latency:** 1 skill (never write 2+ skills without eval-ing the first)

---

## Per-Task Verification Map

| Skill | Wave | Category | Test Type | Verification Command | Threshold | Status |
|-------|------|----------|-----------|---------------------|-----------|--------|
| article-lede-writer | 1 | writing/articles | G-Eval | Run G-Eval for article-lede-writer | ≥ 4.0/5 | ⬜ pending |
| headline-generator | 1 | writing/articles | G-Eval | Run G-Eval for headline-generator | ≥ 4.0/5 | ⬜ pending |
| interview-question-generator | 1 | research/people-contacts | G-Eval | Run G-Eval for interview-question-generator | ≥ 4.0/5 | ⬜ pending |
| article-rewriter | 1 | writing/articles | G-Eval | Run G-Eval for article-rewriter | ≥ 4.0/5 | ⬜ pending |
| story-angle-finder | 1 | magazine-journalism/ideation | G-Eval | Run G-Eval for story-angle-finder | ≥ 4.0/5 | ⬜ pending |
| copy-editor-assistant | 2 | editing | G-Eval | Run G-Eval for copy-editor-assistant | ≥ 4.0/5 | ⬜ pending |
| proofreading-pass | 2 | editing | G-Eval | Run G-Eval for proofreading-pass | ≥ 4.0/5 | ⬜ pending |
| quote-selection-editor | 2 | editing | G-Eval | Run G-Eval for quote-selection-editor | ≥ 4.0/5 | ⬜ pending |
| fact-check-checklist | 2 | editing | G-Eval | Run G-Eval for fact-check-checklist | ≥ 4.0/5 | ⬜ pending |
| caption-writer | 2 | writing/articles | G-Eval | Run G-Eval for caption-writer | ≥ 4.0/5 | ⬜ pending |
| topic-background-brief | 3 | research/facts-context | G-Eval | Run G-Eval for topic-background-brief | ≥ 4.0/5 | ⬜ pending |
| expert-identifier | 3 | research/people-contacts | G-Eval | Run G-Eval for expert-identifier | ≥ 4.0/5 | ⬜ pending |
| press-release-writer | 3 | writing/institutional | G-Eval | Run G-Eval for press-release-writer | ≥ 4.0/5 | ⬜ pending |
| newsletter-teaser-writer | 3 | writing/digital-social | G-Eval | Run G-Eval for newsletter-teaser-writer | ≥ 4.0/5 | ⬜ pending |
| social-media-excerpt | 3 | writing/digital-social | G-Eval | Run G-Eval for social-media-excerpt | ≥ 4.0/5 | ⬜ pending |
| show-notes-generator | 4 | podcast/post-production | G-Eval | Run G-Eval for show-notes-generator | ≥ 4.0/5 | ⬜ pending |
| episode-summary-writer | 4 | podcast/post-production | G-Eval | Run G-Eval for episode-summary-writer | ≥ 4.0/5 | ⬜ pending |
| seo-title-optimizer | 4 | youtube/pre-production | G-Eval | Run G-Eval for seo-title-optimizer | ≥ 4.0/5 | ⬜ pending |
| description-seo-writer | 4 | youtube/post-production | G-Eval | Run G-Eval for description-seo-writer | ≥ 4.0/5 | ⬜ pending |
| pitch-treatment-writer | 4 | tv-documentary/development | G-Eval | Run G-Eval for pitch-treatment-writer | ≥ 4.0/5 | ⬜ pending |

*Status: ⬜ pending · ✅ green (≥ 4.0) · ❌ red (< 4.0, needs revision) · ⚠️ borderline (3.8–3.9)*

---

## Wave 0 Requirements

None — no infrastructure setup required. Existing skill stubs are the starting point.
All 20 target skill files exist at `status: planned`. Development is purely generative.

*Existing infrastructure covers all phase requirements.*

---

## Manual-Only Verifications

| Behavior | Requirement | Why Manual | Test Instructions |
|----------|-------------|------------|-------------------|
| Example input/output is professional-grade and usable without editing | All 20 skills | Requires human judgment — no automated prose quality check | Read each skill's Example section. Ask: "Could a working journalist use this output today?" |
| No real-world references (traceable to real productions or employers) | All 20 skills | Requires human review for anonymity rule compliance | Scan Example sections for proper nouns, publication names, real people |
| Limitation is specific and honest (not generic) | All 20 skills | Requires editorial judgment | Read Known Limitations. Reject vague entries like "May not work for all topics" |

---

## Validation Sign-Off

- [ ] All 20 skills have `eval_score` ≥ 4.0 in frontmatter
- [ ] All 20 skills have `status: stable` in frontmatter
- [ ] No skill has placeholder text in any section
- [ ] Every skill Example section contains usable input + output
- [ ] Every skill documents at least one specific limitation
- [ ] No Example section contains traceable real-world references
- [ ] `nyquist_compliant: true` set in frontmatter

**Approval:** pending
