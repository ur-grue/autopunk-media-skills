---
phase: 02-priority-skills-stable
plan: 02
subsystem: skills/editing, skills/writing/articles
tags: [editing, proofreading, copy-editing, word-count, clarity, tone, beta]
dependency_graph:
  requires: []
  provides: [proofreader, copy-editor, word-count-reducer, paragraph-clarity-rewriter, tone-rewriter]
  affects: [skills/editing/, skills/writing/articles/]
tech_stack:
  added: []
  patterns: [skill-template-v1.0, change-log-output-pattern, editorial-note-pattern, tone-shift-note-pattern]
key_files:
  created: []
  modified:
    - skills/editing/proofreader.md
    - skills/editing/copy-editor.md
    - skills/writing/articles/word-count-reducer.md
    - skills/writing/articles/paragraph-clarity-rewriter.md
    - skills/writing/articles/tone-rewriter.md
decisions:
  - proofreader uses numbered change log pattern (original / corrected / reason) rather than inline markup — more useful for non-technical authors reviewing changes
  - copy-editor separates edited text from editorial note — substantive issues flagged not silently rewritten, author retains decision authority
  - word-count-reducer example over-compressed to illustrate the edge case where cutting below target is possible — more useful than a clean hit
  - paragraph-clarity-rewriter example uses policy/regulatory text — highest-difficulty clarity case, demonstrates real-world value
  - tone-rewriter cross-linked to caption-writer as a downstream tool — same content, different register workflow
metrics:
  duration_seconds: 224
  completed_date: "2026-03-19"
  tasks_completed: 2
  files_modified: 5
---

# Phase 02 Plan 02: Wave 2 Editing Skills Summary

Five editing skills promoted from `planned` stubs to `beta`-quality drafts — proofreader, copy-editor, word-count-reducer, paragraph-clarity-rewriter, and tone-rewriter — all with complete professional examples, change log or editorial note output patterns, and honest specific limitations.

## Tasks Completed

| Task | Description | Commit | Files |
|------|-------------|--------|-------|
| 1 | Write proofreader and copy-editor skills | 5debd16 | skills/editing/proofreader.md, skills/editing/copy-editor.md |
| 2 | Write word-count-reducer, paragraph-clarity-rewriter, tone-rewriter skills | b7e8b34 | skills/writing/articles/word-count-reducer.md, skills/writing/articles/paragraph-clarity-rewriter.md, skills/writing/articles/tone-rewriter.md |

## Skills Produced

**proofreader.md** — Grammar, spelling, punctuation, and typographical error correction with numbered change log. British English example with 8 specific corrections including homophone error, subject-verb disagreement, and comma splice.

**copy-editor.md** — Style, clarity, and consistency editing with editorial note pattern. Web article example demonstrating tense standardisation, passive voice reduction, and attribution flagging.

**word-count-reducer.md** — Target-based word reduction with word count note. 351-word → 130-word example that illustrates over-compression edge case and explains what to do when the target is exceeded.

**paragraph-clarity-rewriter.md** — Single-paragraph clarity rewriting with diagnosis note. 97-word regulatory policy sentence → 48-word two-sentence rewrite demonstrating buried main clause resolution.

**tone-rewriter.md** — Register adaptation across tone spectrums with tone shift note. Corporate press release → conversational industry newsletter conversion example.

## Output Patterns Established

Three reusable output patterns created across this batch:
- **Change log pattern** (proofreader): numbered list of original / corrected / reason — makes every correction transparent and reviewable
- **Editorial note pattern** (copy-editor): 3–5 bullet points identifying recurring patterns and flagging substantive issues for author decision
- **Tone shift note pattern** (tone-rewriter, paragraph-clarity-rewriter): 2–3 sentence explanation of what was changed and why, with word count comparison

These patterns provide a consistent model for all future editing-class skills.

## Cross-linking Structure

All five skills are linked to each other and to the existing stable skill cluster:
- proofreader → copy-editor (workflow sequence: proofread first, then copy-edit)
- copy-editor → tone-rewriter, paragraph-clarity-rewriter (deeper intervention tools)
- word-count-reducer → copy-editor (complementary reduction methods)
- tone-rewriter → caption-writer (same content, different register — cross-category link)

## Deviations from Plan

None — plan executed exactly as written.

## Self-Check: PASSED

Files confirmed present:
- FOUND: skills/editing/proofreader.md
- FOUND: skills/editing/copy-editor.md
- FOUND: skills/writing/articles/word-count-reducer.md
- FOUND: skills/writing/articles/paragraph-clarity-rewriter.md
- FOUND: skills/writing/articles/tone-rewriter.md

Commits confirmed:
- FOUND: 5debd16 — feat(02-02): write proofreader and copy-editor skills to beta
- FOUND: b7e8b34 — feat(02-02): write word-count-reducer, paragraph-clarity-rewriter, and tone-rewriter skills to beta

Verification:
- 5 files with status: beta (target: 5) — PASS
- 0 files with TBD content (target: 0) — PASS
