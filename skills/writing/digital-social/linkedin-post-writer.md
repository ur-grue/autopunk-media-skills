---
name: linkedin-post-writer
status: beta
category: writing
subcategory: digital-social
version: 1.0
eval_score: null
tags: [linkedin, social-media, distribution, journalism, thought-leadership]
---

# LinkedIn Post Writer

## What This Skill Does
Writes a professional LinkedIn post that frames a published article, investigation, or media project as a thought-leadership moment — driving clicks while positioning the author as a credible voice in their field.

## When To Use This Skill
- You have just published a piece and want to announce it on LinkedIn without it reading like a press release
- You want to promote a documentary, podcast episode, or long-form investigation to a professional audience
- You need a post that balances personal voice with editorial credibility
- You are writing on behalf of a publication, channel, or production company rather than an individual journalist

## What You Need To Provide
**Required:** The headline or title of the piece · A two- or three-sentence summary of what the story is about · The core finding, argument, or reveal (the one thing readers should take away) · The URL or publication name · Your tone preference: authoritative, personal/reflective, or conversational

**Optional:** A striking statistic or quote from the piece · Target audience (e.g., policy professionals, media executives, investors) · Whether to include a call-to-action beyond the link · Character limit if your organization enforces one

## How Claude Approaches This
1. Identifies the strongest hook from the piece — a counterintuitive finding, a striking number, or a tension that professional readers will immediately recognise as relevant to their world
2. Frames the post in first person if the author is an individual, or editorial voice if the post is from a publication or production company — maintaining credibility without sounding promotional
3. Opens with the hook (not with "I wrote a piece about…"), builds briefly toward the core insight, then closes with a short call-to-action and the link
4. Formats the post for LinkedIn's reading environment: short paragraphs, selective use of line breaks for pacing, no more than three hashtags placed at the end

## Output Format
180–280 words. Three to five short paragraphs. Ends with a link placeholder and up to three relevant hashtags. Written in plain, confident professional English — no jargon, no hyperbole, no buzzwords ("game-changing", "exciting journey"). Tone matches the seriousness of the subject matter.

## Quality Criteria
- [ ] Opens with a hook that does not begin with "I" or a direct statement of "I published/wrote"
- [ ] The core finding or argument is stated clearly in the first three sentences
- [ ] Reads as natural professional speech — not a press release, not a tweet thread
- [ ] Hashtags are specific and relevant (e.g., #InvestigativeJournalism, #MediaPolicy) — no generic tags like #Content or #Media
- [ ] Could be posted without editing by the journalist or their social media manager

## Example

### Input
**Headline:** Inside the Backlog: How Thousands of Safety Complaints Against Consumer Products Go Unreviewed for Years
**Summary:** A data investigation showing that a major national product safety agency has an internal review queue of more than 14,000 unresolved consumer complaints, some dating back six years. Agency staff say they lack resources; the agency disputes that characterisation.
**Core finding:** The median complaint about a product later recalled for injury risk sat in the queue for 28 months before review — more than twice the agency's own stated target.
**Publication:** Northgate Review
**Tone:** Authoritative
**Optional:** Statistic (28 months median wait), audience is policy and regulatory professionals

### Output
A product is flagged as dangerous. A complaint is filed. Then it sits.

Our data investigation at Northgate Review found that the median safety complaint about a consumer product later recalled for causing injury waited 28 months in a national agency's internal review queue before anyone examined it — more than twice the agency's own stated target. At the time of publication, the queue held over 14,000 unresolved complaints, some dating back six years.

The agency told us it disputes the characterisation that it lacks resources. The numbers told a different story.

This piece took eight months of records requests, interviews with current and former staff, and analysis of internal complaint databases. It raises a question that anyone working in product regulation, consumer policy, or public safety should be asking: if the system designed to catch dangerous products before they hurt more people is running years behind, what are we actually relying on?

The full investigation is linked below. I'd be glad to hear from anyone working in this space.

[Link: northgatereview.com/safety-backlog-investigation]

#ConsumerSafety #InvestigativeJournalism #RegulatoryPolicy

## Known Limitations
- LinkedIn's algorithm favours posts that generate early engagement (comments in the first hour); this skill writes the post but cannot predict or optimise for algorithmic timing
- For highly technical subjects (scientific papers, financial instruments), Claude may simplify the finding more than a specialist audience expects — always review the core claim for accuracy before posting
- The skill produces one version; if you want A/B variants for testing different hooks, request them explicitly with a note on what variable you are testing

## Related Skills
- [social-media-excerpt](../../magazine-journalism/distribution/social-media-excerpt.md)
- [newsletter-blurb-writer](./newsletter-blurb-writer.md)
- [cross-platform-repurposer](../../social-media/strategy/cross-platform-repurposer.md)
