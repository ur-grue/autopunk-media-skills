---
name: journal-landscape-guide
status: beta
category: research
subcategory: scientific-academic
version: 1.0
eval_score: null
tags: [research, science, journals, academic-literature, health, orientation]
---

# Journal Landscape Guide

## What This Skill Does
Maps the academic publishing landscape for a given field — explaining which journals matter, what they signal about credibility, and where preprints fit — so journalists can navigate scientific literature without prior academic training.

## When To Use This Skill
- You are assigned to cover a scientific or health topic you have not reported on before
- A source mentions a journal name and you want to know whether it is considered credible in its field
- You are starting a research phase and need to know where experts in this field publish
- You want to understand the difference between peer-reviewed journals and preprint servers for a specific discipline

## What You Need To Provide
**Required:** The field or topic you are covering (e.g., "childhood nutrition," "climate attribution science," "mRNA vaccine technology," "sleep medicine")
**Optional:** Any journal names you have already encountered that you want contextualised; whether your angle is cutting-edge findings or established consensus

## How Claude Approaches This
1. Identifies the field's publishing ecosystem — the major peer-reviewed journals, who publishes them, and what audience they are written for (specialists vs. clinicians vs. interdisciplinary readers)
2. Explains the credibility signals journalists should look for: whether a journal is indexed in major databases, whether it has editorial peer review, and what impact factor roughly indicates (without overstating its meaning)
3. Flags the role of preprint servers relevant to the field — where preliminary work appears before peer review — and explains what "not yet peer-reviewed" means in practice for reporting
4. Highlights any known prestige tiers within the field and notes which types of journals are more likely to publish novel, controversial, or incremental findings
5. Identifies common gotchas: predatory publishers, journal names that sound authoritative but are not well-regarded, and why a study appearing in a high-prestige journal is not automatically correct

## Output Format
Structured briefing, 400–600 words. Sections: (1) Core journals — two to five journals with a one-sentence description of each; (2) Preprint landscape — what exists, what to watch for; (3) Reading the signals — how to quickly assess whether a journal is credible; (4) Common traps — at least two field-specific warnings. Plain language throughout: no academic jargon without immediate explanation. Suitable for sharing directly with a reporter or editor.

## Quality Criteria
- [ ] Every journal mentioned includes a plain-language description of what kind of research it publishes and who reads it
- [ ] Preprint servers are explained in terms of what "not peer-reviewed" means practically for a journalist (not just as a disclaimer)
- [ ] The output names at least one credibility trap specific to the field, not a generic warning
- [ ] Language is accessible to a journalist with no science background — no undefined acronyms, no assumed knowledge of academic publishing
- [ ] Output does not recommend or endorse specific studies, only publications and their role in the ecosystem

## Example

### Input
Topic: microbiome research and gut health
I keep seeing studies from journals I don't recognise. I'm covering a feature on how gut bacteria affect mental health — what journals should I be paying attention to, and how do I know if a study is from a credible source?

### Output

**Journal Landscape Guide: Microbiome Research and Gut Health**

**Core Journals in This Field**

The microbiome field publishes across several disciplines, which is why you are seeing unfamiliar names. Here are the ones that carry the most weight:

- **Nature Microbiology** — A high-prestige journal publishing major discoveries in microbiology, including gut microbiome research. Peer-reviewed; aimed at researchers across biology disciplines. Studies here have usually been through rigorous editorial scrutiny.
- **Cell Host & Microbe** — Focuses specifically on how microorganisms interact with host organisms (including humans). Frequently publishes gut-brain axis research. Considered a leading specialist journal.
- **Gut** — Published by the British Medical Journal group. Focuses on gastrointestinal research including the microbiome. Strong track record; aimed at clinicians and researchers. If a gut-health study appears here, it is in a respected home.
- **Microbiome** — Open-access journal dedicated to the field. Solid peer review; important for finding recent work. Because it publishes more volume, quality varies more than in the journals above — read methods sections carefully.
- **Psychosomatic Medicine** and **Neuropsychopharmacology** — Relevant for the mental health angle specifically; these cover the gut-brain connection from the psychiatry and neuroscience side.

**The Preprint Landscape**

Microbiome researchers frequently post to **bioRxiv** (pronounced "bio-archive") before peer review. You will encounter these studies, especially during fast-moving research moments. A preprint has not been independently reviewed — results may change significantly before publication. You can report on preprints, but always say "not yet peer-reviewed" and treat findings as preliminary. Do not cite a preprint as established science.

**Reading the Signals**

Three quick checks before you trust a journal: (1) Search the journal name on PubMed — if it appears there, it meets a baseline indexing standard. (2) Look at the publisher: major academic publishers (Elsevier, Springer Nature, Wiley, BMJ Group) operate peer review at scale; unknown publishers with generic-sounding names are a warning sign. (3) Check if the journal charges authors to publish without offering free access — this alone is not a problem, but combined with a short peer-review turnaround and unfamiliar publisher, it suggests a predatory journal.

**Common Traps**

- **"Gut health" as a marketing term**: Many open-access journals publish microbiome studies with weak methodology because it is a commercially popular topic. A study showing that a specific probiotic strain improves mood should prompt scrutiny of sample size, blinding, and who funded the research — regardless of where it is published.
- **Impressive-sounding journal names**: Journals with names like *International Journal of Microbiome and Nutritional Sciences* may be entirely legitimate or entirely predatory. The name alone tells you nothing. Check the publisher and the indexing status before you rely on any study from an unfamiliar title.

---

## Known Limitations
- Claude cannot verify the current impact factor or indexing status of any specific journal — confirm these details on the journal's own website or through PubMed's journal search before publication.
- The microbiome field moves quickly; journal prestige rankings can shift as new titles emerge and others decline in rigor. This briefing reflects general standing, not a real-time audit.
- For highly specialised sub-fields (e.g., virome research, archaeal microbiome), Claude may not have sufficient detail on which specialist journals are most respected — consult a scientist source in that sub-field.

## Related Skills
- [scientific-literature-brief](./scientific-literature-brief.md)
- [study-methodology-evaluator](./study-methodology-evaluator.md)
- [scientific-consensus-brief](./scientific-consensus-brief.md)
- [paper-plain-language-summary](./paper-plain-language-summary.md)
