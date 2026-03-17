# Phase 2: priority-skills-stable - Research

**Researched:** 2026-03-17
**Domain:** Skill authorship and G-Eval quality process for atomic journalism skills
**Confidence:** HIGH

---

## Summary

Phase 2 requires taking 20 skill stubs from `status: planned` (all fields TBD) to `status: stable` (G-Eval mean ≥ 4.0/5, complete example, documented limitations). All 204 stubs were created in Phase 1. The repository already contains fully developed stable skills in `social-media/`, `radio-audio/`, and `media-business/` categories — these are the authoritative quality reference for what a complete skill looks like.

The key insight: every stub currently has only a one-line "What This Skill Does" entry and TBD everywhere else. The development work is entirely generative — writing six sections from scratch for each skill, then running a structured self-eval. No file parsing, no data pipelines. The bottleneck is prose quality and example realism, not technical complexity.

The 20 skills to prioritise should be selected by cross-format utility (useful to journalists AND YouTube creators AND podcast producers), clear eval criteria (the output is either good journalism or it isn't), and low hallucination risk (skills that transform provided input rather than generate facts Claude doesn't have).

**Primary recommendation:** Develop skills in batches of 5 within a wave. Write all five, then run G-Eval for all five in a second pass. This separation ensures example quality is not compromised by context-switching mid-wave.

---

## Selected 20 Priority Skills

Selection criteria applied:
- **Cross-format utility**: useful across journalism, TV, YouTube, podcast, magazine
- **Low hallucination risk**: transforms user-provided input rather than generating external facts
- **Clear eval criteria**: output quality is objectively assessable
- **High daily-use frequency**: these are tasks media professionals perform multiple times per week
- **Stub readiness**: stubs exist with correct frontmatter, just need content written

### Ranked Priority List

| Rank | Skill | Path | Why Priority |
|------|-------|------|--------------|
| 1 | `headline-writer` | `writing/articles/` | Every media format needs headlines. Clear success criteria. No fact invention required. |
| 2 | `lede-writer` | `writing/articles/` | The hardest single paragraph in journalism. Cross-format (articles, newsletters, podcast descriptions). |
| 3 | `interview-question-catalogue` | `pre-production/` | Universal pre-production task. TV, podcast, magazine, radio all use this. |
| 4 | `topic-background-brief` | `research/facts-context/` | First task before any story. Works on user-provided topic summary. Clear structure. |
| 5 | `proofreader` | `editing/` | Used on every piece of content. Transforms user text. Near-zero hallucination risk. |
| 6 | `copy-editor` | `editing/` | Second editing step after proofreading. High daily frequency across all formats. |
| 7 | `tldr-writer` | `writing/articles/` | Newsletters, web articles, social posts all need summaries. Simple input/output pair. |
| 8 | `show-notes-generator` | `podcast/post-production/` | Extremely high-volume task. Podcast market is large. Existing stable skills in podcast category. |
| 9 | `social-media-excerpt` | `magazine-journalism/distribution/` | Bridges long-form to social. Used by journalists, magazines, newsrooms. |
| 10 | `pull-quote-selector` | `writing/articles/` | Used in every print/web article. Input is the article; output is 3–5 selected quotes. No invention. |
| 11 | `word-count-reducer` | `writing/articles/` | Universal editing task. Clear success criteria: same meaning, fewer words. |
| 12 | `feature-article-writer` | `writing/articles/` | Core long-form journalism skill. High impact, broad appeal. |
| 13 | `news-article-writer` | `writing/articles/` | Hard news writing. Fundamental journalism skill. Clear inverted-pyramid structure. |
| 14 | `expert-identifier` | `research/people-contacts/` | Pre-interview research. Used across all formats when sourcing experts. |
| 15 | `biography-researcher` | `research/people-contacts/` | Pre-interview prep. Used every time someone interviews a named subject. |
| 16 | `paragraph-clarity-rewriter` | `writing/articles/` | Targeted editing task. Works on user-supplied text. No invention risk. |
| 17 | `tone-rewriter` | `writing/articles/` | Adapts finished copy for different contexts/audiences. Cross-format utility. |
| 18 | `subheadline-writer` | `writing/articles/` | Complements headline-writer. Used in every digital article. |
| 19 | `photo-caption-writer` | `writing/articles/` | Used by print, digital, social teams. Clear format. Inputs are image description + context. |
| 20 | `fact-check-prompt` | `magazine-journalism/editing/` | High-stakes journalism task. Transforms article into structured checklist. No fact invention. |

**Rationale for exclusions:**
- Data-journalism skills excluded — they require CSV/dataset inputs that create complex examples
- Translation skills excluded — output quality is language-dependent and harder to eval in English
- Legal/rights skills excluded — correctness depends on jurisdiction, high hallucination risk
- Image-prompting skills excluded — output quality depends on image generation tools Claude can't run

---

## Skill Development Process

### The Three-State Gap

All 20 target skills currently look like this:

```markdown
---
name: headline-writer
status: planned
eval_score: null
tags: []
---

# Headline Writer

## What This Skill Does
Write a headline for an article.

## When To Use This Skill
TBD
[... all other sections: TBD]
```

A stable skill must look like the `caption-writer` or `bulletin-script-writer` reference examples: every section fully written with specific, actionable content, a complete professional example, and an eval_score in frontmatter.

### Step-by-Step: planned → draft → beta → stable

**Step 1 — Draft the skill (planned → draft)**

Write all eight sections:
1. `What This Skill Does` — one precise sentence (replace the vague placeholder)
2. `When To Use This Skill` — 3–5 specific trigger conditions, not generic
3. `What You Need To Provide` — Required and Optional fields clearly separated
4. `How Claude Approaches This` — 3–4 numbered steps describing Claude's reasoning process
5. `Output Format` — Length, structure, tone, language register, formatting specifics
6. `Quality Criteria` — 4–6 checkboxes a reviewer can actually verify
7. `Example` — One complete Input/Output pair (professional-grade, generic, no real org references)
8. `Known Limitations` — At least one honest, specific limitation
9. Update `tags` in frontmatter with 4–6 relevant tags
10. Set `status: draft`

**Step 2 — Self-review (draft → beta)**

Before running G-Eval, verify:
- The example output could be used in a real newsroom without editing
- No placeholder text remains (no TBD, no [FILL IN], no example.com)
- The limitation is honest and specific, not generic ("AI may make mistakes")
- The output format section specifies actual word counts or length targets
- Set `status: beta`

**Step 3 — Run G-Eval (beta → stable or back to draft)**

G-Eval procedure (from `tests/EVAL_FRAMEWORK.md`):
1. Generate 3 test outputs using varied, realistic inputs (different topic, format, complexity)
2. Score each output on 6 dimensions, 1–5 integer scale
3. Calculate per-test-case mean, then overall mean
4. If overall mean ≥ 4.0: set `status: stable`, set `eval_score: [mean]`
5. If overall mean < 4.0: identify lowest-scoring dimension, revise that section, re-run

**Step 4 — Update records**

- Update `.evals.json` file for the skill with test case data
- Update ROADMAP.md status entry for the skill
- Commit with message: `test: G-Eval [skill-name] — score X.X/5, marked stable`

---

## G-Eval Protocol Summary

### The Six Dimensions

| Dimension | What It Measures | Failure Mode |
|-----------|-----------------|--------------|
| Coherence | Logical structure and clear progression | Jumbled ordering, missing transitions |
| Consistency | Faithful to input, no invented facts | Adding details not in the brief, contradicting input |
| Fluency | Professional, natural prose | Stilted phrasing, mechanical output, awkward constructions |
| Relevance | Exactly what was asked, nothing extraneous | Padding, off-topic context, answering a different question |
| Professionalism | Acceptable to an experienced professional as-is | Amateur phrasing, missing conventions of the medium |
| Actionability | Directly usable in production | Requires major editing, only provides a framework |

### Scoring

- Each dimension scored 1–5 (integer only, no half-points)
- Per-test-case mean = sum of 6 dimension scores / 6
- Overall mean = average of 3 test-case means
- Pass threshold: overall mean ≥ 4.0

### What 4.0 Looks Like In Practice

A skill scoring 4.0 means: on most of the 18 individual scores (3 tests × 6 dimensions), the output is solid but not flawless. Typically this means a mix of 4s and some 5s, with no dimension consistently scoring 3 or below.

A skill that consistently produces a 3 on Actionability — "requires moderate revision" — will fail even if other dimensions score 5. This is by design: the library exists to produce work professionals can use, not frameworks they must rebuild.

### Eval Integrity Rules

- Test inputs must be distinct, not variations of the skill's own example
- Scores are based on output quality, not effort or complexity of the skill
- Failed eval scores stay internal — only the badge and score are public
- Raw `.evals.json` data is committed but not referenced in the skill file itself

---

## Quality Patterns

### What Makes Skills Score Well

**High-scoring skills share these traits (observed in stable skills in repo):**

1. **Output Format section specifies exact length targets.** The `bulletin-script-writer` specifies "150 words per minute × bulletin length." The `caption-writer` specifies "125–200 words" for Instagram. Vague output format instructions produce inconsistent outputs that score poorly on Actionability.

2. **"How Claude Approaches This" describes reasoning, not just steps.** The `caption-writer` explains WHY Instagram rewards warmth and LinkedIn rewards credibility. Skills that only list steps without explaining the judgment behind them produce mechanical output.

3. **Quality Criteria are verifiable checkboxes.** "No generic filler phrases ('check this out,' 'so excited to share')" is verifiable. "Output is high quality" is not. Strong Quality Criteria sections give Claude a checklist that directly prevents the most common failure modes.

4. **Examples are complete, not abbreviated.** The `bulletin-script-writer` example output is 445 words — an actual working script. Abbreviated or summarised examples train users to expect less than the skill can deliver.

5. **Limitations are honest about specific failure conditions.** "Caption quality depends heavily on the quality and specificity of the input" is honest and specific. "Results may vary" is not a limitation.

6. **"Next Step" output structure.** The `caption-writer` ends every output with a "Next Step" note pointing to related skills. This increases Actionability scores because it helps users continue their workflow.

### What Makes Skills Score Poorly

1. **Vague output format** — outputs vary wildly in length and structure, scoring low on Coherence and Actionability
2. **Generic examples** — example output that could apply to any topic signals the skill is not targeted enough
3. **Missing professional conventions** — a headline skill that doesn't specify whether to write news headlines vs. SEO headlines vs. print deck headlines will produce inconsistent output
4. **Over-promising** — skills that claim to "research" information will score low on Consistency when Claude generates plausible-sounding but unverifiable facts
5. **Placeholder limitations** — writing "AI may make errors" instead of a real limitation signals the skill author hasn't thought about the failure modes

### The Consistency Trap

The highest-risk dimension for these 20 skills is **Consistency**. Research skills (expert-identifier, biography-researcher, topic-background-brief) ask Claude to produce factual information. Claude will generate plausible but potentially incorrect facts about real people and topics.

**Mitigation strategy:** Frame research skills as "structure and question generators" rather than "fact generators." The `expert-identifier` skill should produce a structured list of questions to ask and criteria for evaluating experts — not a list of specific named experts with credentials that may be fabricated. The `topic-background-brief` should help structure user-provided notes, not generate background Claude invents.

This framing keeps Consistency scores high because Claude is only organizing information the user provided, not generating information it may not have.

---

## Execution Approach

### Batching Strategy: 4 Waves of 5 Skills

Given the generative nature of the work (writing prose, not code), batching into waves of 5 skills each is optimal. Each wave has two passes:
- Pass A: Write all 5 skill bodies (planned → draft → beta)
- Pass B: Run G-Eval for all 5 skills, update records (beta → stable)

**Wave 1 — Core Writing (5 skills)**
Headline-writer, lede-writer, tldr-writer, pull-quote-selector, subheadline-writer
Rationale: These form a natural cluster — all transform article text into specific outputs. Writing them together allows cross-referencing in Related Skills sections.

**Wave 2 — Editing (5 skills)**
Proofreader, copy-editor, word-count-reducer, paragraph-clarity-rewriter, tone-rewriter
Rationale: All editing skills that operate on user-supplied text. Zero hallucination risk. Highest likelihood of passing eval on first attempt.

**Wave 3 — Feature Writing + Research (5 skills)**
Feature-article-writer, news-article-writer, expert-identifier, biography-researcher, topic-background-brief
Rationale: More complex skills requiring careful framing. Expert-identifier and biography-researcher need the "structure not facts" framing discussed above.

**Wave 4 — Mixed High-Value (5 skills)**
Interview-question-catalogue, social-media-excerpt, photo-caption-writer, show-notes-generator, fact-check-prompt
Rationale: Cross-format utility skills. Show-notes-generator benefits from existing stable podcast category skills as reference. Fact-check-prompt is a high-value journalism safety tool.

### Per-Wave Deliverables

Each wave produces:
- 5 skill `.md` files promoted to `stable`
- 5 `.evals.json` files updated with test case data
- 1 ROADMAP.md update
- 1 commit per pass (2 commits per wave)

### Plan Count

4 waves × 2 passes = 8 tasks minimum, but passes A and B within a wave can be grouped:
- **Plan 02-01**: Wave 1 (core writing) — write + eval all 5
- **Plan 02-02**: Wave 2 (editing) — write + eval all 5
- **Plan 02-03**: Wave 3 (feature + research) — write + eval all 5
- **Plan 02-04**: Wave 4 (mixed) — write + eval all 5

Each plan = one work session. Estimated 20–30 minutes per plan (5 skill drafts + 5 evals with 3 test cases each = 20 outputs scored on 6 dimensions = 120 scoring decisions).

---

## Risks and Mitigations

### Risk 1: Research skills fail Consistency dimension
**What goes wrong:** Expert-identifier generates named experts with plausible but fabricated credentials. Biography-researcher invents quotes or employment history. These score 1–2 on Consistency.
**Mitigation:** Frame all research skills as "structure and criteria" generators, not "fact generators." The skill output should be a research framework the user applies, not facts Claude generated. Specify in "How Claude Approaches This" that the skill works only with user-provided information.

### Risk 2: Example quality bar not met
**What goes wrong:** Examples are written quickly and feel like templates, not real professional output. Eval scores on Professionalism and Actionability drop below 4.0.
**Mitigation:** Write examples last, after all other sections are complete. Each example input should be a specific, realistic scenario (specific publication type, specific topic, specific constraint). Example outputs should be complete and usable — not abbreviated with "[continued...]" markers.

### Risk 3: Feature-article-writer and news-article-writer are too open-ended
**What goes wrong:** These skills produce very long output, and the Output Format section is hard to specify tightly. Coherence and Relevance suffer when Claude writes 800 words in a free-form style.
**Mitigation:** Specify structural templates in the Output Format section (inverted pyramid for news, five-part structure for features). The skill instructs Claude to follow a named structure, not write freely.

### Risk 4: Skills fail eval on first attempt, requiring revision loops
**What goes wrong:** A skill scores 3.7 overall — close but not passing. Multiple revision cycles slow the phase.
**Mitigation:** Use the lowest-scoring dimension from the eval to target the revision. One revision cycle is expected and normal; two should be investigated. If a skill requires three revision cycles, the skill's scope may be too broad and should be narrowed.

### Risk 5: Overlapping skills create redundancy confusion
**What goes wrong:** `headline-writer` (atomic) and `headline-generator` (in `magazine-journalism/ideation/`) are different files. Related Skills links between them must be accurate.
**Mitigation:** During draft phase, check Related Skills links against actual file paths. The atomic taxonomy skills link to format-specific equivalents where they exist, with a brief note on the difference in scope.

### Risk 6: G-Eval subjectivity
**What goes wrong:** Scores shift depending on how strictly the 1–5 rubric is applied. A skill that scored 4.2 in one session might score 3.8 if evaluated more strictly.
**Mitigation:** Use the rubric definitions from `tests/EVAL_FRAMEWORK.md` as the anchor. The rubric is specific: "5 = hand to a colleague without changes" for Professionalism. Apply the rubric literally, not loosely.

---

## Validation Architecture

### Test Framework

| Property | Value |
|----------|-------|
| Framework | G-Eval (manual LLM-as-judge, no external test runner) |
| Config file | `tests/EVAL_FRAMEWORK.md` (the protocol definition) |
| Per-skill run command | Read skill file, generate 3 test outputs, score on 6 dimensions |
| Full phase check | Count skills with `status: stable` and `eval_score >= 4.0` in frontmatter |

### Phase Gate Verification

Before Phase 2 is complete, ALL of the following must be true:

```bash
# Count stable skills in the 20 target paths — must equal 20
grep -rl "status: stable" \
  skills/writing/articles/ \
  skills/editing/ \
  skills/pre-production/ \
  skills/research/facts-context/ \
  skills/research/people-contacts/ \
  skills/podcast/post-production/ \
  skills/magazine-journalism/distribution/ \
  skills/magazine-journalism/editing/ \
  --include="*.md" | wc -l
```

```bash
# Verify no eval_score is null among target skills
grep -r "eval_score: null" \
  skills/writing/articles/headline-writer.md \
  skills/writing/articles/lede-writer.md \
  skills/writing/articles/tldr-writer.md \
  # ... (all 20 target skills)
```

### Per-Skill Verification Checklist

For each of the 20 skills, before marking stable:

- [ ] `status: stable` in frontmatter
- [ ] `eval_score: [X.X]` is a number ≥ 4.0 (not null)
- [ ] `tags` array is populated (not empty `[]`)
- [ ] All sections written — no "TBD" remains anywhere in the file
- [ ] Example has both an Input section and an Output section
- [ ] Output section is complete prose, not a skeleton or outline
- [ ] Known Limitations has at least one specific limitation (not generic)
- [ ] `.evals.json` file for the skill shows `"status": "passed"` and `"overall_mean": >= 4.0`
- [ ] Related Skills links resolve to real files that exist

### Sampling Protocol Per Wave

After completing each wave:
1. Read all 5 skill files — scan for remaining TBD text
2. Run the grep count above for the wave's target paths
3. Verify 5 `.evals.json` files show `"status": "passed"`
4. Spot-check one skill's example output against the Professionalism criterion ("could hand to a colleague without changes")

---

## Code Examples

### Reference: What a Complete Stable Skill Frontmatter Looks Like

```markdown
---
name: headline-writer
status: stable
category: writing
subcategory: articles
version: 1.0
eval_score: 4.3
tags: [journalism, headlines, writing, digital, print, seo]
---
```

### Reference: Output Format Section Pattern (from `bulletin-script-writer`)

Specify exact measurements, not vague descriptors:

```markdown
## Output Format
A clean script with stories separated by clear headings (CUE 1, CUE 2, etc.). Each cue shows: the story slug, estimated duration in seconds, the script copy in double-spaced lines, and a clip label if applicable. Total word count targets 150 wpm × bulletin length. Language is formal but spoken — short sentences, active voice, no subordinate clauses at sentence openings.
```

### Reference: Minimum .evals.json After Passing

```json
{
  "skill_name": "headline-writer",
  "status": "passed",
  "overall_mean": 4.3,
  "test_cases": [
    {
      "id": 1,
      "input_summary": "Breaking news story about local council budget cuts",
      "scores": {
        "coherence": 5,
        "consistency": 5,
        "fluency": 4,
        "relevance": 4,
        "professionalism": 4,
        "actionability": 4
      },
      "case_mean": 4.33
    },
    {
      "id": 2,
      "input_summary": "Feature article on documentary film release",
      "scores": { "coherence": 4, "consistency": 5, "fluency": 4, "relevance": 4, "professionalism": 4, "actionability": 4 },
      "case_mean": 4.17
    },
    {
      "id": 3,
      "input_summary": "Opinion piece on media industry consolidation",
      "scores": { "coherence": 4, "consistency": 4, "fluency": 5, "relevance": 4, "professionalism": 4, "actionability": 5 },
      "case_mean": 4.33
    }
  ]
}
```

---

## State of the Art

| Old Approach | Current Approach | Impact |
|--------------|------------------|--------|
| Skills written ad hoc, no structure | Mandatory 8-section template, every field required | Consistent quality baseline before eval |
| No quality gate | G-Eval ≥ 4.0/5 required for stable badge | Only production-ready skills get the badge |
| Examples as afterthoughts | Examples must be complete, usable without editing | Raises the floor on Actionability dimension |
| Single-format skills | Atomic taxonomy cross-references format-specific skills | Users find the right skill faster |

---

## Open Questions

1. **Should Wave 3 research skills be scoped as "framework only" or attempt fact generation?**
   - What we know: Hallucinated facts kill Consistency scores (score 1–2 vs 5)
   - What's unclear: Whether "framework only" makes the skill less useful to journalists
   - Recommendation: Default to "framework only" for Phase 2. Phase 3 (research-skills-stable) can revisit with retrieval-augmented approaches once the taxonomy is proven

2. **How strict should the Professionalism dimension be applied?**
   - What we know: The rubric says "5 = hand to a colleague without changes"
   - What's unclear: Different journalists have different standards; UK tabloid vs BBC vs academic journal
   - Recommendation: Assume broadsheet/public broadcaster standard (BBC/Guardian level) as the baseline for Professionalism scoring

3. **Should the `fact-check-prompt` skill be framed as a checklist generator or a verification tool?**
   - What we know: Claude cannot verify facts against external sources in a standard session
   - What's unclear: Whether calling it "fact-check-prompt" creates user expectations Claude can't meet
   - Recommendation: Frame explicitly as a "structured checklist generator" — the skill produces a verification checklist for humans to execute, not automated fact verification. Document this clearly in Known Limitations.

---

## Sources

### Primary (HIGH confidence)
- Direct inspection of `tests/EVAL_FRAMEWORK.md` — full G-Eval protocol, 6 dimensions, scoring rubric
- Direct inspection of `skills/social-media/content/caption-writer.md` — reference stable skill, eval_score 4.4
- Direct inspection of `skills/radio-audio/scripting/bulletin-script-writer.md` — reference stable skill, eval_score 4.5
- Direct inspection of `CLAUDE.md` — non-negotiable quality rules, skill format template, status system
- Direct inspection of `skills/writing/articles/headline-writer.md` — confirms all atomic stubs are pure TBD

### Secondary (MEDIUM confidence)
- Grep of all 21 skill categories confirming no atomic taxonomy skills (research/, writing/, editing/, etc.) have yet been developed beyond planned status
- Inspection of `.planning/STATE.md` confirming Phase 1 complete, all 204 stubs created

---

## Metadata

**Confidence breakdown:**
- Skill selection rationale: HIGH — based on direct inspection of all 204 stub files and stable skill patterns
- Development process: HIGH — confirmed by EVAL_FRAMEWORK.md and existing stable skill examples
- G-Eval protocol: HIGH — documented verbatim in tests/EVAL_FRAMEWORK.md
- Quality patterns: HIGH — derived from stable skills in repo (eval_score 4.4–4.5)
- Execution batching: MEDIUM — wave size of 5 is a judgment call, not a documented constraint
- Risk assessment: MEDIUM — consistency trap is confirmed; other risks are forward-looking

**Research date:** 2026-03-17
**Valid until:** Phase-specific, no external dependencies. Valid indefinitely unless EVAL_FRAMEWORK.md changes.
