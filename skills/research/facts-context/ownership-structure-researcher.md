---
name: ownership-structure-researcher
status: beta
category: research
subcategory: facts-context
version: 1.0
eval_score: null
tags: [research, ownership, media, corporate, transparency, conflict-of-interest]
---

# Ownership Structure Researcher

## What This Skill Does
Produces a structured research framework for tracing who ultimately owns and controls a company or media outlet — including parent companies, holding structures, investors, and beneficial owners — so journalists can identify conflicts of interest, editorial dependencies, or undisclosed relationships before publishing.

## When To Use This Skill
- You are about to publish a story involving a company and need to know who ultimately controls it
- You are investigating a media outlet's editorial line and need to understand its ownership chain
- A source has mentioned a company name you do not recognise and you need to establish its relationship to a larger group
- You are fact-checking a claim about independence, impartiality, or conflict of interest
- You are covering a merger, acquisition, or investment and need to understand the resulting ownership picture
- You need to disclose your outlet's ownership in a transparency statement and want a complete picture

## What You Need To Provide
**Required:** The name of the company or media outlet and the country or countries where it is registered or primarily operates

**Optional:** Any known parent company names, investor names, or brands associated with the entity; the specific concern driving the research (e.g. potential conflict of interest, editorial independence, foreign ownership, state involvement); whether the entity is publicly listed, privately held, or state-owned

## How Claude Approaches This
1. Identifies the ownership model (publicly listed, private, state-owned, non-profit, trust-owned, cooperative, etc.) and explains what disclosure obligations typically apply to each type in the relevant jurisdiction — so you know upfront how much of the structure is likely to be publicly traceable
2. Maps the layers of ownership that typically exist for entities of this type: the trading entity you can see, any intermediate holding companies, the ultimate beneficial owner (UBO), and any investors or creditors with significant governance rights — framed as a chain of questions to verify rather than assumed facts
3. Lists the specific research questions and public record types most likely to reveal the ownership structure, prioritised by what is easiest to confirm first
4. Flags the red flags that experienced journalists look for: shell company structures, jurisdictions with weak disclosure requirements, recent ownership changes, cross-ownership with other outlets or businesses, and undisclosed related-party relationships

## Output Format
Structured brief of 500–700 words. Four sections: (1) Ownership model and disclosure baseline, (2) Ownership layers to trace — presented as a chain from the visible entity upward to ultimate control, (3) Research questions to answer — bulleted and prioritised, (4) Red flags to check — specific warning signs relevant to this entity type and jurisdiction. Plain prose throughout. Written for a journalist with no corporate finance background.

## Quality Criteria
- [ ] Output is framed as a research framework — what to look for and where — not factual claims about who owns a specific real entity
- [ ] All ownership layers are explained in plain language without assuming financial or legal expertise
- [ ] Research questions are specific, actionable, and answerable through named public sources
- [ ] Red flags section is tailored to the entity type and region, not generic
- [ ] Output explicitly distinguishes between legal ownership (who holds shares) and effective control (who makes decisions) — these are not always the same

## Example

### Input
Outlet: Meridian Broadcasting Group — a regional television network operating in four countries in Eastern Europe. I am writing a story about its coverage of a government infrastructure project that critics say it has treated uncritically. I want to know who owns it and whether there are any relationships with the government or state-linked businesses that could explain the editorial approach.

### Output

**Ownership model and disclosure baseline**

Meridian Broadcasting Group is a private broadcasting group. Private broadcasters in most Eastern European jurisdictions are required to register beneficial owners with national media regulators and business registries — particularly under EU anti-money-laundering directives, which require disclosure of any individual owning more than 25% of shares or exercising equivalent control. However, the quality and currency of these disclosures varies significantly between countries. You are likely to find partial information through official channels and will need to cross-reference multiple sources to build a complete picture.

**Ownership layers to trace**

*Layer 1 — The trading entity:* The broadcasting licence holder in each country. This is the entity that appears on air and in regulatory filings. Confirm the exact legal name of the licence holder in each jurisdiction — it may differ from the brand name.

*Layer 2 — Intermediate holding companies:* Broadcasting groups of this type frequently hold licences through separate national subsidiaries owned by a central holding company, often registered in a low-disclosure jurisdiction (Luxembourg, the Netherlands, Cyprus, and the British Virgin Islands are common). Identify whether a holding company sits above the national licence holders, where it is registered, and who its directors are.

*Layer 3 — Ultimate beneficial owner:* Who is the natural person (or persons) who ultimately controls the group? This may be a founder, a private equity fund's managing partners, or — in cases worth scrutinising — a politically connected individual or family. In EU jurisdictions, UBO registers (required under the 5th Anti-Money Laundering Directive) should name individuals with more than 25% ownership or equivalent control.

*Layer 4 — Investors and creditors with governance rights:* Even where a single individual appears to own the group, significant loans from state-linked banks, development funds, or politically connected investors can create informal control. Check whether the group has disclosed major lenders or has received state aid, subsidies, or preferential broadcast licence terms.

**Research questions to answer**

Licence holders:
- What is the exact legal entity name on each broadcasting licence?
- When was each licence last renewed, and by which regulatory authority?

Holding structure:
- Is there a parent holding company? Where is it registered?
- Who are the named directors of each entity in the chain?

Ultimate beneficial ownership:
- Who is listed as UBO in each country's official register?
- Has the UBO disclosure changed in the past three years?

State and government relationships:
- Has the group received state advertising spend from government ministries or state-owned enterprises?
- Does any director or shareholder hold or have held a political position or public appointment?
- Has the group received broadcast frequency allocations, subsidies, or regulatory decisions that were contested or unusual?

**Red flags to check**

- Holding company registered in a jurisdiction with weak beneficial ownership disclosure (BVI, Cayman Islands, certain EU member states with poor enforcement)
- Ownership changes shortly before or after a major regulatory decision, election, or contract award
- Cross-ownership with businesses that have commercial relationships with the government (construction, energy, telecoms)
- Loans from state-owned or state-linked banks to a nominally private media group
- Directors who also sit on boards of state-owned enterprises or government advisory bodies
- Licence renewals granted on unusually favourable terms or without competitive tender

---

## Known Limitations
- This skill produces a research framework, not verified findings. All conclusions about actual ownership must be confirmed against primary sources — company registries, regulator filings, or court documents — before publication.
- UBO registers in several EU countries remain incomplete or difficult to access in practice, despite legal requirements. Gaps in public records do not mean no ownership relationship exists.
- Effective control can be exercised through mechanisms that do not appear in ownership records: editorial agreements, advertising dependency, debt covenants, or informal political relationships. These require human source reporting.
- Corporate structures change. A snapshot from a registry may be months or years out of date. Always check the filing date.

## Related Skills
- [org-structure-researcher](org-structure-researcher.md)
- [facts-context/background-brief-writer](background-brief-writer.md)
- [magazine-journalism/legal/defamation-risk-checker](../../magazine-journalism/legal/defamation-risk-checker.md)
