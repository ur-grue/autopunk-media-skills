---
name: newsletter-teaser-writer
status: stable
category: magazine-journalism
subcategory: distribution
version: 1.0
eval_score: 4.5
tags: [journalism, distribution, newsletter, email, promotion]
---

# Newsletter Teaser Writer

## What This Skill Does
Writes a short, high-click newsletter teaser for a published article — including subject line options, preview text, and the teaser body — ready to paste into an email newsletter platform.

## When To Use This Skill
- You are sending a newsletter that promotes one or more newly published articles
- You have a weekly digest email and need compelling teasers that make subscribers click through to the full piece
- Your current newsletter teasers feel like article summaries rather than invitations to read
- You want subject line A/B test options for a high-priority send

## What You Need To Provide
**Required:** Article headline and a 3–6 sentence summary of what the piece covers (or a paste of the article's introduction)
**Optional:** Newsletter tone (formal, conversational, literary, punchy); subscriber audience description; publish platform or CMS link to include; whether this is the only article in the newsletter or one of several; any line from the article you consider the most arresting

## How Claude Approaches This
1. Identifies the single most compelling element in the article — the reveal, the surprising fact, the human moment, or the central tension — and builds the teaser around withholding it just enough to create a click
2. Writes the teaser body (70–120 words) as an entry point, not a summary: it raises the question the article answers, rather than answering it
3. Generates 3 subject line options across different emotional registers (curiosity, urgency, direct)
4. Writes preview text (the 50–80 character snippet visible in inbox before opening) that complements the subject line rather than repeating it
5. Structures the full package: subject line options, preview text, teaser body, and a single in-text link cue ("Read the full piece →")
6. After the package, provides a "Next Step" note: which subject line to use for the primary send, whether to A/B test subject lines C vs. A, and whether social-media-excerpt should be run to create platform posts that drive traffic from the same article

## Output Format
Full newsletter teaser package: 3 subject line options (annotated with register), 1 preview text option, teaser body (70–120 words), and link cue line. Total output length: 250–350 words. Plain prose — no HTML, no headers. Formatted to copy-paste into any newsletter platform. Output ends with a "Next Step" note: which subject line to send first, whether to run an A/B test on two options, and whether to run social-media-excerpt to extend the article's reach across platforms.

## Quality Criteria
- [ ] The teaser creates curiosity without summarizing the article — a reader who finishes the teaser should still need to click to get the answer
- [ ] Subject lines are under 50 characters (optimal for most email clients)
- [ ] Preview text is under 80 characters and does not repeat the subject line
- [ ] The teaser body has a single clear hook sentence in the first line
- [ ] Tone matches the specified publication register throughout all components
- [ ] The link cue appears exactly once and is unambiguous
- [ ] Output includes at least one concrete next action the user can take immediately (select a subject line, schedule the send, or run social-media-excerpt for additional distribution)

## Example

### Input
Article headline: The Rent Is Too Damn Complicated: How Algorithmic Pricing Took Over the Rental Market
Article summary: A reported feature on how property management software now sets rental prices automatically using real-time market data and competitor pricing, a process critics say reduces competition and pushes rents higher in concentrated markets. Includes data from court filings, interviews with tenant advocates, and explanation of how the software works.
Newsletter tone: Serious but accessible; subscribers are educated adults who follow economic policy
Include: Article link placeholder
Most arresting line: "In cities where landlords use the same software, critics argue, there is no longer any meaningful competition on price."

### Output

**Subject Line Options**

A. *The algorithm setting your rent* (curiosity; 34 characters)
B. *How landlords stopped competing on rent* (direct/analytical; 40 characters)
C. *Your landlord isn't setting your rent. Software is.* (provocative; best for high open-rate test; 51 characters — slightly long but punchy)

**Preview Text**
*A quiet piece of property software is changing how cities price housing.* (72 characters)

---

**Teaser Body**

When you search for an apartment, you probably assume landlords set their own prices. Many of them don't anymore.

A new generation of rental pricing software now makes those decisions automatically — scanning competitor listings, vacancy rates, and demand signals in real time, then adjusting rents across entire portfolios. In cities where the major landlords all use the same platform, tenant advocates and antitrust researchers say the effect is the same as price coordination, without any room conversation happening at all.

We reported on how the software works, why it's become the industry standard, and what it means for anyone who rents.

[Read the full piece →](your-link-here)

---

*Use Subject Line A for a standard send; test Subject Line C if open rates on this topic have been lower than average — the second-person framing tends to outperform on housing.*

## Known Limitations
- Newsletter performance (open rate, click-through) depends on list health, send time, and subject line length limits that vary by platform — these are not factors Claude can optimize for
- If the article has a paywall, the teaser may need an explicit paywall signal ("subscriber-only") to manage reader expectations; add this manually
- Very long or complex articles may need a more selective teaser approach — this skill works best when the article has one clear hook; multi-topic roundups require different handling

## Related Skills
- [headline-generator](../ideation/headline-generator.md)
- [social-media-excerpt](social-media-excerpt.md)
- [story-angle-finder](../ideation/story-angle-finder.md)
