---
name: funding-sources-researcher
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [funding, NGO, think-tank, transparency, investigation, conflicts-of-interest]
---

# Funding Sources Researcher

## What This Skill Does
Produces a structured research brief on the known and probable funding sources of an NGO, think tank, advocacy group, or foundation — including disclosed donors, funding structures, potential conflicts of interest, and the key questions a journalist should pursue.

## When To Use This Skill
- You are quoting or featuring an organisation as a source or authority in a story and need to understand who funds it
- You are investigating a policy campaign or public advocacy effort and want to trace financial backing
- An editor has asked you to add a transparency note about an organisation cited in your piece
- You are writing about a think tank's research and need to know whether any funders have an interest in the conclusions

## What You Need To Provide
**Required:** The name of the organisation (or a clear description if the name is not known), the country or region it operates in, and the topic area it works in.

**Optional:** Any specific funder names you already know or suspect; the publication context (news story, investigation, explainer, broadcast report); whether you need a formal disclosure note drafted for publication, or a background brief for editorial use only.

## How Claude Approaches This
1. Establishes what is publicly known about the organisation's funding model — whether it discloses donors, publishes annual reports, holds charity or foundation status (which may trigger disclosure requirements), or has been the subject of prior journalism on its finances.
2. Identifies the categories of funders that typically back organisations of this type in this policy space — governments, corporate foundations, industry bodies, high-net-worth donors, international development agencies — and explains what each category of funding tends to imply about independence and potential bias.
3. Highlights any known or reported funding relationships that raise transparency questions, based on publicly available information, and frames the key investigative questions the journalist should ask.
4. Produces a structured brief with a summary, a funding profile section, a conflicts-of-interest flags section, and a list of recommended next steps for verification.

## Output Format
A four-section research brief, typically 400–600 words:
1. **Organisation summary** (2–3 sentences): what the organisation does and claims to be
2. **Known funding profile**: what is publicly disclosed, what structure it operates under, and what the disclosed information does or does not reveal
3. **Transparency flags**: specific relationships, funding gaps, or disclosures that warrant journalistic scrutiny — written as neutral observations, not allegations
4. **Recommended next steps**: 4–6 specific actions the journalist can take to verify or deepen the picture (e.g., which public registry to search, what to request under freedom of information, which former staff might be contactable)

Tone is analytical and neutral. The brief does not conclude that an organisation is corrupt or compromised — it maps what is known and what needs to be established. Suitable for editorial use; not formatted for direct publication.

## Quality Criteria
- [ ] The organisation's public disclosure status is accurately characterised (not conflated with assumptions)
- [ ] Transparency flags are clearly distinguished from established facts
- [ ] Recommended next steps are actionable — they name specific registries, filing types, or investigative approaches, not generic advice
- [ ] The brief does not make allegations it cannot support from public information
- [ ] Funder categories are contextualised — the brief explains why a particular type of funder matters, not just that it exists

## Example

### Input
Organisation: The Centre for Sustainable Energy Futures (CSEF) — a UK-based think tank publishing research on energy transition policy.
I'm quoting their director in a piece on government renewable energy subsidies. Need to know who funds them before I use them as a source.

### Output

**Organisation Summary**

The Centre for Sustainable Energy Futures (CSEF) presents itself as an independent research body focused on energy transition policy, with particular emphasis on grid infrastructure, subsidy design, and regulatory frameworks. It publishes policy papers and provides expert comment to media. It is incorporated as a private limited company by guarantee in the UK, not as a registered charity, which limits mandatory public disclosure of its finances.

**Known Funding Profile**

CSEF does not publish a donor list or annual accounts in a form accessible to the public, as its corporate structure does not require it to do so under UK Companies House rules. Its website states it receives support from "a range of public and private sector partners" but does not name them. A 2022 investigation by a financial transparency advocacy group listed CSEF as one of fourteen UK energy think tanks that declined to disclose funders when asked directly. There is no indication of government grant funding from public records. Its research output has consistently favoured subsidy mechanisms that benefit large-scale renewable project developers over distributed or community energy models — a pattern that does not by itself indicate improper funding, but that makes funder identity a reasonable editorial concern.

**Transparency Flags**

- The gap between CSEF's claimed independence and its refusal to disclose funders is itself a transparency issue worth noting in your piece, regardless of what those funders turn out to be.
- Energy think tanks of this type are frequently funded by a combination of utilities, renewable energy developers, and law firms with energy sector practices. Any of these would represent a potential interest in the subsidy policy questions CSEF researches.
- The director you are quoting has previously appeared at events co-sponsored by two major renewable infrastructure investment funds. These relationships do not establish funding, but they establish connection and are worth disclosing.

**Recommended Next Steps**

1. Search Companies House for CSEF's filed accounts — even limited accounts may reveal whether it has significant income from a small number of sources.
2. Send a formal written request to CSEF's press contact asking for a list of funders contributing more than 5% of annual income. Their response (or refusal) is itself newsworthy and quotable.
3. Check the Electoral Commission's register of donations — if any CSEF-linked entity has donated to political parties, it will appear there.
4. Search the Transparency Register maintained by the European Commission — if CSEF has sought to influence EU energy policy, it may have filed there with fuller disclosure than it provides in the UK.
5. Contact the financial transparency group that conducted the 2022 review — they may have additional documentation.
6. If you use the director as a source, a one-sentence disclosure in your piece is advisable: "CSEF does not publicly disclose its funders." This protects you and your publication regardless of what the investigation reveals.

## Known Limitations
- This skill works from publicly available information only. If an organisation has not disclosed its funders and has not been the subject of investigative reporting, Claude's brief will map the uncertainty rather than resolve it — the investigative work remains with the journalist.
- Claude cannot access live charity commission databases, company registries, or freedom-of-information systems. Registry searches described in the recommended next steps must be conducted by the journalist.
- For organisations in countries with limited public financial disclosure requirements, the brief may have significantly less to work with. Claude will be explicit about this rather than filling gaps with speculation.
- This skill is a research starting point, not a publishable transparency audit. Any conclusions drawn from it must be verified before they appear in print or broadcast.

## Related Skills
- [background-brief-writer](./background-brief-writer.md)
- [source-credibility-scorer](../../magazine-journalism/fact-checking/source-credibility-scorer.md)
- [document-analysis-brief](../../magazine-journalism/investigation/document-analysis-brief.md)
- [foia-request-writer](../../magazine-journalism/investigation/foia-request-writer.md)
