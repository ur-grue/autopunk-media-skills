---
name: coverage-gap-identifier
status: beta
category: research
subcategory: media-competitive
version: 1.0
eval_score: null
tags: [competitive-research, story-development, editorial-planning]
---

# Coverage Gap Identifier

## What This Skill Does
Analyses existing coverage on a topic to identify the specific angles, voices, and questions that no outlet has meaningfully addressed — producing a prioritised list of story opportunities your outlet can own.

## When To Use This Skill
- When pitching an original story and you need to demonstrate to an editor that your angle has not already been done
- When developing a series and you need to map where genuine white space exists across the coverage landscape
- When an editor suspects a story is "over-covered" and you need to find out whether that's true or whether it just feels that way
- When building an editorial calendar and you want to identify topics where sustained, differentiated coverage could establish your outlet as the definitive source

## What You Need To Provide
**Required:** A description of the topic or story area. A summary of what existing coverage you are aware of — which outlets have covered it, in what formats, from what angles. The more specific and accurate this description, the more targeted the gap analysis will be.
**Optional:** Your outlet's audience and format (so Claude can prioritise gaps that are a realistic fit for you, not just gaps in the abstract). Any sources or communities you have access to that mainstream outlets may not. A time range for the coverage you want assessed.

## How Claude Approaches This
1. Reads the coverage summary and maps what has been done: the dominant frames, the source types used, the formats deployed, the questions the existing body of coverage collectively asks — and implicitly treats as answered.
2. Identifies structural gaps: angles that are logically adjacent to the existing coverage but not addressed; voices and demographics present in the story but absent from reporting; questions that follow directly from published claims but have not been pursued; formats that could reach audiences the current coverage does not serve.
3. Prioritises the gaps by opportunity quality — distinguishing gaps that are unexplored because they are genuinely hard to report from those that are unexplored simply because no outlet has tried, and flagging which opportunities best fit the outlet profile you described.

## Output Format
A structured brief of 400–600 words in three sections:
- **What the coverage has established** (3–5 bullets): a compressed account of what existing reporting has already done well — this is context, not praise.
- **Identified gaps** (5–8 bullets): each gap named and described in one to two sentences, noting what is missing and why it matters.
- **Prioritised opportunities** (3 bullets, ranked): the three gaps most worth pursuing given your outlet's audience and resources, with a brief rationale for each ranking.

Tone is direct and editorial — written for a commissioning editor making a decision, not for a general reader. Avoid phrases like "it would be interesting to explore."

## Quality Criteria
- [ ] Every gap identified is genuinely absent from the coverage description provided — no gap should describe something that was mentioned in the input as already covered
- [ ] Each gap entry names the missing element specifically (a source type, a question, a demographic, a format), not vaguely ("more depth" or "a different perspective")
- [ ] The prioritised opportunities reflect the outlet profile provided — gaps that are a poor fit for the outlet's format or audience are not ranked highly regardless of their intrinsic interest
- [ ] "What the coverage has established" is accurate and fair — it should not understate what exists in order to make the gaps appear larger
- [ ] Output stays within the 400–600 word range

## Example

### Input
**Topic:** The effect of short-term rental platforms on housing availability in mid-size cities.

**Existing coverage I'm aware of:** Most national coverage focuses on major tourist cities — large coastal destinations and capital cities — with data on the conversion of long-term rental stock into short-term listings. Local newspapers in affected mid-size cities have run complaint-led stories quoting tenants and local councillors. One long-read in a national magazine profiled a family displaced from their apartment. Two investigative pieces have exposed landlords operating illegal multi-property short-term rental portfolios. Academic economists have been the dominant expert voice across most pieces.

**Our outlet:** A digital magazine for urban policy professionals and local government practitioners. Audience is planners, housing officers, council members, local authority communications teams. We publish 1,500–2,500 word features and occasional data-led explainers. We have strong access to local government sources.

**Time range:** Last two years.

### Output

**What the Coverage Has Established**

- Short-term rental platforms are measurably reducing long-term rental supply in major tourist cities, with conversion rates documented by investigative outlets.
- Individual displacement stories are well-reported at the human level, establishing the harm is real and affects specific people.
- Illegal multi-property operations exist and have survived regulatory attempts; enforcement is a documented weakness.
- Academic economists have provided the dominant analytical frame — the problem is consistently described in terms of market distortion and supply reduction.
- Local elected officials have been quoted reactively (responding to stories) rather than interviewed in depth about what policy options they have genuinely considered.

**Identified Gaps**

- **Mid-size cities as a distinct category.** All rigorous data and most long-form reporting focus on major tourist cities. Mid-size cities — where the platform effect on a smaller rental market may be proportionally more severe — have almost no dedicated analysis. The dynamics are likely different enough to require separate treatment.
- **The practitioner perspective in local government.** Housing officers and planners who are designing and implementing local responses are almost entirely absent from national coverage. Their operational knowledge — what works, what doesn't, what they wish they had legal power to do — represents an unreported dimension of the story.
- **Comparative local policy outcomes.** Some mid-size cities have introduced licensing schemes, zoning restrictions, or platform data-sharing agreements. No coverage systematically compares what these interventions have actually achieved. The policy field is operating without a shared evidence base.
- **The platform compliance picture.** Coverage focuses on what platforms have failed to prevent. There is almost no reporting on what platforms have agreed to do in specific local authority partnerships and whether those agreements are being honoured.
- **Landlord economics in mid-size markets.** The decision calculus for a landlord switching from long-term to short-term letting in a mid-size city — where tourism income is lower but so is the long-term rental market — has not been reported. Understanding this would identify whether different incentive structures apply.
- **Renters who have not yet been displaced.** Existing human-interest coverage finds people after displacement. The experience of renters currently living with insecurity — aware their building has been partially converted, uncertain about their own tenancy — is unreported.
- **Data access as a policy lever.** A handful of cities have negotiated platform data-sharing agreements. What data they receive, how they use it, and whether other councils can replicate the arrangement is a practical question no outlet has answered.

**Prioritised Opportunities**

1. **Comparative local policy outcomes** — highest priority for your audience. Housing officers and policy professionals need an evidence base that does not yet exist in published form. This is a gap your access to local government sources makes you specifically positioned to fill, and it would be directly useful to your readers in their daily work.

2. **The practitioner perspective in local government** — strong fit with your access and audience. A feature built around extended interviews with housing officers across three or four mid-size cities would be distinctive nationally and immediately relevant to practitioners navigating the same problems without knowing how their peers are approaching them.

3. **Comparative platform compliance** — analytically important and underreported, though it would require document access or Freedom of Information requests to do rigorously. Worth commissioning as an investigation rather than a feature; timeline will be longer but the story has strong legs if the compliance picture is as patchy as existing reporting implies.

## Known Limitations
- The quality of the gap analysis depends entirely on the accuracy and completeness of the coverage summary you provide. If significant pieces of existing coverage are not mentioned in your input, Claude may identify them as gaps when they are in fact already covered. Spend time on the input — it is the most important part of this skill.
- Claude cannot search the internet or retrieve articles. This skill analyses what you describe, not the full universe of published coverage. For high-stakes commissioning decisions, cross-check identified gaps with your own desk research.
- Some gaps are unexplored for good editorial reasons — the story is legally sensitive, sources are inaccessible, or the evidence does not yet exist to support rigorous reporting. Claude will flag difficulty where it is apparent, but you will need to make the final call on feasibility.
- This skill identifies opportunities; it does not write pitches or research briefs. Use the output as input to other skills or your own commissioning process.

## Related Skills
- [competitor-coverage-brief](./competitor-coverage-brief.md)
- [competitor-framing-analyzer](./competitor-framing-analyzer.md)
- [research-brief-creator](../../magazine-journalism/ideation/research-brief-creator.md)
- [story-angle-finder](../../magazine-journalism/ideation/story-angle-finder.md)
