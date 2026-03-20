---
name: manuscript-formatter
status: stable
category: production-support
subcategory: formatting
version: 1.0
eval_score: 4.39
tags: [production-support, formatting, manuscript, style-guide, publishing, submission]
---

# Manuscript Formatter

## What This Skill Does
Reformats a manuscript, article, or long-form text to match a specific publication's structural and style requirements — adjusting headings, paragraph spacing, citation format, pull-quote placement, and front matter without altering the content itself.

## When To Use This Skill
- You are submitting an article to a publication that requires a specific manuscript format and your draft does not match
- You need to convert a piece written in one style (e.g., academic) to another (e.g., magazine feature) for a different outlet
- You are preparing a final manuscript for an editor and need to ensure it meets the house format before submission
- You have a raw draft that needs structural formatting — section breaks, subheadings, front matter — before it can be reviewed

## What You Need To Provide
**Required:** The full text to reformat; the target format or style guide (e.g., "AP style feature," "Chicago Manual academic article," "standard magazine submission format," or a specific publication's submission guidelines).

**Optional:** The publication's specific formatting requirements if they differ from a standard style guide (paragraph indent vs. block paragraphs, heading hierarchy, footnote vs. endnote, citation style); whether to add or restructure subheadings; word count target (if the reformatted version must fit a specific length); front matter requirements (author name, date, word count header, abstract, keywords); any elements that must be preserved exactly as-is (e.g., specific formatting of data tables or block quotes).

## How Claude Approaches This
1. **Reads the full text and identifies its current structure.** Maps the existing formatting: heading levels, paragraph style, citation format, block quote treatment, list formatting, and any front matter. Identifies what needs to change to match the target format and what can remain as-is.

2. **Applies the target format's structural rules.** Adjusts heading hierarchy (H1/H2/H3), paragraph spacing and indentation, block quote formatting, list style (bulleted vs. numbered), and section break conventions. For academic-to-journalistic conversions, removes abstracts and reorganizes front matter; for journalistic-to-academic, adds structured sections and formal citation format.

3. **Reformats citations and attributions.** Converts between citation styles (APA, Chicago, MLA, AP) as needed. In-text citations, footnotes, endnotes, and bibliography entries are reformatted to match the target standard. If the source text uses informal attributions ("according to a recent study"), Claude retains them as-is for journalistic formats or formalizes them for academic formats.

4. **Adds or adjusts front matter.** Generates a properly formatted header block including: title, author name, date, word count, abstract (if required), and any other fields specified in the target format. If the source text lacks a required front matter element (e.g., an abstract for an academic submission), Claude drafts one from the article's content and flags it for review.

5. **Preserves the content unchanged.** This is a formatting skill, not an editing skill. The text's meaning, arguments, quotes, and data are not altered. Any unavoidable content changes (e.g., converting an informal subheading to a formal one) are flagged in the formatting notes.

## Output Format
The complete reformatted text, ready for submission or editorial review. Front matter appears first (if applicable), followed by the body text in the target format. After the reformatted text, a "Formatting Notes" section (3–6 bullet points) listing the significant structural changes made, any elements that could not be reformatted automatically (e.g., images, tables), and any content that was drafted or modified (flagged for review). The output preserves the original word count within 2% — formatting changes should not significantly alter length.

## Quality Criteria
- [ ] All structural elements match the target format — headings, spacing, indentation, citations
- [ ] Front matter is complete and correctly formatted for the target standard
- [ ] No content has been altered, added, or removed (except where flagged in notes)
- [ ] Citations and attributions follow the target style guide consistently throughout
- [ ] Block quotes, lists, and special formatting elements are rendered in the target format's conventions
- [ ] Formatting notes list every significant change for editorial review
- [ ] Word count is preserved within 2% of the original

## Example

### Input
**Target format:** Standard magazine submission (double-spaced, block paragraphs, AP style attributions, no footnotes, word count in header)

**Current format:** Academic-style draft with footnotes, APA in-text citations, and an abstract

**Text:**

**Abstract:** This article examines the economic impact of community-owned renewable energy projects in rural regions, drawing on case studies from three European countries. It argues that local ownership models generate measurably higher community reinvestment than corporate-owned installations.

**1. Introduction**

The expansion of renewable energy capacity in rural areas has accelerated significantly over the past decade (European Renewable Energy Council, 2024). However, the economic benefits of these installations do not always accrue to the communities that host them. A growing body of research suggests that ownership structure — specifically whether a project is community-owned or corporate-owned — is the decisive factor in determining local economic impact (Hansen & Nordberg, 2023; Oliveira et al., 2024).

This article presents findings from a comparative analysis of 14 renewable energy installations across three countries.^1

^1 The study was conducted between January 2024 and June 2025 and included site visits, financial audits, and interviews with 42 community stakeholders.

### Output

**COMMUNITY ENERGY: WHO REALLY BENEFITS FROM RURAL RENEWABLES?**
*By [Author Name]*
*Word count: [X,XXX]*

---

The expansion of renewable energy capacity in rural areas has accelerated significantly over the past decade. But the economic benefits of these installations do not always reach the communities that host them. A growing body of research suggests that ownership structure — specifically whether a project is community-owned or corporate-owned — is the decisive factor in determining local economic impact.

This article presents findings from a comparative analysis of 14 renewable energy installations across three countries. The study, conducted between January 2024 and June 2025, included site visits, financial audits, and interviews with 42 community stakeholders.

---

**Formatting Notes**
- Abstract removed — standard magazine format does not include abstracts. The opening paragraph now serves as the lede, drawing the reader's core argument from the abstract and introduction.
- Academic section numbering ("1. Introduction") removed. Subheadings will be needed for the full piece but are not added here as only the opening section was provided.
- APA in-text citations (European Renewable Energy Council, 2024; Hansen & Nordberg, 2023; Oliveira et al., 2024) removed. For magazine publication, these should be converted to narrative attributions (e.g., "according to a 2024 report by the European Renewable Energy Council"). The full text will need each citation converted individually — flag for the author or editor.
- Footnote content (study methodology details) integrated into the body text as a parenthetical in the second paragraph. Magazines do not use footnotes; essential information must live in the text.
- Title reformatted from academic style to magazine headline. The headline is a draft — the editor or author should confirm or revise.
- Author name and word count left as placeholders — fill in before submission.

## Known Limitations
- Claude reformats text structurally but cannot apply visual formatting (font sizes, line spacing, page margins) in a text output. For submissions that require specific visual formatting (e.g., "12pt Times New Roman, double-spaced, 1-inch margins"), apply those settings in your word processor after using this skill for structural formatting.
- Complex tables, figures, and embedded images cannot be reformatted in text output. Claude will flag these elements and note where they should appear in the reformatted version, but the user must reinsert them manually.
- When converting from academic to journalistic format, citation removal requires judgment about which sources to attribute narratively and which to omit. Claude flags every removed citation so the author can make the final decision.

## Related Skills
- [copy-editor-assistant](../../magazine-journalism/editing/copy-editor-assistant.md) — edit the content after formatting is complete
- [web-section-splitter](./web-section-splitter.md) — split a formatted article into web-optimized sections
- [cms-metadata-writer](./cms-metadata-writer.md) — write CMS metadata for the formatted article before publishing
- [author-bio-writer](./author-bio-writer.md) — write the author bio to accompany the formatted submission
