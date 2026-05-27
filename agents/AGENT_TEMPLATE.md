# Agent Template

Use this file as the starting point for every new agent. Copy it, rename the file to match the `name` field in the frontmatter, and fill in every section.

---

## How to use this template

**Before you write anything**, answer these four questions:
1. What multi-step deliverable does this agent produce?
2. Which existing skills does it compose — and in what order?
3. What does the finished output look like as a single package?
4. Can a media professional hand that package to a colleague or client without revision?

If you can't answer all four, the agent scope is wrong. Either narrow it or check whether a single skill already covers the task.

**Agents vs. skills.** A skill performs one task. An agent orchestrates multiple skills into a multi-step workflow that produces a complete deliverable. If the job needs only one skill, don't wrap it in an agent.

**On the skills array.** List only the skills the agent actually invokes. An agent restricted to its declared skills is easier to test, easier to trust, and produces more focused output. Don't pad the list with "might be useful" skills.

**On PLANNING and EXECUTION modes.** Every agent operates in two modes. In PLANNING mode, the agent reads the user's brief, selects which skills to invoke and in what order, and presents a numbered plan for approval. In EXECUTION mode, the agent runs the approved plan step by step, invoking each skill and assembling the outputs into the final deliverable. The user can interrupt between steps to adjust direction. This two-mode pattern prevents the agent from committing to a full pipeline before the user has seen the approach.

**On examples.** The example must show a realistic brief, a realistic plan (PLANNING output), and a realistic final deliverable (EXECUTION output). Generic or placeholder examples are grounds for rejection — same rule as skills.

**On limitations.** Every agent has at least one real limitation. Be honest. "May produce a less cohesive package when skills are invoked on very different topics" is useful. "Results may vary" is not.

---

## Template

```markdown
---
name: agent-name-in-kebab-case
type: agent
status: planned | draft | beta | stable
version: 1.0
eval_score: null
maxTurns: 25
allowedTools:
  - Read
  - Write
  - Edit
  - Glob
  - Grep
  - Bash
  - WebFetch
disallowedTools: []
skills:
  - skill-one-name
  - skill-two-name
  - skill-three-name
tags: [tag1, tag2]
---

# Agent Title

## What this agent does
One sentence describing the complete deliverable this agent produces.

## When to use this agent
- Specific trigger condition 1
- Specific trigger condition 2

## What you need to provide
**Required:** The inputs the agent needs to produce the deliverable.
**Optional:** Any extra context that improves output quality.

## Skills this agent composes

| Step | Skill | What it produces |
|------|-------|-----------------|
| 1 | [skill-name](../skills/path/to/skill.md) | One-line description of this step's output |
| 2 | [skill-name](../skills/path/to/skill.md) | One-line description of this step's output |
| 3 | [skill-name](../skills/path/to/skill.md) | One-line description of this step's output |

## How the agent works

### PLANNING mode

When the agent receives a brief, it:
1. Reads the brief and identifies what the user needs
2. Selects which skills to invoke and in what order
3. Presents a numbered plan showing each step, the skill it uses, and what it will produce
4. Waits for user approval before proceeding

The plan output looks like this:
```
PLAN for [deliverable name]

Step 1: [skill-name] — [what this step produces]
Step 2: [skill-name] — [what this step produces]
Step 3: [skill-name] — [what this step produces]

Estimated output: [description of the assembled deliverable]
Approve this plan? (yes / adjust / skip steps)
```

### EXECUTION mode

After the user approves the plan, the agent:
1. Invokes each skill in sequence, passing the brief and any prior outputs as context
2. Assembles individual skill outputs into the final deliverable
3. Presents the complete package with a summary of what was produced

The user can interrupt between steps to adjust direction, skip a step, or add context.

## Output format
Describe the assembled deliverable: its length, structure, sections, tone, and how the individual skill outputs are combined.

## Quality criteria
- [ ] Each skill output meets its own quality standard independently
- [ ] The assembled deliverable reads as a coherent package, not a stack of separate outputs
- [ ] Transitions between sections produced by different skills are smooth and consistent
- [ ] The deliverable is complete enough to hand to a colleague or client without major revision
- [ ] Tone, register, and terminology are consistent across all sections
- [ ] The agent stayed within its declared skills array — no undeclared skill invocations
- [ ] Output is free of generic AI-template phrasing (see Editorial Naturalness in `tests/EVAL_FRAMEWORK.md`)

## Example

### Brief (user input)
[A complete, realistic brief. Professional quality. Not traceable to any real organization or production.]

### Plan (PLANNING mode output)
[The numbered plan the agent would present for approval.]

### Deliverable (EXECUTION mode output)
[The complete assembled package. Every section is fully written — no placeholders. Good enough to hand to a colleague.]

## Known limitations
- At least one honest, specific limitation.

## Related agents and skills
- [agent-name](../agents/agent-name.md) — why this related agent covers different ground
- [skill-name](../skills/path/to/skill.md) — standalone skill for users who need only one step
```

---

## Frontmatter reference

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `name` | string | yes | Kebab-case agent identifier. Must match the filename. |
| `type` | string | yes | Always `agent`. Distinguishes from skills in tooling. |
| `status` | enum | yes | `planned` · `draft` · `beta` · `stable`. Same badge system as skills. |
| `version` | string | yes | Semantic version. Start at `1.0`. |
| `eval_score` | number or null | yes | Workflow-level G-Eval score. `null` until tested. |
| `maxTurns` | integer | yes | Maximum number of LLM turns the agent may take. Prevents runaway loops. Set based on the number of skills composed — a 5-skill agent typically needs 15–25 turns. |
| `allowedTools` | array | yes | Tools the agent may use. Restrict to what the workflow actually needs. |
| `disallowedTools` | array | yes | Tools the agent must never use. Empty array if no restrictions beyond the allowlist. |
| `skills` | array | yes | Skill names (kebab-case) this agent invokes. Only declared skills may be called during execution. |
| `tags` | array | yes | Freeform tags for discoverability. |

## Status badges

Same system as skills — an agent earns `stable` only after passing workflow-level G-Eval (see `tests/EVAL_FRAMEWORK.md`).

| Badge | Status | Meaning |
|-------|--------|---------|
| 🔲 `planned` | Placeholder only | Agent defined, not yet implemented |
| 🟡 `draft` | Written, untested | Do not rely on in production |
| 🔵 `beta` | Tested once | Usable, may have rough edges |
| ✅ `stable` | Workflow G-Eval ≥ 4.0/5 | Production-ready |
