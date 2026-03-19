---
name: historical-precedent-finder
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [history, context, precedent, background, research]
---

# Historical Precedent Finder

## What This Skill Does
Given a current event or situation, surfaces the most relevant historical precedents — past episodes that parallel it in cause, mechanism, or consequence — and explains what those parallels mean for your reporting.

## When To Use This Skill
- You are covering a story and need historical context before writing or going on air
- Your editor asks "has anything like this happened before?" and you need a credible answer fast
- You want to test whether a situation is genuinely unprecedented or only feels that way
- You are building a documentary or long-form piece and need historical framing that will hold up to scrutiny
- You need to explain a complex current event to a general audience using a familiar analogy

## What You Need To Provide
**Required:** A description of the current event or situation — what happened, where, and the key actors or forces involved. Two or three sentences is enough; more detail produces sharper results.

**Optional:** The angle or focus of your story (economic impact, political consequences, human cost). The audience you are writing for. Any precedents you have already considered, so Claude can go further rather than repeat what you know.

## How Claude Approaches This
1. Identifies the defining features of the situation — the mechanism, the actors, the stakes — rather than surface similarities like geography or industry.
2. Searches for historical cases that match on those deeper features, prioritising cases where outcomes are well-documented and the parallels are defensible to a sceptical editor.
3. For each precedent, explains the parallel clearly, notes where the comparison holds and where it breaks down, and flags what the historical outcome might suggest about the present case.
4. Ranks precedents by relevance and usefulness for journalism, not by fame or drama.

## Output Format
A structured brief of 400–600 words. Begins with one sentence naming the strongest parallel. Then 3–5 precedents, each as a short named block: the historical case, the parallel, the outcome, and one sentence on where the comparison has limits. Closes with a short "What this means for your story" note — a practical prompt for the reporter, not a conclusion. Plain prose throughout; no academic language. No bullet lists within precedent blocks.

## Quality Criteria
- [ ] Each precedent is identified by a specific time period, place, and situation — not a vague category
- [ ] The parallel is explained in terms of mechanism, not just superficial resemblance
- [ ] At least one precedent includes a caveat on where the comparison breaks down
- [ ] The "What this means for your story" note is actionable — it points to a question, angle, or source, not a generalisation
- [ ] No precedent requires the journalist to verify a claim that is obscure or hard to source-check

## Example

### Input
I am covering a story about a mid-sized city that has announced it will stop enforcing a category of minor drug possession laws, even though those laws remain on the books nationally. The police chief and mayor are aligned; the national government has not intervened yet. I want to know whether anything like this has happened before and what usually happens next.

### Output

**Strongest parallel: Sanctuary city non-enforcement policies, United States, 1980s–present**

This situation — a local authority declining to enforce a national law while both remain nominally in effect — has appeared in several documented forms. Here are the most useful precedents for your reporting.

**Local non-enforcement of federal immigration rules (US, 1980s–ongoing)**
Cities in the United States began adopting sanctuary policies from the 1980s onward, instructing local police not to ask about immigration status or assist federal enforcement. The parallel is close: local executive officials aligned, national law unchanged, no formal legal exemption granted. Outcomes varied — some jurisdictions faced funding threats, others operated without consequence for years. The lesson for your story: the stability of such arrangements depends heavily on whether the national government decides enforcement is worth the political cost.

**Decriminalisation without legalisation — Portugal, 2001**
Portugal decriminalised personal possession of all drugs by policy while the underlying criminal statute remained technically in place for several years during the transition. The mechanism is similar: the law exists but is not applied. The outcome was stable over time, partly because the policy was accompanied by a formal administrative diversion structure. Where the parallel breaks down: Portugal's shift was nationally coordinated, not a local government acting against national policy.

**Cannabis non-enforcement ahead of legislation — Netherlands, 1970s**
Dutch police and prosecutors adopted a policy of not charging for small cannabis possession before any formal law change. The result was a long-running legal ambiguity — tolerated locally, unresolved nationally — that persisted for decades. This is the precedent most useful if your story is about what happens when a government chooses to live with the contradiction rather than resolve it.

**State-level resistance to national prohibition — United States, 1920s**
Several US states allowed local authorities to decline active enforcement of federal alcohol prohibition. The result was uneven and ultimately contributed to the credibility collapse of the policy. This precedent is worth noting if your story may develop into one about national policy failure — but use it carefully, as the political context is quite different.

**What this means for your story**
The key question to ask officials is whether there is any formal mechanism behind this non-enforcement — a policy memo, a prosecutorial directive, a written agreement with the national authority — or whether it is purely an informal stance. That distinction determined stability in almost every historical case. It is also worth asking whether national authorities have been notified or consulted, because the historical record suggests that is often what triggers a response.

## Known Limitations
- Claude's knowledge of historical events has a training cutoff and may not include the most recent scholarship or newly declassified documents on a given precedent.
- For events before the mid-twentieth century, documented outcomes are often incomplete or contested; treat those precedents as framing, not as predictive data.
- Precedents from outside the English-language historical record are underrepresented; for stories with strong regional dimensions, a specialist historian or local archive is a better source.
- This skill surfaces parallels — it does not assess the legal, political, or journalistic weight of any specific comparison. That judgement remains with the reporter.

## Related Skills
- [fact-check-prompt](../../magazine-journalism/fact-checking/fact-check-prompt.md)
- [background-brief-writer](background-brief-writer.md)
- [legal-framework-brief](legal-framework-brief.md)
