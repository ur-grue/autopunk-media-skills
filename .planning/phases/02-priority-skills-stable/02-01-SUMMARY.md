---
phase: 02-priority-skills-stable
plan: "01"
subsystem: writing/articles
tags: [skills, writing, journalism, headlines, ledes, summaries, pull-quotes, subheadlines]
dependency_graph:
  requires: []
  provides: [headline-writer-beta, lede-writer-beta, tldr-writer-beta, pull-quote-selector-beta, subheadline-writer-beta]
  affects: [02-05-PLAN.md (G-Eval evaluation of these 5 skills)]
tech_stack:
  added: []
  patterns: [skill-template-v1.0, caption-writer quality bar, beta status with eval_score null]
key_files:
  created: []
  modified:
    - skills/writing/articles/headline-writer.md
    - skills/writing/articles/lede-writer.md
    - skills/writing/articles/tldr-writer.md
    - skills/writing/articles/pull-quote-selector.md
    - skills/writing/articles/subheadline-writer.md
decisions:
  - "5-variant ranked output for headline-writer with per-variant labels and character counts, matching caption-writer depth"
  - "lede-writer supports three lede types (summary, anecdotal, thesis) labelled separately when multiple requested"
  - "pull-quote-selector includes rationale notes per quote — editorial logic, not just the quote text"
  - "subheadline-writer outputs both print deck and web standfirst options to cover the two dominant use cases"
metrics:
  duration_seconds: 216
  tasks_completed: 2
  files_modified: 5
  completed_date: "2026-03-19"
---

# Phase 2 Plan 01: Wave 1 Core Writing Skills Summary

**One-liner:** Five daily-use writing skills written to beta — headline variants with character counts, lede types, 50-75 word TL;DRs, ranked pull quotes with rationale, and paired print/web subheadlines.

## What Was Built

All 5 Wave 1 core writing skills upgraded from `planned` stubs to `beta`-ready drafts, following the caption-writer quality bar (eval_score 4.4). Each skill has all 8 sections fully written, a complete professional-grade example, at least one honest specific limitation, and cross-references to related skills.

### Skills Completed

| Skill | Output Format | Key Design Decision |
|-------|--------------|---------------------|
| headline-writer | 5 variants ranked by editorial purpose, labelled, with character counts | Separate label for each variant type (news, SEO, conflict, feature, social) |
| lede-writer | One lede per type, labelled, with word counts | Supports summary/anecdotal/thesis lede types in a single run |
| tldr-writer | 50-75 word continuous prose, word count displayed | Ends with implication, not recap — closes on "what this means" |
| pull-quote-selector | 3-5 quotes, attribution, rationale, character counts | Rationale note per quote explains editorial value, not just selects |
| subheadline-writer | 2 options (print deck + web standfirst) beneath the headline | Hard rule: no words from headline repeated in subheadline |

## Deviations from Plan

None — plan executed exactly as written. All 5 skills written to the specification in the plan file with full examples and specific limitations.

## Self-Check

### Files exist:
- skills/writing/articles/headline-writer.md — FOUND
- skills/writing/articles/lede-writer.md — FOUND
- skills/writing/articles/tldr-writer.md — FOUND
- skills/writing/articles/pull-quote-selector.md — FOUND
- skills/writing/articles/subheadline-writer.md — FOUND

### Commits exist:
- 6cf7235 — feat(02-01): write headline-writer and lede-writer skills to beta
- 2c5643d — feat(02-01): write tldr-writer, pull-quote-selector, subheadline-writer to beta

## Self-Check: PASSED
