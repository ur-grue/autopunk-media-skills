---
name: fact-sheet-compiler
status: stable
category: production-support
subcategory: reference
version: 1.0
eval_score: 4.44
tags: [production-support, fact-sheet, reference, research, editorial, briefing]
---

# Fact Sheet Compiler

## What This Skill Does
Compiles a structured, scannable fact sheet on a topic — organizing key data, definitions, timelines, and context into a single reference document for editorial teams, producers, or journalists working on a story.

## When To Use This Skill
- You are briefing a team on a topic before production begins and need a single-page reference they can consult during shoots, interviews, or writing
- A reporter is covering a complex story and needs the essential facts, figures, and context organized in one place
- You need to prepare background material for a guest or interviewee so they can review the key facts before recording
- You are handing off a story to another journalist or editor and want to provide a structured briefing document rather than raw notes

## What You Need To Provide
**Required:** The topic or subject area; the purpose (editorial briefing, interview prep, audience-facing explainer, production reference); any raw material to draw from (notes, articles, data points, links to background reading).

**Optional:** Specific questions the fact sheet must answer; the target audience for the fact sheet (editorial team, on-air talent, general readers); preferred length (one page, two pages, comprehensive); whether to include a timeline; whether to include a glossary of key terms; any data or statistics that must appear; sources to cite.

## How Claude Approaches This
1. **Identifies the core facts the audience needs.** Starts with the user's raw material and the stated purpose. For an editorial briefing, prioritizes context, key players, and open questions. For interview prep, prioritizes facts the interviewer needs to have at their fingertips. For a production reference, prioritizes dates, names, locations, and technical details.

2. **Organizes facts into scannable sections.** Uses a consistent structure: Overview (2–3 sentences), Key Facts (bulleted list of the most important data points), Timeline (if applicable), Key Players/Organizations, and Context (background that explains why this topic matters now). Sections can be read independently — a producer can grab just the timeline without reading the overview.

3. **Writes for speed, not style.** Fact sheets are reference documents, not narratives. Every sentence states a fact. No rhetorical flourishes, no opinion, no analysis unless specifically requested. Numbers are presented with their source. Dates include day, month, and year. Names include titles and affiliations on first mention.

4. **Includes a glossary when the topic requires one.** If the subject involves technical terms, acronyms, or jargon that the target audience may not know, adds a brief glossary at the end. Definitions are one sentence each — precise, not exhaustive.

5. **Flags unverified or uncertain information.** If the user's raw material contains claims that cannot be confirmed from the provided sources, or if key data points are missing, Claude flags them explicitly (e.g., "Source not confirmed — verify before publication"). The fact sheet should be a reliable starting point, not a source of error.

## Output Format
A structured document with clearly labeled sections. Standard sections: Overview (2–3 sentences), Key Facts (6–12 bulleted items), Timeline (if applicable, chronological), Key Players (names, titles, roles), Context (1–2 paragraphs), and Glossary (if needed). Total length: 400–800 words for a standard fact sheet, up to 1,500 for a comprehensive briefing. Tone: neutral, factual, precise. No narrative voice. Formatted for easy printing or screen reference — headers, bullets, bold for key terms.

## Quality Criteria
- [ ] Every fact is attributed to a source or flagged as unverified
- [ ] The overview conveys the essential story in three sentences or fewer
- [ ] Key facts are specific — numbers, dates, names — not vague summaries
- [ ] Sections are self-contained and can be read independently
- [ ] No opinion or analysis unless the user specifically requested it
- [ ] Glossary terms are defined in one sentence each — precise and jargon-free
- [ ] Missing information is flagged explicitly rather than silently omitted
- [ ] Total length stays within the requested range

## Example

### Input
**Topic:** Community solar programs — what they are, how they work, current state of adoption
**Purpose:** Editorial briefing for a magazine team beginning a three-part series on renewable energy access
**Target audience:** Editors and reporters, some of whom are new to energy policy
**Length:** Standard (one page)
**Raw material:** "Community solar lets people subscribe to a share of a solar farm without installing panels on their own roof. It's growing fast — about 6 GW of capacity in the US as of late 2025. Low-income access is a big policy question. Around 22 states plus DC have enabling legislation. The federal Inflation Reduction Act included incentives. Main developers include companies building 1-5 MW facilities. Subscribers typically save 5-15% on their electricity bill."

### Output

# Community Solar Programs — Editorial Fact Sheet

**Prepared for:** Editorial team, renewable energy series
**Date:** March 2026
**Status:** Working reference — verify all figures before publication

---

## Overview

Community solar allows households and businesses to subscribe to a share of a local solar installation and receive credits on their electricity bill, without installing panels on their own property. The model has grown rapidly since 2020 and is now a central policy tool for expanding renewable energy access to renters, low-income households, and people whose roofs are unsuitable for solar. Approximately 6 GW of community solar capacity is operational in the United States as of late 2025.

## Key Facts

- **What it is:** A shared solar installation (typically 1–5 MW) where subscribers buy or lease a portion of the output and receive bill credits from their utility.
- **Who can subscribe:** Any electricity customer in a participating utility territory — homeowners, renters, businesses, nonprofits, and municipal buildings.
- **Typical savings:** Subscribers save an estimated 5–15% on their monthly electricity bill, depending on the program structure and local utility rates.
- **Current US capacity:** Approximately 6 GW as of late 2025. *Source: user-provided figure — verify against the most recent industry report (SEIA or CCSA data).*
- **State legislation:** 22 states plus the District of Columbia have enabling legislation for community solar programs. *Verify current count — this figure may have changed since the user's source was published.*
- **Federal incentives:** The Inflation Reduction Act (2022) included tax credits and bonus incentives for community solar projects, particularly those serving low-income subscribers.
- **Project scale:** Most community solar installations are 1–5 MW — large enough to serve hundreds of subscribers but small enough to site on underused land (brownfields, capped landfills, agricultural margins).

## Key Questions for the Series

- **Access equity:** What percentage of community solar subscribers are low-income households? Is the model reaching the populations it was designed to serve, or are savings mostly flowing to middle-income subscribers?
- **Utility cooperation:** How do utilities participate? Are they enabling or obstructing community solar programs?
- **Land use:** Where are these installations being built, and are there emerging conflicts with agricultural land or conservation priorities?

## Glossary

- **Community solar:** A shared solar installation where multiple subscribers receive bill credits proportional to their share.
- **Bill credit:** A reduction on a subscriber's electricity bill, calculated based on the energy produced by their share of the solar installation.
- **Enabling legislation:** State laws that require utilities to allow community solar programs and establish rules for subscriber bill credits.
- **SEIA:** Solar Energy Industries Association — the main US trade association for the solar industry. Publishes quarterly market data.
- **CCSA:** Coalition for Community Solar Access — an industry group focused specifically on community solar policy and market development.

---

*Note: All figures in this fact sheet are drawn from the raw material provided. Verify the 6 GW capacity figure and the 22-state count against the most recent SEIA or CCSA quarterly report before publication.*

## Known Limitations
- Claude compiles fact sheets from the raw material provided by the user and its general knowledge. It cannot access real-time databases, verify statistics against live sources, or confirm that cited figures are current. Every fact sheet should be treated as a starting point for further verification, not as a primary source.
- For rapidly evolving topics (legislation, market data, personnel changes), fact sheets can become outdated within weeks. Include a "Date prepared" line and schedule a refresh before publication deadlines.
- This skill organizes and presents facts — it does not perform investigative research, FOIA analysis, or original data gathering. For research-intensive briefings, combine this skill with dedicated research tools and primary source review.

## Related Skills
- [research-brief-creator](../../magazine-journalism/ideation/research-brief-creator.md) — create a research brief to guide reporting on the topic
- [teaser-block-writer](./teaser-block-writer.md) — write teasers linking to articles that draw on this fact sheet
- [cms-metadata-writer](../formatting/cms-metadata-writer.md) — write metadata for articles published from this research
- [interview-question-builder](../../podcast/pre-production/interview-question-builder.md) — build interview questions informed by the fact sheet
