---
phase: 02-priority-skills-stable
plan: 03
subsystem: skills/writing/articles, skills/research/people-contacts, skills/research/facts-context
tags: [feature-writing, news-writing, research, sourcing, biography, background-brief, beta]
dependency_graph:
  requires: []
  provides:
    - skills/writing/articles/feature-article-writer.md (beta)
    - skills/writing/articles/news-article-writer.md (beta)
    - skills/research/people-contacts/expert-identifier.md (beta)
    - skills/research/people-contacts/biography-researcher.md (beta)
    - skills/research/facts-context/topic-background-brief.md (beta)
  affects:
    - Plan 02-07 (G-Eval scoring for these 5 skills)
tech_stack:
  added: []
  patterns:
    - Five-part narrative arc template in Output Format (feature writing)
    - Inverted pyramid structural constraint in Output Format (news writing)
    - Structure/criteria generator framing for research skills (prevents hallucination)
key_files:
  created: []
  modified:
    - skills/writing/articles/feature-article-writer.md
    - skills/writing/articles/news-article-writer.md
    - skills/research/people-contacts/expert-identifier.md
    - skills/research/people-contacts/biography-researcher.md
    - skills/research/facts-context/topic-background-brief.md
decisions:
  - Research skills framed as structure/criteria generators to protect G-Eval Consistency scores
  - Output Format specifies named structural templates (five-part arc, inverted pyramid) to prevent open-ended article output
  - expert-identifier produces expert profiles and institutional categories, never named individuals
  - biography-researcher produces a research framework with items to verify, never fabricated biographical facts
  - topic-background-brief organises only the user's provided notes, never adds general knowledge
metrics:
  duration: ~4 minutes
  completed_date: 2026-03-19
  tasks_completed: 2
  files_modified: 5
---

# Phase 02 Plan 03: Wave 3 Feature Writing and Research Skills Summary

Five Wave 3 skills written from planned stubs to beta-ready drafts: two article-writing skills with explicit structural templates and three research skills framed as structure/criteria generators to prevent hallucination.

## Tasks Completed

| Task | Name | Commit | Key Files |
|------|------|--------|-----------|
| 1 | feature-article-writer and news-article-writer | 5debd16 | skills/writing/articles/feature-article-writer.md, skills/writing/articles/news-article-writer.md |
| 2 | expert-identifier, biography-researcher, topic-background-brief | bdb990f | skills/research/people-contacts/expert-identifier.md, skills/research/people-contacts/biography-researcher.md, skills/research/facts-context/topic-background-brief.md |

## What Was Built

**Task 1: Writing skills**

- `feature-article-writer.md` — Long-form feature writing using a five-part arc (hook, context, development, turn, resolution). Output Format explicitly specifies the arc and the "Source Material Used" end note to keep output grounded in provided material. Example: 600-word magazine feature about a photojournalist's 30-year retrospective exhibition.

- `news-article-writer.md` — Hard news using inverted pyramid structure. Lede constrained to 25–35 words. AP-style conventions specified. Example: 350-word warehouse fire news article.

**Task 2: Research skills — structure/criteria generators**

- `expert-identifier.md` — Produces an expert-sourcing strategy: expert profiles, institutional categories, vetting questions, diversity check. Explicitly does NOT name individuals. Example: sourcing strategy for a shift-work health feature.

- `biography-researcher.md` — Produces a research template: items to verify by category, source types, pre-interview questions, red flags. Explicitly does NOT fabricate biographical facts. Example: hospital CEO interview research template.

- `topic-background-brief.md` — Organises user's notes into a structured brief: core facts, timeline, key players, context, open questions, gaps and next steps. Explicitly does NOT add general knowledge beyond what the user provided. Example: urban green space project background brief.

## Decisions Made

**1. Structural templates in Output Format**
The two article-writing skills include explicit structural names (five-part arc, inverted pyramid) in their Output Format section. This directly addresses Risk 3 from RESEARCH.md (open-ended article skills producing unfocused output) and is the primary mechanism for improving G-Eval Relevance and Actionability scores.

**2. Structure/criteria generator framing for research skills**
All three research skills are explicitly framed as tools that produce frameworks, templates, and criteria — not tools that generate facts about real people or topics. The Known Limitations section of each skill states this clearly. This framing protects G-Eval Consistency scores by eliminating the conditions under which Claude would be tempted to hallucinate to fill gaps.

**3. Complete examples at specified word count**
Both article-writing skill examples are complete articles at the specified word counts (600 words for feature, 350 words for news). This is critical for G-Eval Actionability — an abbreviated or placeholder example cannot demonstrate the skill is production-ready.

## Deviations from Plan

None — plan executed exactly as written.

## Self-Check: PASSED

All 5 skill files confirmed present on disk. Both task commits (5debd16, bdb990f) confirmed in git log.
