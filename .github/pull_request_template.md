# Pull Request

## What This PR Does
Briefly describe the change. For a new skill: what it does and which category/subcategory it belongs to. For a fix or improvement: what was wrong and what you changed.

## Related Issue
Closes #[issue number]

## Checklist

### For new skills
- [ ] Skill file is in the correct `skills/category/subcategory/` directory
- [ ] Skill filename matches the `name` field in frontmatter (kebab-case)
- [ ] Skill follows `SKILL_TEMPLATE.md` exactly — all sections present
- [ ] `status` is set to `draft` (not `planned`, not `stable`)
- [ ] Example input is complete and realistic — not a placeholder
- [ ] Example output is complete, professional-quality, and realistic
- [ ] At least one specific, honest limitation is documented
- [ ] Matching `.evals.json` file created alongside the skill
- [ ] No references to identifiable real productions, organizations, or individuals
- [ ] Self-tested at least once with a real input — output was usable
- [ ] `ROADMAP.md` updated to reflect the new skill's status

### For skill improvements
- [ ] Describe what was wrong with the previous version
- [ ] Example has been updated if the skill logic changed
- [ ] Limitations section updated if new edge cases were discovered
- [ ] Status remains appropriate (don't self-promote to `stable`)

### For all PRs
- [ ] All content is in English
- [ ] Commit message follows the format: `type: description (category/subcategory)`
