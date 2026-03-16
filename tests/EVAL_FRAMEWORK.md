# Evaluation Framework

---

## Section A — Technical Protocol (For Claude Code)

This section defines the exact procedure for evaluating a skill using G-Eval (NLG Evaluation using GPT-4 with Better Human Alignment).

### Threshold

A skill is promoted to `stable` when its **overall mean score is ≥ 4.0/5** across all six dimensions.

### Step 1 — Prepare Three Test Cases

Generate three test inputs for the skill. Each input must:
- Be realistic and professional-quality
- Represent a genuinely different scenario (different topic, format, or complexity)
- Not be a variation of the skill's own example

### Step 2 — Generate Outputs

Run each test input through the skill with Claude. Record the output verbatim.

### Step 3 — Score Each Output

For each output, score all six dimensions on a 1–5 integer scale:

| Dimension | Scoring Criteria |
|-----------|-----------------|
| **Coherence** | 1 = incoherent or disorganized · 3 = mostly logical, minor gaps · 5 = perfectly structured, clear progression |
| **Consistency** | 1 = contradicts input or invents facts · 3 = mostly accurate, minor issues · 5 = fully consistent with input, no invention |
| **Fluency** | 1 = unreadable or unnatural · 3 = readable, some awkward phrasing · 5 = professional, publication-ready prose |
| **Relevance** | 1 = off-topic or includes major irrelevant content · 3 = mostly on topic, some drift · 5 = exactly what was asked, nothing extraneous |
| **Professionalism** | 1 = would not pass to a colleague · 3 = usable with significant editing · 5 = hand to a colleague without changes |
| **Actionability** | 1 = cannot be used in production · 3 = requires moderate revision · 5 = ready to use directly in production |

### Step 4 — Calculate Scores

For each test case: calculate the mean across all six dimensions.
Overall mean = average of all three test case means.

### Step 5 — Record Results

Update the skill's `.evals.json` file:

```json
{
  "skill_name": "skill-name",
  "status": "passed | failed",
  "overall_mean": 4.2,
  "test_cases": [
    {
      "id": 1,
      "input_summary": "One-sentence description of the test input",
      "scores": {
        "coherence": 4,
        "consistency": 5,
        "fluency": 4,
        "relevance": 4,
        "professionalism": 4,
        "actionability": 4
      },
      "case_mean": 4.17
    }
  ]
}
```

### Step 6 — Update Skill Status

If `overall_mean ≥ 4.0`:
- Set `status: stable` in the skill's frontmatter
- Set `eval_score: [overall_mean]` in the skill's frontmatter
- Update ROADMAP.md to reflect the new status

If `overall_mean < 4.0`:
- Keep `status: beta`
- Note the lowest-scoring dimension — this is where revision should focus
- Do not publish the raw score publicly

### Running An Eval In Claude Code

```
Run G-Eval for [skill-name].
Read the skill file. Generate 3 test outputs using varied inputs.
Score each output on all 6 dimensions (1-5 scale).
Report mean per dimension and overall average.
If overall mean ≥ 4.0, set status to stable and update eval_score in frontmatter.
```

---

## Section B — Plain-Language Guide (For Human Reviewers)

This section explains the quality system in plain English. No technical knowledge required.

### Why Do We Evaluate Skills?

A skill that sounds useful can still produce bad output. Evaluation catches the gap between "this seems like a good idea" and "this actually works in production."

Every skill in this library that shows ✅ `stable` has been tested on at least three different real inputs, scored on six quality dimensions, and averaged a score of 4 out of 5 or better.

### What the Six Dimensions Mean In Practice

**Coherence — Does it hold together?**
A coherent output has a clear structure. You can follow the logic from start to finish. There are no sudden jumps, missing transitions, or passages that seem to belong to a different document.

A score of 5 means: you could read it aloud and it would flow naturally.
A score of 2 means: it reads like several different drafts stitched together.

**Consistency — Does it stay true to what you gave it?**
Claude should only use information you provided. A consistent output doesn't invent facts, misquote your input, or contradict itself between paragraphs.

A score of 5 means: every claim in the output can be traced back to the input.
A score of 2 means: Claude made things up or got details wrong.

**Fluency — Is it readable?**
Fluent output sounds like it was written by a skilled professional. The sentences are natural, the vocabulary is appropriate, and reading it doesn't feel like work.

A score of 5 means: publication-ready prose with no awkward phrasing.
A score of 2 means: stilted, mechanical, or hard to read.

**Relevance — Did it stay on topic?**
Relevant output does exactly what the skill asked — no more, no less. It doesn't pad with unnecessary context, go off on tangents, or include generic advice that could apply to any situation.

A score of 5 means: every sentence earns its place.
A score of 2 means: significant portions of the output don't belong there.

**Professionalism — Could you hand this to a colleague?**
This is the practical test. After reading the output, would you feel confident sharing it with an editor, a co-producer, or a client — without extensive revision first?

A score of 5 means: yes, right now, as-is.
A score of 2 means: it would take more work to fix this than to start over.

**Actionability — Can you use this in production?**
Actionable output is immediately useful. It's the difference between "here's a framework you could develop" and "here's the thing you needed."

A score of 5 means: plug it directly into your workflow.
A score of 2 means: this is a starting point at best.

### What Does 4.0/5 Actually Look Like?

A skill scoring exactly 4.0 produces output that is:
- Well-structured and readable
- Faithful to your input
- Usable in production with only light editing
- Something a media professional would recognise as competent work

A skill scoring 5.0 produces output that requires no editing at all and consistently impresses experienced professionals. Very few skills reach this level.

The 4.0 threshold is set deliberately high. It means the skill works reliably for the majority of realistic inputs, not just ideal ones.

### What Happens To Skills That Don't Pass?

They stay at `beta` status. The evaluation identifies which dimension scored lowest — that tells the maintainer exactly what to fix. Failed evaluations are kept internal; only the badge and score are public.
