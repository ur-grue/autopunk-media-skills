# Contributing to autopunk-media-skills

Thank you for helping make this library better for every media professional who uses it.

---

## Part One — For Everyone (No Technical Knowledge Required)

### Why Contribute?

Every skill in this library was created because someone had a real production problem and figured out how to solve it with Claude. When you contribute, you're handing that solution to thousands of other journalists, producers, and creators.

### What Makes a Good Skill?

A good skill solves **one specific problem** at a specific stage of production. It should be something you've actually needed — not a hypothetical. The best skills produce output you could hand to a colleague without embarrassment.

Ask yourself:
- Is there a moment in my workflow where I repeatedly ask Claude the same kind of question?
- Would a colleague immediately understand what this skill does from the title alone?
- Can I write a realistic example input and a realistic example output?

If yes to all three — you have a skill worth contributing.

### What a Bad Skill Looks Like

- Too broad: "Help me write better stories" is not a skill
- Too narrow: "Write the second paragraph of my specific article" is not reusable
- Already covered: Check the existing skills and ROADMAP.md first

### How To Submit

**Step 1 — Open a GitHub Issue**
Use the "Skill Request" issue template. Fill in every field. The more specific your example input and expected output, the faster it gets approved.

**Step 2 — Wait for approval**
A maintainer will confirm the skill concept, suggest any scope adjustments, and give you the green light to write it.

**Step 3 — Write the skill**
Use `SKILL_TEMPLATE.md` as your starting point. Fill in every field — especially the example. Placeholder examples ("Insert your topic here") are not accepted.

**Step 4 — Submit a Pull Request**
Link your PR to the issue you opened. A maintainer will review and test it before merging.

---

## Part Two — Technical Instructions (For Contributors Who Know Git)

### Repository Setup

```bash
git clone https://github.com/ur-grue/autopunk-media-skills.git
cd autopunk-media-skills
```

### Skill File Location

Place your skill file in the correct subdirectory under `skills/`. Match the category and subcategory exactly as defined in `CLAUDE.md`.

Example:
```
skills/youtube/pre-production/hook-generator.md
```

### Skill File Format

Every skill must follow `SKILL_TEMPLATE.md` exactly — frontmatter included. Fields:

- `name`: kebab-case, matches the filename
- `status`: start at `draft`
- `category` and `subcategory`: match the directory structure
- `version`: `1.0` for new skills
- `eval_score`: `null` until tested
- `tags`: 2–5 descriptive tags

### Evals File

Create a matching `.evals.json` file alongside the skill:

```json
{
  "skill_name": "your-skill-name",
  "status": "pending",
  "test_cases": []
}
```

### Self-Testing

Before submitting, test your skill at least once with a real input. If the output is something you'd be comfortable using in your own work, it's ready to submit as `draft`. A maintainer will run the full G-Eval before marking it `beta` or `stable`.

### Commit Message Format

```
feat: add [skill-name] skill (category/subcategory)
```

### PR Checklist

- [ ] Skill follows `SKILL_TEMPLATE.md` exactly
- [ ] Example input is real, not a placeholder
- [ ] Example output is complete and realistic
- [ ] At least one honest limitation documented
- [ ] Matching `.evals.json` file created
- [ ] No references to identifiable real productions or organizations
- [ ] Self-tested at least once with a real input

### Code of Conduct

Keep all examples generic and professional. Never include content that could identify a specific production, organization, or individual. See the Anonymity Rule in `CLAUDE.md`.

All repository content must be in English.
