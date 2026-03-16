# Skill Template

Use this file as the starting point for every new skill. Copy it, rename the file to match the `name` field in the frontmatter, and fill in every section.

---

## How To Use This Template

**Before you write anything**, answer these three questions:
1. What is the single specific task this skill performs?
2. At what production stage would someone need this?
3. What does a good output look like — can you describe it in one sentence?

If you can't answer all three clearly, narrow the scope before writing.

**On examples:** The example is the most important part of the skill file. It must be:
- Real: complete enough to use in actual production
- Generic: not traceable to any real project, publication, or person
- Realistic: written at professional quality, not illustrative filler

A placeholder example ("Your topic here", "Insert interview subject") is grounds for rejection.

**On limitations:** Every skill has at least one real limitation. Be honest. "May not work well for highly technical subjects" is useful. "Results may vary" is not.

---

## Template

```markdown
---
name: skill-name-in-kebab-case
status: planned | draft | beta | stable
category: tv-documentary | magazine-journalism | youtube | podcast | image-prompting
subcategory: development | scripting | post-production | localization | ideation | writing | editing | distribution | pre-production | channel-strategy | midjourney | flux | art-direction | workflows
version: 1.0
eval_score: null
tags: [tag1, tag2]
---

# Skill Title

## What This Skill Does
One precise sentence.

## When To Use This Skill
- Specific trigger condition 1
- Specific trigger condition 2

## What You Need To Provide
**Required:** List the inputs Claude needs to do this task well.
**Optional:** Any extra context that improves output quality.

## How Claude Approaches This
1. Step one — what Claude does first
2. Step two — how it builds on step one
3. Step three — how it produces the final output

## Output Format
Describe length, structure, tone, language register, and formatting conventions.

## Quality Criteria
- [ ] Specific, checkable criterion 1
- [ ] Specific, checkable criterion 2
- [ ] Specific, checkable criterion 3

## Example

### Input
[A complete, realistic input. Professional quality. Not traceable to any real organization or production.]

### Output
[A complete, realistic output. Good enough to hand to a colleague without editing.]

## Known Limitations
- At least one honest, specific limitation that users should be aware of.

## Related Skills
- [skill-name](../path/to/skill.md)
```
