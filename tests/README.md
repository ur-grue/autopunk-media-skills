# Quality Assurance

This project uses a two-stage quality pipeline to ensure every skill produces reliable, professional output.

## Stage 1: AutoResearch Loop (internal, iterative)

Binary assertions per skill, tested against diverse inputs. Based on the Anthropic skill-creator eval framework.

- `tests/assertions/` — binary pass/fail tests per skill, grouped by category
- `tests/inputs/` — diverse test inputs per skill (5 inputs each: standard, niche, minimal, international, ambiguous)
- `tests/run-eval.sh` — automated eval runner
- `tests/runs/` — timestamped output from eval runs
- **Target:** at least 90% assertion pass rate across all inputs

### How it works

Each skill has:
1. **3-5 binary assertions** — objectively verifiable checks derived from the skill's own quality criteria and output format specification.
2. **5 test inputs** — covering edge cases: a standard use case, a niche/technical topic, a minimal input, a European/international context, and a vague/ambiguous input.

The eval runner sends each input to the Anthropic API using the skill file as the system prompt, then grades the output against the assertions using a separate grading call.

### What the assertions test

Assertions are specific to each skill and drawn directly from what the skill promises to deliver. Examples:

- "Output contains exactly 3 hook options labeled Option 1, Option 2, and Option 3" (hook-generator)
- "No title exceeds 70 characters" (seo-title-optimizer)
- "Cites 5 U.S.C. section 552 explicitly" (foia-request-writer)
- "No question can be answered with a simple yes or no" (interview-question-generator)

These are not subjective quality judgments. They are binary: the output either meets the specification or it does not.

## Stage 2: G-Eval Gate (external, badge)

Six-dimension quality evaluation: Coherence, Consistency, Fluency, Relevance, Professionalism, Actionability.

- `tests/EVAL_FRAMEWORK.md` — full scoring rubric and protocol
- Score of 4.0/5 or higher across all dimensions earns the `stable` badge
- G-Eval only runs after Stage 1 passes

### The two stages serve different purposes

Stage 1 catches structural failures — missing sections, wrong formats, broken specifications. It runs fast and can be automated.

Stage 2 evaluates quality — whether the output is genuinely good enough for a professional to use. It requires judgment and is more expensive to run.

A skill must pass both stages to reach `stable` status.

## Running evals

```bash
# Eval a single skill
./tests/run-eval.sh --skill hook-generator

# Eval all top-20 skills
./tests/run-eval.sh --top20
```

Requires the `ANTHROPIC_API_KEY` environment variable to be set.

```bash
export ANTHROPIC_API_KEY=sk-ant-...
```

### Dependencies

- `curl` — for API calls
- `jq` — for JSON processing
- `bc` — for percentage calculation (standard on most systems)

### Output

Results are saved to `tests/runs/<skill-name>/<timestamp>/`:

- `results.json` — summary with pass/fail counts and per-input breakdowns
- `output-input-XX.txt` — raw skill output for each test input
- `grade-input-XX.json` — assertion grading details for each test input

## Top-20 skills covered

The eval framework currently covers the 20 highest-priority skills across 9 categories:

| Category | Skills |
|----------|--------|
| YouTube / Pre-production | hook-generator, seo-title-optimizer, thumbnail-concept-brief |
| YouTube / Scripting | full-script-writer, shorts-script-adapter |
| TV-Documentary / Development | pitch-treatment-writer, logline-creator |
| TV-Documentary / Scripting | commentary-writer, interview-question-generator |
| Magazine Journalism / Ideation | story-angle-finder, headline-generator |
| Magazine Journalism / Investigation | foia-request-writer |
| Podcast / Scripting | solo-episode-script, ad-read-script |
| Social Media / Content | caption-writer, thread-writer |
| Image Prompting / Midjourney | cinematic-shot-prompt |
| Data Journalism / Analysis | dataset-summary-brief |
| Writing / Articles | headline-writer, lede-writer |

## Adding assertions for new skills

1. Create a JSON file in `tests/assertions/` named `<category>-<subcategory>.json` (or add to an existing file for that category).
2. Add 3-5 binary assertions derived from the skill's Quality Criteria and Output Format sections.
3. Create a matching input file in `tests/inputs/<skill-name>.json` with 5 test inputs.
4. Run `./tests/run-eval.sh --skill <skill-name>` to verify.
