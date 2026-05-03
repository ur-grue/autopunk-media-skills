# Evaluation Framework

---

## Section A — Technical Protocol (For Claude Code)

This section defines the exact procedure for evaluating a skill using G-Eval (NLG Evaluation using GPT-4 with Better Human Alignment).

### Threshold

A skill is promoted to `stable` when **both** of the following hold:

1. **Overall mean score ≥ 4.0/5** across all seven dimensions, AND
2. **Editorial Naturalness individual score ≥ 4.0/5** (hard floor — see dimension definition below).

The hard floor applies only to Editorial Naturalness. The other six dimensions contribute to the mean and have no individual minimum. Editorial Naturalness has a hard floor because it is the dimension that backs the marketing promise *"output that doesn't sound like AI wrote it."* A skill that scores high on every other dimension and still reads like generic AI is the precise failure mode this dimension exists to catch — letting it pass on overall mean alone would invalidate the claim.

### Step 1 — Prepare Three Test Cases

Generate three test inputs for the skill. Each input must:
- Be realistic and professional-quality
- Represent a genuinely different scenario (different topic, format, or complexity)
- Not be a variation of the skill's own example

### Step 2 — Generate Outputs

Run each test input through the skill with Claude. Record the output verbatim.

### Step 3 — Score Each Output

For each output, score all seven dimensions on a 1–5 integer scale:

| Dimension | Scoring Criteria |
|-----------|-----------------|
| **Coherence** | 1 = incoherent or disorganized · 3 = mostly logical, minor gaps · 5 = perfectly structured, clear progression |
| **Consistency** | 1 = contradicts input or invents facts · 3 = mostly accurate, minor issues · 5 = fully consistent with input, no invention |
| **Fluency** | 1 = unreadable or unnatural · 3 = readable, some awkward phrasing · 5 = professional, publication-ready prose |
| **Relevance** | 1 = off-topic or includes major irrelevant content · 3 = mostly on topic, some drift · 5 = exactly what was asked, nothing extraneous |
| **Professionalism** | 1 = would not pass to a colleague · 3 = usable with significant editing · 5 = hand to a colleague without changes |
| **Actionability** | 1 = cannot be used in production · 3 = requires moderate revision · 5 = ready to use directly in production |
| **Editorial Naturalness** | 1 = pure boilerplate, saturated with AI tells · 3 = competent but recognisably AI-flavoured (3–5 tells, register slips) · 5 = reads like a working professional in the medium, no detectable AI hallmarks |

**Editorial Naturalness — anchored definition.** This dimension scores how closely the output reads like work written by a human editorial professional in the relevant medium, vs. exhibiting the surface patterns of generic, unsteered LLM output. It is distinct from Fluency: generic AI output can score 5/5 on Fluency. Score Editorial Naturalness by counting *tells* against the lists below and mapping count + severity to the anchor.

**Lexical tells (AI hallmarks):**
- "delve into," "navigate the complexities of," "in the realm of," "the world of"
- "it's worth noting that," "it's important to note," "it should be noted"
- Latinate verbs where an Anglo-Saxon verb fits: "utilize" for "use," "facilitate" for "help," "leverage" for "use," "elucidate" for "explain"
- Hedge stacking: "may potentially help with," "could possibly assist in"
- Empty intensifiers as filler: "crucial," "vital," "pivotal," "key" applied to ordinary things
- "Embark on a journey," "in today's fast-paced world," "game-changer," "robust," "seamless"
- Reflexive triplets: "clear, concise, and compelling" patterns applied without thought

**Structural tells:**
- Opening paragraph that restates what the rest will say ("In this section, we will explore...")
- Closing paragraph that restates what the body just said ("In conclusion," "All in all," "To summarise")
- Every list exactly three or five items with forced parallel structure
- Em-dash overuse — particularly the parenthetical em-dash in every other sentence — flattening emphasis
- "On the one hand … on the other hand …" both-sides hedging where the brief asked for a position
- "Not only … but also …" constructions used reflexively

**Tonal tells:**
- Empty enthusiasm ("exciting," "fascinating," "incredible") applied to mundane material
- Generic SaaS verbs leaking into editorial registers ("optimize your workflow," "streamline your process")
- Hedge fog where the brief asked for a concrete claim
- Sycophantic openers ("Great question!" — disqualifying)

**Genre tells (failure to inhabit register):**
- A documentary treatment that reads like a blog post
- Show notes that read like LinkedIn posts
- A grant application that reads like marketing copy
- A news lead that buries the news under backstory
- A headline that describes what the article is *about* rather than what it *says*

**Anchor mapping:**

| Score | Tell count + severity | Reviewer description |
|-------|-----------------------|----------------------|
| **5** | Zero tells. Lead, structure, register match the format a human editor would file. | Reads like a working professional. Edits would be matters of taste. |
| **4** | ≤ 2 minor lexical or structural tells. Register correct. No genre violation. | Reads professional. Working editor would accept with light line-edits. |
| **3** | 3–5 tells. Restate-the-question intro OR boilerplate close. One register slip. | Competent but recognisably AI-flavoured. Reader pauses: "did a bot write this?" |
| **2** | ≥ 6 tells. Both meta-intro AND meta-close. Multiple Latinate filler verbs. Visible genre violation. | Reads like generic AI content. Media professional would reject. |
| **1** | Saturated with tells. Could plausibly come from any chatbot prompted with the same task. | Pure boilerplate. Reader can finish paragraph one and predict the rest. |

**Required note.** When recording an Editorial Naturalness score, the reviewer MUST add a one-line note naming either the strongest tell (for scores ≤ 4) or the strongest piece of genre craft (for scores of 5). The note prevents the dimension drifting into pure vibe and anchors future calibration. Record the note in the `editorial_naturalness_note` field of the test case (see Step 5 schema).

### Step 4 — Calculate Scores

For each test case: calculate the mean across all seven dimensions.
Overall mean = average of all three test case means.
Record the per-dimension mean for Editorial Naturalness separately — it is checked against the hard floor in Step 6.

### Step 5 — Record Results

Update the skill's `.evals.json` file:

```json
{
  "skill_name": "skill-name",
  "status": "passed | failed",
  "overall_mean": 4.2,
  "editorial_naturalness_mean": 4.3,
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
        "actionability": 4,
        "editorial_naturalness": 4
      },
      "editorial_naturalness_note": "One Latinate filler verb ('utilize') in section 2; otherwise clean.",
      "case_mean": 4.14
    }
  ]
}
```

### Step 6 — Update Skill Status

If `overall_mean ≥ 4.0` AND `editorial_naturalness_mean ≥ 4.0`:
- Set `status: stable` in the skill's frontmatter
- Set `eval_score: [overall_mean]` in the skill's frontmatter
- Update ROADMAP.md to reflect the new status

If `overall_mean ≥ 4.0` BUT `editorial_naturalness_mean < 4.0`:
- The skill is `beta` regardless of how strong its other dimensions are.
- Note the strongest Editorial Naturalness tells across the three test outputs — these are the lift target for the next revision.
- This is a structural rule, not a soft preference: a skill that fails the hard floor is not `stable`.

If `overall_mean < 4.0`:
- Keep `status: beta`.
- Note the lowest-scoring dimension — this is where revision should focus.
- Do not publish the raw score publicly.

### Running An Eval In Claude Code

```
Run G-Eval for [skill-name].
Read the skill file. Generate 3 test outputs using varied inputs.
Score each output on all 7 dimensions (1-5 scale), including Editorial Naturalness.
For Editorial Naturalness, count tells against the four lists (lexical, structural, tonal, genre)
and add a one-line note naming the strongest tell or the strongest piece of genre craft.
Report mean per dimension and overall average.
If overall mean ≥ 4.0 AND editorial_naturalness mean ≥ 4.0, set status to stable
and update eval_score in frontmatter. Otherwise keep status as beta.
```

---

## Section B — Plain-Language Guide (For Human Reviewers)

This section explains the quality system in plain English. No technical knowledge required.

### Why Do We Evaluate Skills?

A skill that sounds useful can still produce bad output. Evaluation catches the gap between "this seems like a good idea" and "this actually works in production."

Every skill marked ✅ `stable` has been tested on at least three real inputs and scored on seven dimensions. The average must clear 4 out of 5. One dimension — Editorial Naturalness — must also clear 4 out of 5 on its own, no matter how high the other six scored. That second rule is a hard floor; the next section explains why.

### What the Seven Dimensions Mean In Practice

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

**Editorial Naturalness — Does it read like a human professional wrote it, or like AI?**
Fluency asks whether the prose reads smoothly. Editorial Naturalness asks something tougher: does it sound like a working professional in the medium, or like a chatbot doing a passable impression of one? Generic AI output can be perfectly fluent and still announce itself as AI by the third sentence. This dimension catches that.

A score of 5 means: a working editor could file the output as-is. The phrasing, structure, and register sound like a human professional in the medium. None of the AI tells readers learn to spot are there — no "delve into," no "in today's fast-paced world," no opener that just restates what the rest of the document will say, no closing paragraph that summarises what you just read.

A score of 3 means: competent but recognisable. The reader pauses and wonders "did a bot write this?" — usually because of a few telltale phrases, a forced three-bullet structure, or a register that doesn't quite fit the format (show notes that read like LinkedIn posts, a treatment that reads like a blog post).

A score of 2 or below means: the output reads like generic AI content. A media professional would not file it under their name.

**Why this dimension is a hard floor.** Ask any editor or producer about AI-generated work and a version of *"it reads like AI wrote it"* comes up first. Editorial Naturalness is the dimension we built to catch that before they have to. So it doesn't just count toward the average score: a skill has to clear 4 out of 5 here on its own before we mark it `stable`. A skill can score five out of five on every other dimension and still miss `stable` because its output sounds like ChatGPT. That is the exact failure this dimension exists to surface.

### What Does 4.0/5 Actually Look Like?

A skill scoring exactly 4.0 produces output that is:
- Well-structured and readable
- Faithful to your input
- Usable in production with only light editing
- Something a media professional would recognise as competent work
- Free of the AI tells readers learn to spot — "delve into," boilerplate intros, summary closers

A skill scoring 5.0 produces output that requires no editing at all and consistently impresses experienced professionals. Very few skills reach this level.

The 4.0 threshold is set deliberately high. It means the skill works reliably for the majority of realistic inputs, not just ideal ones.

### What Happens To Skills That Don't Pass?

They stay at `beta` status. The evaluation identifies which dimension scored lowest — that tells the maintainer exactly what to fix. Failed evaluations are kept internal; only the badge and score are public.
