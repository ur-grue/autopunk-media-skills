---
name: glossary-builder
status: stable
category: magazine-journalism
subcategory: writing
version: 1.0
eval_score: 4.36
tags: [journalism, writing, glossary, terminology, reference, explainer, jargon]
---

# Glossary Builder

## What This Skill Does
Creates a glossary of key terms for a specific topic or article, with concise plain-language definitions formatted for publication as a sidebar, companion box, or standalone reference.

## When To Use This Skill
- You're writing about a technical, legal, financial, or scientific subject and readers will encounter unfamiliar terminology
- An editor has asked for a glossary sidebar to accompany a feature or investigative piece
- You're preparing a special issue or series on a complex topic and need a consistent reference document for readers
- You want to standardize terminology usage across a multi-part series or team of writers

## What You Need To Provide
**Required:**
- The topic, article text, or list of terms that need defining
- Target audience: general reader, informed reader, or specialist (determines the depth and register of definitions)

**Optional:**
- Number of terms to include (defaults to 8–15)
- Maximum definition length per term (defaults to one to two sentences)
- Whether definitions should be purely neutral or can include editorial context (e.g., "Critics argue this term obscures...")
- Publication format: sidebar, inline glossary, standalone page, or digital tooltip text
- Any terms the publication has already defined in a house style guide (to avoid contradiction)

## How Claude Approaches This

1. **Identifies the terms that need defining.** If given an article, scans for jargon, technical language, acronyms, and terms that a general reader would not know or might misunderstand. If given a topic, selects the most essential terms a reader would encounter. Prioritizes terms where misunderstanding would undermine comprehension of the article.

2. **Writes definitions in plain language.** Each definition explains the term as you would to a smart colleague who doesn't work in your field. No circular definitions ("blockchain: a type of chain of blocks"). No jargon in the definition of jargon. Technical precision is maintained, but clarity comes first.

3. **Calibrates depth to the audience.** A general-reader glossary defines "equity" differently than a glossary for financial professionals. Claude adjusts register, assumed knowledge, and definition length based on the stated audience. For specialist audiences, definitions are shorter and more precise; for general readers, they include more context and analogy.

4. **Orders terms logically.** Default is alphabetical. If the terms have a natural conceptual sequence (e.g., terms in a legal process, stages of a scientific method), Claude offers that ordering instead and notes why. Terms that depend on other terms in the glossary are cross-referenced.

5. **Formats for the specified output.** Sidebar glossaries are compact and scannable. Standalone reference pages can include more detail and cross-references. Tooltip text must be self-contained in a single sentence. Claude matches the format to the publication context.

## Output Format

A titled glossary with terms in bold, each followed by a plain-language definition. Default format: alphabetical list, one to two sentences per definition, 8–15 terms. For sidebar use, total glossary length is 200–400 words. For standalone reference, up to 600 words.

```
**Glossary: [Topic]**

**Term 1** — Definition in plain language. Additional context if needed.

**Term 2** — Definition in plain language.

**Term 3** — Definition in plain language. (See also: Related Term.)
```

## Quality Criteria
- [ ] Every definition is understandable by the stated target audience without further research
- [ ] No circular definitions — the term being defined does not appear in its own definition
- [ ] No jargon in the definition of jargon — technical language in definitions is itself explained
- [ ] Definitions are factually accurate and would not mislead a reader about the term's meaning
- [ ] Terms are ordered logically (alphabetical or conceptual, with the choice noted)
- [ ] Each definition is one to two sentences — concise enough for a sidebar, complete enough to be useful
- [ ] Cross-references are provided where one term depends on understanding another
- [ ] The glossary includes only terms that genuinely need defining for the stated audience — no padding with obvious terms

## Example

### Input
**Article topic:** A feature about municipal bond financing for public infrastructure projects, written for a general newspaper audience.

**Article excerpt:** "The city plans to issue $200 million in general obligation bonds to fund the bridge replacement, backed by the full faith and credit of the municipality. The bonds will be sold through a competitive bid process, with the debt service funded by an expected increase in property tax revenue. A revenue bond alternative was considered but rejected because the project does not generate direct user fees. The bond counsel has issued a clean opinion, and the credit rating agency assigned an AA rating, which officials say will keep borrowing costs low..."

**Audience:** General newspaper reader

**Format:** Sidebar glossary

**Number of terms:** 8

### Output

**Glossary: Municipal Bond Financing**

**Bond counsel** — A lawyer or law firm that certifies a municipal bond issue is legal and that interest paid to investors is tax-exempt. A "clean opinion" from bond counsel means no legal problems were found.

**Competitive bid** — A method of selling bonds where multiple investment banks submit sealed offers, and the one offering the lowest interest rate wins the right to buy and resell the bonds to investors.

**Credit rating** — A grade assigned by an independent agency that indicates how likely a borrower is to repay its debt. Ratings range from AAA (highest confidence) to D (in default). An AA rating is considered high quality.

**Debt service** — The total amount a borrower pays each year to cover interest and repay the principal on outstanding bonds. For municipalities, this is a recurring budget line item, similar to a mortgage payment.

**Full faith and credit** — A pledge that a government will use all available resources, including its power to raise taxes, to repay a debt. This is the strongest guarantee a municipality can offer bondholders.

**General obligation bond** — A bond backed by the issuing government's full taxing power, not by revenue from a specific project. Considered lower risk for investors because repayment does not depend on one income source.

**Revenue bond** — A bond repaid only from income generated by the specific project it funds — such as tolls from a highway or fees from a water system. If the project earns less than expected, bondholders bear the risk.

**Tax-exempt** — A feature of most municipal bonds that means investors do not pay federal income tax on the interest they earn. This allows municipalities to borrow at lower interest rates than private companies.

## Known Limitations
- Claude defines terms based on general knowledge. For highly specialized or evolving terminology (legal terms in a specific jurisdiction, emerging scientific nomenclature), definitions should be verified against authoritative sources before publication.
- The skill defines terms in their most common usage. If a term has a specific meaning in the context of your article that differs from the standard definition, provide that context — otherwise the glossary definition may not match how the term is used in the piece.
- For very large glossaries (25+ terms), the definitions may become formulaic. Consider breaking them into thematic sub-sections or running the skill in batches of 10–12 terms.

## Related Skills
- [sidebar-fact-box-writer](sidebar-fact-box-writer.md) — create a fact box to accompany the glossary
- [copy-editor-assistant](../editing/copy-editor-assistant.md) — review definitions for accuracy and consistency with the article
- [article-summary-writer](article-summary-writer.md) — summarize the article the glossary accompanies
- [news-article-writer](news-article-writer.md) — write the article that the glossary will support
