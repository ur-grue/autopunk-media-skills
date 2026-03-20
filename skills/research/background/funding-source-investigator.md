---
name: funding-source-investigator
status: stable
category: research
subcategory: background
version: 1.0
eval_score: 4.5
tags: [research, funding, transparency, NGO, investigation, background]
---

# Funding Source Investigator

## What This Skill Does
Produces a structured research plan for tracing the funding sources of an organisation — NGO, think tank, campaign group, political organisation, or research institution — identifying the public databases, disclosure requirements, and investigative techniques needed to determine who is paying for the organisation's work and whether that creates conflicts of interest.

## When To Use This Skill
- You are reporting on an organisation that advocates a policy position and need to know who funds them before quoting their research or claims
- You are investigating a think tank, campaign, or lobby group and need to trace the money behind it
- You need to verify whether an apparently independent organisation has financial ties to the industry or interest group it is commenting on
- You are covering a controversy and one side is funded by sources that are not publicly disclosed — you need a plan to find them

## What You Need To Provide
**Required:** The name of the organisation; the country it is based in; what it does (advocacy, research, lobbying, grant-making, campaigning).

**Optional:** Any funding sources you already know about; the specific policy area or controversy the organisation is involved in; whether the organisation is a registered charity, non-profit, trade association, or unincorporated entity (affects which disclosure rules apply); the depth of investigation needed (quick check vs. deep trace).

## How Claude Approaches This
1. **Identifies the disclosure regime.** Based on the organisation type and jurisdiction, determines what funding information is legally required to be public — charity accounts, non-profit tax filings, lobbying disclosures, political donation reports, grant databases — and where to find it.

2. **Lists the specific databases and records to check.** For each disclosure category, names the exact database or filing location and specifies what information it contains. Distinguishes between sources that reveal donor identity (e.g., tax filings listing major donors) and sources that reveal only aggregate amounts.

3. **Provides indirect tracing strategies.** For organisations that do not disclose their funders publicly, lists the indirect methods for identifying funding — following the money backwards from grant-maker databases, checking donor annual reports, searching foundation tax filings, and cross-referencing conference sponsorships, event programmes, and public acknowledgements.

4. **Builds a conflict-of-interest checklist.** Based on the organisation's stated mission and the policy area it operates in, identifies the specific funding relationships that would constitute a conflict of interest — and the records that would reveal them.

5. **Flags the opacity indicators.** Lists the organisational characteristics that suggest deliberate funding opacity — fiscal sponsorship arrangements, donor-advised funds, pass-through entities, and umbrella organisations that obscure the original source of money.

## Output Format
700–1,000 words. Four sections: **Mandatory Disclosures** (what the organisation is legally required to publish and where to find it), **Voluntary and Indirect Sources** (databases and techniques for finding funding that is not mandatorily disclosed), **Conflict-of-Interest Checklist** (specific relationships to investigate), and **Opacity Indicators** (patterns that suggest deliberate non-disclosure). Tone: investigative, precise, neutral. No assumptions about whether the organisation is hiding anything — the plan is designed to find facts.

## Quality Criteria
- [ ] Mandatory disclosure sources are accurate for the specified jurisdiction and entity type
- [ ] Database names are real and accessible — not generic references to "public records"
- [ ] Indirect tracing strategies are practical and genuinely useful — not obvious advice
- [ ] Conflict-of-interest checklist is specific to the organisation's field and mission
- [ ] Opacity indicators describe real patterns used to obscure funding, not speculative concerns
- [ ] The plan distinguishes between what is required to be public and what must be actively investigated
- [ ] Output maintains journalistic neutrality — investigates funding without assuming wrongdoing

## Example

### Input
**Organisation:** A policy research institute (think tank) that publishes reports on energy regulation and is frequently quoted in media coverage of fossil-fuel transition policies
**Country:** United States
**Entity type:** 501(c)(3) non-profit
**Policy area:** Energy regulation and climate policy
**Known funding:** The think tank lists "corporate partners" on its website but does not name individual donors or amounts
**Depth:** Deep investigative trace

### Output

**Mandatory Disclosures**

- **IRS Form 990.** All 501(c)(3) organisations must file an annual Form 990 with the IRS, which is publicly available. Obtain from: ProPublica's Nonprofit Explorer (free, searchable), GuideStar/Candid (requires free registration for full filings), or the IRS Tax Exempt Organization Search. The Form 990 reveals: total revenue and expenses, top-line revenue by category (grants, contributions, programme service revenue), compensation of officers and key employees, and a list of the highest-paid independent contractors. It does not list individual donors by name (that information is on Schedule B, which is not public for 501(c)(3)s).

- **State charity registration filings.** Many US states require charities soliciting donations to register and file annual reports. Some state filings include more detailed financial information than the federal Form 990. Check: the state attorney general's charity database for the state where the think tank is headquartered and any states where it actively fundraises.

- **Lobbying disclosures.** If the think tank engages in lobbying (permitted for 501(c)(3)s within limits), check the Senate Lobbying Disclosure database and the House clerk's lobbying records. Also check state-level lobbying registers if the think tank operates at state level.

**Voluntary and Indirect Sources**

- **Foundation grant databases.** Many foundations that fund think tanks are themselves required to disclose their grants on their own Form 990 (specifically Schedule I). Search foundation tax filings on ProPublica's Nonprofit Explorer for grants to the think tank. This is the single most effective indirect method for identifying funders of a 501(c)(3) that does not voluntarily disclose donors.

- **Foundation Center / Candid grants database.** Aggregates grant information from foundation filings. Search by recipient name to find grants from foundations to the think tank.

- **Corporate annual reports and CSR disclosures.** Energy companies, trade associations, and industry groups sometimes list their grant recipients or "partner organisations" in annual reports, sustainability reports, or corporate social responsibility disclosures. Search for the think tank's name in the annual reports of the major energy companies.

- **Conference sponsorship and event programmes.** If the think tank hosts events, check the event materials for sponsor logos and acknowledgements. Conference sponsorship lists often reveal funder relationships that are not disclosed elsewhere.

- **Academic citation and co-authorship.** Check whether the think tank's publications include funding acknowledgement statements. Academic convention requires disclosure of funding sources in published research — if the think tank produces research papers, these may include acknowledgements that reveal funders.

- **Wayback Machine.** Check archived versions of the think tank's website. Donor lists, partnership pages, and event sponsor logos are sometimes removed over time. Archived versions may show funders that are no longer publicly acknowledged.

- **Media reports and investigative journalism.** Search news archives (Factiva, LexisNexis) for previous reporting on the think tank's funding. Other journalists may have already uncovered some of this information.

**Conflict-of-Interest Checklist**

For a think tank publishing reports on energy regulation and fossil-fuel transition:

1. Does the think tank receive funding from fossil-fuel companies, their trade associations, or their foundations? Check foundation filings for grants from corporate foundations associated with oil, gas, and coal companies.
2. Does the think tank receive funding from renewable energy companies or environmental organisations? Conflicts can run in both directions.
3. Are any of the think tank's board members or senior staff current or former employees of energy companies? Check the board list against LinkedIn and company biographies.
4. Has the think tank received government grants or contracts related to energy policy? Check USAspending.gov for federal contracts and grants.
5. Do the think tank's published recommendations consistently align with the commercial interests of any identifiable funder category? This is circumstantial, not proof, but it identifies the pattern to investigate.

**Opacity Indicators**

- **Donor-advised funds (DAFs).** If foundation filings show grants to the think tank from a donor-advised fund sponsor (e.g., a community foundation or financial services firm's charitable arm), the original donor is hidden behind the DAF. DAF grants are legal and common, but they are a well-known mechanism for anonymous political and policy funding.
- **Fiscal sponsorship.** If the think tank is fiscally sponsored by another non-profit rather than operating independently, the fiscal sponsor's filings may obscure the think tank's specific funding. Check whether the think tank has its own EIN or operates under another organisation's umbrella.
- **Pass-through organisations.** Check whether any of the think tank's identified funders are themselves funded by the same source. A foundation may exist primarily to aggregate and pass through corporate funding to policy organisations — check the foundation's own Form 990 for its revenue sources.
- **Recent structural changes.** If the think tank recently changed its legal structure (e.g., from 501(c)(3) to 501(c)(4), or created a separate (c)(4) arm), this may affect what funding information is publicly available. 501(c)(4) organisations have fewer disclosure requirements.

## Known Limitations
- Claude cannot access tax filings, grant databases, or any external records. This skill produces the research plan — the journalist must execute the searches. The value is in knowing which databases exist, what they contain, and how to use them systematically.
- US non-profit disclosure rules are specific. For organisations in other jurisdictions, the plan would need to identify the equivalent local disclosure regimes — charity commissions, non-profit registries, and tax authority databases vary significantly by country.
- Funding traces inevitably encounter opacity. Some funding relationships are legally structured to be untraceable through public records. This plan maximises what can be found through public sources, but it cannot guarantee that all funding will be identified.

## Related Skills
- [corporate-structure-brief](./corporate-structure-brief.md) — map the corporate structure of any funder identified
- [person-biography-brief](../people/person-biography-brief.md) — research the individuals behind the funding
- [claim-origin-tracer](../fact-checking/claim-origin-tracer.md) — trace whether the think tank originated specific claims circulating in the debate
- [policy-decision-maker-mapper](../people/policy-decision-maker-mapper.md) — map the decision-makers the think tank is trying to influence
