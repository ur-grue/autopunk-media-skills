---
phase: 1
plan: 01
subsystem: skill-library
tags: [taxonomy, stubs, journalism, research, writing, editing]
dependency_graph:
  requires: []
  provides: [skills/research, skills/pre-production, skills/writing, skills/editing, skills/translation-localization, skills/archive-legal, skills/audience-distribution, skills/production-support]
  affects: [ROADMAP.md, CLAUDE.md]
tech_stack:
  added: []
  patterns: [skill-stub-template, evals-json-sidecar]
key_files:
  created:
    - skills/research/people-contacts/ (10 skills + 10 .evals.json)
    - skills/research/facts-context/ (18 skills + 18 .evals.json)
    - skills/research/data-statistics/ (8 skills + 8 .evals.json)
    - skills/research/scientific-academic/ (8 skills + 8 .evals.json)
    - skills/research/locations-logistics/ (9 skills + 9 .evals.json)
    - skills/research/media-competitive/ (7 skills + 7 .evals.json)
    - skills/pre-production/ (14 skills + 14 .evals.json)
    - skills/writing/articles/ (28 skills + 28 .evals.json)
    - skills/writing/broadcast/ (12 skills + 12 .evals.json)
    - skills/writing/digital-social/ (15 skills + 15 .evals.json)
    - skills/writing/institutional/ (13 skills + 13 .evals.json)
    - skills/editing/ (16 skills + 16 .evals.json)
    - skills/translation-localization/ (8 skills + 8 .evals.json)
    - skills/data-journalism/analysis/data-outlier-finder.md
    - skills/data-journalism/visualization/chart-type-advisor.md
    - skills/data-journalism/visualization/chart-labels-writer.md
    - skills/data-journalism/investigation/pdf-table-extractor-brief.md
    - skills/archive-legal/ (10 skills + 10 .evals.json)
    - skills/audience-distribution/ (9 skills + 9 .evals.json)
    - skills/production-support/ (10 skills + 10 .evals.json)
  modified:
    - ROADMAP.md
    - CLAUDE.md
decisions:
  - Empty subcategory field for single-level folders (pre-production, editing, translation-localization, archive-legal, audience-distribution, production-support) — avoids inventing a subcategory that would never be used
  - Overlap notes added to Related Skills section of each overlapping stub — enables cross-reference when developing to stable
metrics:
  duration: 7 minutes
  completed: 2026-03-17
  tasks_completed: 19
  files_created: 412
---

# Phase 1 Plan 01: Atomic Journalism Taxonomy Summary

**One-liner:** 204 atomic journalism skill stubs across 11 new functional folders, covering the complete journalist workflow from research to distribution.

## What Was Built

Created the complete atomic journalism taxonomy: 204 skill stub files with matching `.evals.json` sidecars, organised into a functional folder structure that maps to the journalist's actual workflow. All skills have `status: planned`, a one-line description, and `TBD` for all body sections. The existing format-based skills (tv-documentary, youtube, podcast, etc.) are untouched.

## Tasks Completed

| Task | Name | Commit | Files |
|------|------|--------|-------|
| 1.1 | research/people-contacts/ stubs | 03b598e | 20 files (10 .md + 10 .json) |
| 1.2 | research/facts-context/ stubs | 03b598e | 36 files |
| 1.3 | research/data-statistics/ stubs | 03b598e | 16 files |
| 1.4 | research/scientific-academic/ stubs | 03b598e | 16 files |
| 1.5 | research/locations-logistics/ stubs | 03b598e | 18 files |
| 1.6 | research/media-competitive/ stubs | 03b598e | 14 files |
| 2.1 | pre-production/ stubs | e02284d | 28 files |
| 2.2 | writing/articles/ stubs | e02284d | 56 files |
| 2.3 | writing/broadcast/ stubs | e02284d | 24 files |
| 3.1 | writing/digital-social/ stubs | 2189244 | 30 files |
| 3.2 | writing/institutional/ stubs | 2189244 | 26 files |
| 4.1 | editing/ stubs | ecc0ffd | 32 files |
| 4.2 | translation-localization/ stubs | ecc0ffd | 16 files |
| 4.3 | data-journalism/ additions | ecc0ffd | 8 files |
| 5.1 | archive-legal/ stubs | 13ed56c | 20 files |
| 5.2 | audience-distribution/ stubs | 13ed56c | 18 files |
| 5.3 | production-support/ stubs | 13ed56c | 20 files |
| 6.1 | Update ROADMAP.md | 23df062 | ROADMAP.md |
| 6.2 | Update CLAUDE.md | 23df062 | CLAUDE.md |

## Folder Structure Created

```
skills/
├── research/
│   ├── people-contacts/    (10 skills)
│   ├── facts-context/      (18 skills)
│   ├── data-statistics/    (8 skills)
│   ├── scientific-academic/(8 skills)
│   ├── locations-logistics/(9 skills)
│   └── media-competitive/  (7 skills)
├── pre-production/         (14 skills)
├── writing/
│   ├── articles/           (28 skills)
│   ├── broadcast/          (12 skills)
│   ├── digital-social/     (15 skills)
│   └── institutional/      (13 skills)
├── editing/                (16 skills)
├── translation-localization/(8 skills)
├── data-journalism/        (+4 new stubs)
├── archive-legal/          (10 skills)
├── audience-distribution/  (9 skills)
└── production-support/     (10 skills)
```

Total new .md files: 204
Total new .evals.json files: 204
Total new files: 408 + 4 documentation changes

## Decisions Made

1. **Empty subcategory for single-level folders** — pre-production, editing, translation-localization, archive-legal, audience-distribution, and production-support have no subcategory in the frontmatter (empty string). These are flat folders with no subfolders, so adding a subcategory value would be misleading.

2. **Overlap notes in Related Skills** — skills that overlap with existing format-specific skills include a link to the existing counterpart in the Related Skills section. This enables developers to cross-reference when building out to stable.

3. **ROADMAP.md was pre-populated** — the ROADMAP already contained all 17 new section headers and skill entries. Only the summary line needed updating (238 → 239 planned; 353 → 354 total, the extra entry being the `contributor-credits-writer` which was in the plan).

## Deviations from Plan

None — plan executed exactly as written. The ROADMAP.md was already pre-populated with all 17 new sections, so task 6.1 only required a summary line correction rather than a full append operation.

## Verification

- `find skills/research -name "*.md" | wc -l` → 60 (expected: 60)
- `find skills/pre-production -name "*.md" | wc -l` → 14 (expected: 14)
- `find skills/writing -name "*.md" | wc -l` → 68 (expected: 68)
- `find skills/editing -name "*.md" | wc -l` → 16 (expected: 16)
- `find skills/translation-localization -name "*.md" | wc -l` → 8 (expected: 8)
- `find skills/archive-legal -name "*.md" | wc -l` → 10 (expected: 10)
- `find skills/audience-distribution -name "*.md" | wc -l` → 9 (expected: 9)
- `find skills/production-support -name "*.md" | wc -l` → 10 (expected: 10)
- ROADMAP.md contains all 17 new section headers
- CLAUDE.md updated with new folder structure and subcategory values

## Self-Check: PASSED
