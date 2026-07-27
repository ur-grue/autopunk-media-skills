---
name: fact-check-prompt
description: "Generates a systematic fact-checking checklist from a draft article, categorizing every verifiable claim by type and priority, with the specific verification question, recommended source type, and appropriate verification strategy for each — across six distinct claim categories with tailored methodologies."
status: stable
category: magazine-journalism
subcategory: editing
version: 2.0
eval_score: 4.4
tags: [journalism, editing, fact-checking, verification, accuracy, claims, sources, interviews, statistics, legal, scientific]
---
# Fact Check Prompt

## What This Skill Does
Generates a systematic fact-checking checklist from a draft article, categorizing every verifiable claim by type and priority, with the specific verification question, recommended source type, and appropriate verification strategy for each. Handles six distinct claim categories — each with its own methodology, red flags, and common errors.

## When To Use This Skill
- You have finished a draft and want to ensure you have not missed any checkable claim before submitting
- You are fact-checking a piece written by another reporter and need a structured inventory of everything that requires verification
- You are on deadline and need to triage — identify which claims carry the most risk and need to be checked first
- You are training a new researcher or fact-checker and want a model for what a systematic check looks like
- You are reviewing an interview-heavy piece and need to verify quotes, titles, credentials, and biographical claims
- You are checking a data-driven article and need to verify statistical claims, survey methodology, and numerical comparisons
- You are editing a piece with legal or regulatory claims and need to confirm statutory citations, court rulings, and regulatory actions
- You are reviewing a story that references scientific studies and need to verify research findings, sample sizes, and journal citations
- You are working on a historical feature and need to verify dates, sequences of events, causation claims, and archival references

## What You Need To Provide

### For any fact-check
**Required:** The draft article text (or the section to be fact-checked); the publication type (news, magazine feature, investigative, profile, opinion with reported elements, data journalism piece).
**Optional:** Which claims you are already confident about (to exclude from the list); any specific high-risk areas you are concerned about; the publication's fact-checking standard (light editorial check vs. full verification with source documentation); whether the piece will appear in print (corrections are permanent) or online (corrections can be appended).

### Additional inputs by claim category
**For interview-heavy pieces:** Whether original recordings or transcripts exist; whether the subject has approved or reviewed quotes; whether the subject holds a public or private role.
**For statistical pieces:** Whether raw data or the underlying dataset is available; whether the writer computed figures independently or is citing a secondary source; the date range of the data.
**For legal/regulatory pieces:** The jurisdiction (federal, state, local, international); whether cases cited are concluded or pending; whether the writer has consulted legal counsel.
**For scientific/medical pieces:** Whether the study cited has been peer-reviewed; whether the writer accessed the full paper or only the abstract/press release; whether the findings have been replicated.
**For historical pieces:** Whether claims come from primary sources (archives, documents, firsthand accounts) or secondary sources (books, articles, encyclopedias); the time period involved.

## How the Assistant Approaches This

The assistant selects the appropriate verification mode based on the dominant claim types in the draft. Most articles contain claims from multiple categories — the assistant applies each category's methodology to the relevant claims within the same checklist.

### Mode 1: Feature Article Claims
Standard mode for narrative magazine pieces, reported essays, and general-interest features.

1. Reads through the draft and extracts every verifiable claim — statistics, dates, names and titles, institutional descriptions, historical facts, legal statements, causal claims ("X caused Y"), and direct quotes attributed to named sources
2. Categorizes claims by risk level: High (statistics, specific numbers, legal or medical claims, anything that could expose the publication to a defamation claim), Medium (biographical details, historical claims, institutional descriptions), Low (widely known facts, claims easily verified in seconds)
3. For each claim: writes the verification question in plain language, recommends the source type, and flags any claim where the draft text itself is ambiguous or internally inconsistent
4. Identifies structural dependencies — claims that rely on each other, where one being wrong invalidates another
5. Closes with a triage recommendation: which High Priority item to verify first, estimated total checking time, and whether to run house-style-enforcer after fact-checking is complete

### Mode 2: Interview and Profile Verification
For profiles, Q&A pieces, and any article built primarily on interviews with named sources.

1. Extracts every direct quote and identifies whether it is attributed to a named source, an anonymous source, or paraphrased
2. For each named source: flags their current title, institutional affiliation, credentials, and any description of their expertise — each of these is a separate verifiable claim
3. Checks biographical claims against what can be verified through public records, institutional directories, and published sources
4. Flags "resume inflation" risks — claims about degrees, awards, founding roles, publication credits, or professional affiliations that sources sometimes overstate
5. For direct quotes: notes whether the quote sounds like spoken language or has been cleaned up to the point of misrepresentation; flags composite quotes (combining statements from different parts of an interview) as a separate risk
6. For anecdotes told by sources: identifies which elements are verifiable (dates, locations, other people present) and which rest entirely on the source's account
7. Closes with a recommendation on which sources to re-contact for quote approval and which biographical claims to verify independently

### Mode 3: Statistical and Data Claims
For data journalism, trend pieces, economic reporting, and any article that depends on numerical claims.

1. Extracts every number in the draft — percentages, dollar amounts, counts, rates, rankings, growth figures, and dates
2. For each number: identifies whether it comes from a named source (a report, agency, or study), the writer's own calculation, or is unattributed
3. Checks mathematical consistency — do the numbers in the piece add up? If a claim says "32 percent," does the underlying figure support that rounding? If a claim says "tripled," is the actual ratio between 2.5x and 3.5x?
4. Flags comparison traps: numbers from different time periods compared without inflation adjustment, percentages computed from different base populations, rates vs. raw numbers mixed in the same paragraph, cherry-picked start/end dates that exaggerate a trend
5. Identifies methodology questions: was the survey nationally representative? What was the margin of error? Is the sample size large enough to support the conclusion drawn?
6. Checks unit consistency: are all dollar figures in the same year's dollars? Are all geographic comparisons using the same boundaries (city vs. metro area vs. county)?
7. Flags "single-source statistics" — numbers that appear nowhere outside the one report or study cited, which means there is no independent confirmation available

### Mode 4: Historical Claims
For historical features, anniversary pieces, retrospectives, and any article that makes claims about past events.

1. Extracts every date, sequence claim ("X happened before Y"), duration claim ("lasted six years"), and causation claim ("X led to Y")
2. Checks dates against multiple independent sources — a single source can contain the same error repeated across secondary works
3. Flags the "first/earliest/only" trap: claims that something was the first, the largest, the only, or otherwise superlative are among the hardest to verify and the easiest to get wrong
4. Identifies anachronism risks — modern terms, titles, or concepts applied to historical periods where they did not exist or meant something different
5. Separates factual claims (what happened, when, where) from interpretive claims (why it happened, what it caused) — both require checking, but by different methods
6. For causation claims: identifies whether the draft asserts direct causation, correlation, or contribution — and whether the evidence cited supports the level of causation claimed
7. Flags "conventional wisdom" claims — widely repeated historical claims that recent scholarship has revised or overturned

### Mode 5: Legal and Regulatory Claims
For court reporting, regulatory coverage, policy analysis, and any article citing laws, rulings, or government actions.

1. Extracts every legal citation — statutes, case names, regulatory codes, executive orders, court rulings
2. Verifies the correct citation format: is the statutory section number accurate? Is the case name correctly styled? Is the court identified correctly?
3. Checks whether the law or ruling cited is still current — has it been amended, repealed, overturned on appeal, or superseded?
4. For claims about what a law "does" or "requires": verifies that the draft's characterization matches the actual statutory language, not just a press summary or advocacy group's interpretation
5. Flags pending vs. concluded cases — a case "decided" by a trial court may be on appeal; a law "passed" by one chamber may not have been signed
6. Identifies jurisdictional accuracy: is the correct court, agency, or legislative body cited? Federal vs. state vs. local distinctions matter
7. Flags "legal conclusion" claims — where the draft states a legal outcome as fact ("this violates the law") when it is actually the writer's or a source's interpretation

### Mode 6: Scientific and Medical Claims
For health reporting, science journalism, environmental coverage, and any article citing research findings.

1. Extracts every research claim — study findings, sample sizes, effect sizes, journal names, institutional affiliations of researchers
2. Checks whether the study cited has been published in a peer-reviewed journal (vs. a preprint, conference paper, press release, or institutional report)
3. Verifies the study actually says what the draft claims it says — the most common error in science journalism is overstating a study's conclusions
4. Flags the "single study" problem: one study showing an effect is not the same as scientific consensus; checks whether the draft implies broader certainty than a single finding supports
5. Identifies sample size and population concerns: was the study conducted on humans or animals? On a specific demographic that may not generalize? Was the sample large enough for the conclusion drawn?
6. Checks for retracted or corrected papers — especially in fast-moving fields where preprints are common
7. Flags correlation-as-causation errors: the draft says "causes" when the study found "is associated with"
8. For medical claims: flags any claim that could affect health decisions (dosage, treatment effectiveness, risk factors) as highest priority regardless of other risk factors

---

## Claim Type Taxonomy and Verification Strategies

Every claim in a draft falls into one of the categories below. The verification strategy differs by type — applying the wrong strategy wastes time or misses the error.

### Identity Claims
**What they are:** A person's name, title, institutional affiliation, credentials, age, location.
**Common errors:** Outdated titles (a department chair whose appointment ended), wrong institutional name (university renamed or merged), misspelled names, wrong middle initial, wrong age (calculated from birth year without checking whether the birthday has passed).
**Verification strategy:** Check the institution's current directory or website. For public figures, cross-reference at least two independent sources. For titles that rotate (department chair, board president), confirm the appointment is current as of publication date. For spelling, check the person's own published work or institutional bio — do not rely on previous news coverage, which may repeat the same error.
**Red flags:** The source's LinkedIn profile lists a different title than the one in the draft. The institution's website does not list the person at all. The person's name is spelled differently in different published sources.

### Numerical Claims
**What they are:** Any specific number — percentages, dollar amounts, counts, rates, rankings, dates, durations, distances, measurements.
**Common errors:** Transposed digits, wrong unit (millions vs. billions), wrong year, wrong geographic scope (city vs. metro vs. county), percentage vs. percentage point confusion, nominal vs. inflation-adjusted dollars, rounding that changes the meaning.
**Verification strategy:** Trace every number to its primary source — the original dataset, report, or record. Do not verify a number by finding it repeated in another news article; the second article may have copied the error. Check whether the number is current or from a specific reporting period. Verify the unit and the base.
**Red flags:** A number that appears in no source other than the one cited. A percentage that does not specify what it is a percentage of. A dollar figure with no year attached. A ranking with no stated universe ("the third-largest" — third-largest in the state, the country, or the world?).

### Quotation Claims
**What they are:** Direct quotes attributed to a named person, paraphrased statements, and characterizations of what someone said or believes.
**Common errors:** Quotes cleaned up beyond recognition, composite quotes (combining statements from different moments), quotes taken out of context (the surrounding sentences reverse the meaning), quotes attributed to the wrong person in a multi-source piece, fabricated quotes.
**Verification strategy:** Compare the quote in the draft against the original recording or transcript. If no recording exists, confirm the quote directly with the source. For paraphrases, confirm with the source that the characterization is accurate. For historical quotes, trace to the earliest published source — many famous quotes are misattributed or apocryphal.
**Red flags:** A quote that sounds too polished for spoken language. A quote that perfectly supports the writer's thesis (sources rarely speak in thesis statements). A historical quote that appears only in secondary sources with no citation to the original.

### Institutional Claims
**What they are:** Descriptions of organizations — their size, founding date, mission, structure, actions, policies.
**Common errors:** Wrong founding date, wrong headquarters location, wrong employee count (headcount vs. FTE, or an outdated figure), mischaracterized mission or mandate, wrong parent company or corporate structure, describing a proposed action as completed.
**Verification strategy:** Check the organization's own public filings, annual reports, or official website — but verify independently when possible, since organizations sometimes misrepresent their own history. For government agencies, check the enabling statute or executive order. For nonprofits, check IRS Form 990 filings (publicly available).
**Red flags:** A founding date that differs between the organization's website and independent sources. An employee count with no date attached. A description of an organization's purpose that sounds like it was copied from marketing material.

### Causal Claims
**What they are:** Assertions that X caused Y, X led to Y, X resulted in Y, or X is responsible for Y.
**Common errors:** Confusing correlation with causation, omitting confounding variables, asserting direct causation when the relationship is indirect or partial, reversing the direction of causation, implying intent where none is documented.
**Verification strategy:** Identify what evidence the draft cites for the causal relationship. Is it a study that controlled for confounding variables? An expert's opinion? A temporal sequence (X happened, then Y happened)? A temporal sequence alone does not establish causation. Check whether the source cited actually claims causation or merely correlation — the draft may overstate the source.
**Red flags:** "Because of," "as a result of," or "led to" without a cited source or mechanism. A causal chain with missing links. A claim that a single factor caused an outcome that experts describe as multi-causal.

### Legal/Regulatory Claims
**What they are:** Citations to laws, court decisions, regulations, penalties, legal standards, rights, or obligations.
**Common errors:** Wrong statutory section number, wrong court, case overturned on appeal but cited as good law, law amended since the draft was written, characterizing a bill as a law (passed one chamber but not signed), describing a legal standard incorrectly.
**Verification strategy:** Check every statutory citation against the current version of the statute (not a summary or press release). For case law, check whether the decision has been affirmed, reversed, or vacated on appeal. For regulatory actions, verify the current status — proposed rules are not final rules. Use official legal databases or government websites, not news summaries.
**Red flags:** A statutory citation that does not match the subject matter described. A court ruling cited without specifying which court. A law described in present tense ("the law requires") when it has been repealed or amended.

### Scientific/Medical Claims
**What they are:** Research findings, health claims, treatment effectiveness, risk factors, environmental data, study conclusions.
**Common errors:** Overstating a study's conclusions (the study found a correlation; the draft says "proves"), wrong sample size, confusing relative risk with absolute risk, citing a preprint or press release as a published study, citing a retracted paper, applying animal study results to humans without noting the limitation.
**Verification strategy:** Access the actual paper (not the press release or abstract). Verify the journal name, publication date, and authors. Check the paper's own limitations section — what the researchers themselves say their study does not prove. For medical claims, check whether major medical organizations or systematic reviews support the conclusion. Search retraction databases (Retraction Watch).
**Red flags:** A finding described as "groundbreaking" or "the first to show" — these phrases often signal a single unreplicated study. A health claim with no citation. A study from a journal you have never heard of. A finding that contradicts the consensus of major medical organizations.

### Historical Claims
**What they are:** Dates, sequences, durations, descriptions of past events, characterizations of historical figures' actions or motives.
**Common errors:** Wrong year (especially for events near a year boundary — December vs. January), wrong sequence (event A actually happened after event B), "first" claims that are wrong (someone else did it earlier), modernized language applied to historical context, simplified causation (reducing a complex historical process to a single cause).
**Verification strategy:** Cross-reference dates in at least two independent sources — not two sources that cite the same original. For "first" claims, search for earlier instances. For causation claims, check whether current historiography supports the causal story told in the draft. Be alert to the difference between primary sources (documents, letters, records from the period) and secondary sources (later accounts that may contain errors).
**Red flags:** A specific date cited from memory rather than a source. A "first" claim with no documentation. A historical anecdote that is too perfect — it may be apocryphal. A claim that relies entirely on one secondary source.

---

## Verification Chain Methodology

A verification chain tracks each claim from the draft back to its original source, through every intermediary. This section explains how to build and evaluate a chain.

### The Chain Structure

Every claim in a published article has a provenance:

```
Draft text → Writer's source → Intermediary (if any) → Primary source
```

**Example:**
- Draft says: "42 percent of teachers reported burnout in 2024"
- Writer got the number from: a newspaper article
- The newspaper got it from: a press release from a teachers' union
- The union got it from: a survey they commissioned from a polling firm
- The polling firm's methodology: online survey of 1,200 union members (not all teachers)

The claim is only as strong as the weakest link. In this example, the draft implies a finding about all teachers, but the primary source surveyed only union members — a specific subset with different demographics and working conditions.

### Building the Chain

1. **Start at the draft.** Copy the exact claim as written.
2. **Identify the cited source.** What does the draft say is the source? If no source is cited, that is itself a red flag.
3. **Access the cited source.** Read what it actually says — not what the draft says it says.
4. **Trace backward.** Where did the cited source get the information? If it is a news article, what report or data did it cite? If it is a report, what methodology did it use?
5. **Reach the primary source.** The primary source is the original data, document, record, or firsthand account. Stop here.
6. **Evaluate each link.** At each step, ask: did the intermediary accurately represent what the source below it said? Did anything get lost, simplified, or distorted?

### Common Chain Failures

| Failure | What Happens | How to Catch It |
|---------|-------------|-----------------|
| Circular sourcing | Two articles cite each other; neither has a primary source | Trace back — if the chain loops, the claim is unverified |
| Telephone effect | Each intermediary slightly changes the claim; by the draft, it is materially different from the original | Compare the draft's claim word-for-word against the primary source |
| Dead source | The original report, dataset, or webpage no longer exists | Try the Wayback Machine; contact the issuing organization; note in the checklist that verification is impossible |
| Misattribution | The draft attributes a finding to Organization A, but Organization A was citing Organization B | Follow the chain until you reach the organization that actually produced the finding |
| Cherry-pick | The primary source contains caveats, limitations, or opposing data that the intermediaries dropped | Read the full primary source, including methodology sections and footnotes |
| Outdated source | The data was accurate when published but has since been updated or corrected | Check whether the issuing organization has published a newer version |

### When the Chain Breaks

If you cannot complete the chain — the cited source does not exist, the primary source contradicts the draft, or the intermediary materially changed the claim — flag the claim as **UNVERIFIED** in the checklist and note exactly where the chain broke. The writer or editor must decide whether to:
- Find an alternative source that supports the claim
- Rewrite the claim to match what the primary source actually says
- Remove the claim from the draft

---

## Red Flags Reference

These patterns signal claims that are likely wrong or unverifiable. When a claim triggers a red flag, escalate it to High Priority regardless of its initial category.

### Language Red Flags
| Flag | Why It Matters |
|------|---------------|
| "Studies show" (no specific study cited) | Unverifiable as written; could be accurate or invented |
| "Experts say" or "critics argue" (no expert named) | Weasel words — who, specifically? |
| "It is well known that" | Often precedes a claim the writer has not actually verified |
| "Up to [number]" | The actual figure could be anything from zero to the stated number |
| "Nearly," "almost," "roughly," "approximately" | What is the real number? Is the rounding defensible? |
| "The first [person/company/country] to" | Superlative claims are wrong more often than any other type |
| "Since time immemorial" / "has always been" | Historical absolutes are almost always wrong |
| "Controversial" (without saying who objects) | Whose controversy? Name the parties |

### Structural Red Flags
| Flag | Why It Matters |
|------|---------------|
| A single source underpins three or more High Priority claims | If that source is wrong, the piece collapses |
| Two numbers compared across different time periods without adjustment | Inflation, population change, or methodological differences may invalidate the comparison |
| A claim in the lede that is not substantiated until paragraph 12 | The reader accepts the claim early; if the support is weak, they never notice |
| An anecdote used to illustrate a trend without data on the trend itself | The anecdote may be an outlier, not a representative case |
| A direct quote that contains a factual claim | The quote is accurate (the source said it), but the fact inside it may be wrong — both need checking |
| Attribution shifts mid-paragraph | "According to Smith" in sentence one; unsourced claim in sentence two — readers may assume sentence two is also from Smith |

### Source Red Flags
| Flag | Why It Matters |
|------|---------------|
| Source has a financial interest in the claim | Industry-funded studies, advocacy groups citing their own data |
| Source is the subject of the story | People and organizations describing themselves are not independent sources |
| Source is a press release, not a study or report | Press releases selectively present findings; the full report may tell a different story |
| Source is a secondary news article | Verify against the primary source — the news article may contain errors |
| Source URL is dead | The claim cannot be verified without finding an archived version |
| Source is a social media post | Social media is evidence that someone said something, not evidence that it is true |

---

## Output Format

### Standard output
Three-section checklist organized by risk level: High Priority, Medium Priority, Low Priority. Each item formatted as:

- **Claim:** [exact quote or close paraphrase from draft]
- **Type:** [Identity / Numerical / Quotation / Institutional / Causal / Legal / Scientific / Historical]
- **Check:** [the verification question in plain language]
- **Source type:** [what kind of source resolves this]
- **Chain status:** [Verified to primary / Traced to intermediary / Untraced / Circular]
- **Flag:** [any red flag, internal ambiguity, or dependency note — omit if none]

Summary at the end: total item count by risk level, estimated checking time, and any structural concerns (single-source dependencies, comparison traps, chain failures). Output ends with a "Next Step" note: which item to verify first, estimated total checking time, and whether to run house-style-enforcer once fact-checking is complete.

### For interview-heavy pieces
Add a separate **Quote Verification** section before the priority checklist. Each entry:
- **Quote:** [the direct quote]
- **Attributed to:** [source name and title]
- **Verification status:** [Recording exists / Transcript exists / Notes only / Unconfirmed]
- **Risk:** [High if the quote could be disputed; Medium if routine; Low if trivially verifiable]

### For data-heavy pieces
Add a separate **Numerical Consistency Check** section after High Priority. This section verifies that numbers within the draft are internally consistent — percentages add up, time series are in the same units, and comparisons use the same base population.

---

## Quality Criteria
- [ ] Every numerical claim in the draft appears in the checklist
- [ ] Every named source's title, institutional affiliation, and credentials appear in the checklist
- [ ] Every direct quote is flagged for verification against the original recording, transcript, or source confirmation
- [ ] High, Medium, and Low categorizations are accurate — medical, legal, or defamation-risk claims never classified below High
- [ ] Verification questions are specific enough to hand to a researcher who has not read the draft
- [ ] Each claim is tagged with a type from the taxonomy (Identity, Numerical, Quotation, Institutional, Causal, Legal, Scientific, Historical)
- [ ] The verification chain status is noted for every High Priority claim
- [ ] Internal inconsistencies in the draft are flagged separately from external fact errors
- [ ] No claims omitted because they "seem obviously correct"
- [ ] Red flags from the reference section are applied — language red flags, structural red flags, and source red flags
- [ ] Structural dependencies between claims are identified (if claim A falls, claims B and C also fall)
- [ ] Single-source dependencies are flagged in the summary
- [ ] For data-heavy pieces, numerical consistency is checked (percentages add up, units match, bases align)
- [ ] For interview-heavy pieces, biographical claims are checked independently of the source's own account
- [ ] Output includes at least one concrete next action the user can take immediately
- [ ] Estimated checking time is realistic (not underestimated to make the list look manageable)

---

## Example 1: Magazine Feature — Remote Work and Commercial Real Estate

### Input
**Draft type:** Magazine feature
**Fact-checking standard:** Full verification with source documentation
**Excerpt (450 words):**

In 2019, roughly 3.6 percent of full-time US workers were working primarily from home, according to the Bureau of Labor Statistics. By 2023, that figure had risen to nearly 28 percent. The shift has reshaped commercial real estate markets, particularly in cities with large technology and financial sectors.

Professor Elena Varga, who chairs the Department of Urban Economics at Northfield University, has been studying downtown vacancy trends since 2018. "We've never seen this kind of structural dislocation in commercial real estate outside of a major war or economic depression," she says. "The difference is that this one was self-inflicted — we had the technology to work remotely before COVID, we just chose not to use it."

The City of Portland, Oregon, saw its downtown office vacancy rate reach 32 percent in the second quarter of 2024, up from 6.5 percent in 2019, according to commercial real estate firm Cushman & Wakefield. City officials have proposed a $45 million adaptive reuse fund to subsidize the conversion of office space to housing. The fund was approved by the Portland City Council in December 2024.

Adaptive reuse is more complicated than it sounds. Most commercial office buildings built in the US between 1970 and 2000 were designed with deep floor plates — sometimes 60 to 80 feet from window to core — that make natural light and ventilation difficult in residential units. A 2022 study from Columbia University's Urban Planning department found that of 1,400 commercial buildings evaluated across 12 US cities, only 17 percent had floor plates suitable for straightforward residential conversion.

The economics are also challenging. The average cost per unit of adaptive reuse conversion in the US was approximately $350,000 in 2023, compared to $220,000 for new construction in a comparable location, according to the National Association of Realtors.

### Output

**Fact-Check Checklist — Remote Work / Downtown Vacancy Feature**

---

**HIGH PRIORITY** *(verify before publication)*

1. **Claim:** "roughly 3.6 percent of full-time US workers were working primarily from home" (2019)
   **Type:** Numerical
   **Check:** Is 3.6% the correct BLS figure for full-time remote work in 2019? Confirm methodology — "primarily from home" may have a specific BLS definition that affects comparability with the 2023 figure.
   **Source type:** Bureau of Labor Statistics — American Time Use Survey or Current Population Survey; confirm exact series.
   **Chain status:** Traced to intermediary — the draft names BLS but does not identify the specific survey. Must trace to the exact dataset.
   **Flag:** The 2019 and 2023 figures need to come from the same BLS survey series for the comparison to be valid. If they come from different surveys with different methodologies, the opening comparison is misleading. **STRUCTURAL DEPENDENCY: Items 1 and 2 are linked — if one fails, the comparison fails.**

2. **Claim:** "By 2023, that figure had risen to nearly 28 percent"
   **Type:** Numerical
   **Check:** Is 28% the correct figure? Cross-check against BLS data. "Nearly 28 percent" implies the actual figure is between 26% and 27.9%. If the actual figure is 24%, "nearly 28" is not defensible.
   **Source type:** BLS primary data; if from a secondary source, trace to the original.
   **Chain status:** Untraced — the draft does not cite a specific report or release for this figure.
   **Flag:** Language red flag — "nearly" is imprecise. What is the real number? This must be pinned to an exact figure.

3. **Claim:** "Professor Elena Varga, who chairs the Department of Urban Economics at Northfield University"
   **Type:** Identity
   **Check:** Confirm current title ("Professor" — assistant, associate, or full?), confirm she currently chairs the department (chair appointments rotate, often every 3-5 years), confirm the department is called "Urban Economics" (not "Urban Studies" or "Urban Planning and Economics").
   **Source type:** University directory or direct confirmation with source. Do not rely on the source's own description — verify independently.
   **Chain status:** Untraced — identity claims require independent verification.
   **Flag:** Resume inflation risk. "Chairs" must be current as of publication date.

4. **Claim:** Portland downtown office vacancy "reach 32 percent in the second quarter of 2024, up from 6.5 percent in 2019, according to Cushman & Wakefield"
   **Type:** Numerical
   **Check:** Verify both figures from the cited Cushman & Wakefield report. Confirm the Q2 2024 report exists. Confirm 32% is the figure for downtown Portland specifically (not metro-wide or the Portland-Vancouver MSA).
   **Source type:** Cushman & Wakefield market report — request the specific report by name and quarter.
   **Chain status:** Traced to intermediary — the draft names the firm but not the specific report title or release date.
   **Flag:** Geographic scope trap. "Downtown" vacancy and "metro area" vacancy are different figures. Confirm the geographic boundary used in the report matches the draft's claim.

5. **Claim:** "$45 million adaptive reuse fund" approved by Portland City Council in December 2024
   **Type:** Institutional
   **Check:** Confirm fund amount ($45 million — not $45 million over multiple years?), approval date (December 2024 — what day?), and council vote result. Is it a fund, a budget allocation, a bond measure, or a proposed line item? Is it fully approved or contingent on a future vote? Has the amount been revised since December?
   **Source type:** Portland City Council meeting minutes, December 2024. Official city press release. Council voting record.
   **Chain status:** Untraced — no specific source cited in draft.
   **Flag:** The draft says "proposed" in one sentence and "approved" in the next. Which is it? If the fund was proposed by officials and then approved by the council, the draft should say so clearly. If it was only proposed, the draft is wrong to say it was approved.

6. **Claim:** Columbia University study found "17 percent had floor plates suitable for straightforward residential conversion" — 1,400 buildings across 12 cities, 2022
   **Type:** Scientific
   **Check:** Confirm the study exists. Verify: publication year (2022), department (Urban Planning — or is it "Urban Planning and Design"?), sample size (1,400 buildings), geographic scope (12 cities — which 12?), and the 17% finding. Access the actual paper — do not verify from a press release.
   **Source type:** Columbia University — identify the specific study title, authors, and publication venue (journal, working paper, or institutional report).
   **Chain status:** Untraced — the draft does not name the study title or authors.
   **Flag:** Source red flag — the draft references a "department" finding, not a specific published paper. Is this a peer-reviewed study, a working paper, a student thesis, or an institutional report? The evidentiary weight differs.

7. **Claim:** "average cost per unit of adaptive reuse conversion... approximately $350,000 in 2023... compared to $220,000 for new construction" — attributed to National Association of Realtors
   **Type:** Numerical
   **Check:** Confirm both figures from NAR. Verify "comparable location" methodology — the comparison is only valid if both figures use the same geographic markets. Confirm whether these are median or mean figures. Confirm whether they include land costs.
   **Source type:** NAR research report — confirm the specific publication title, date, and methodology section.
   **Chain status:** Traced to intermediary — the draft names NAR but not the specific report.
   **Flag:** Comparison trap. "$350,000 vs. $220,000" only means something if both figures are computed the same way, in the same markets, in the same year's dollars. If the adaptive reuse figure includes historic preservation requirements and the new construction figure does not, the comparison is misleading.

---

**MEDIUM PRIORITY**

8. **Claim:** Varga "has been studying downtown vacancy trends since 2018"
   **Type:** Identity
   **Check:** Confirm with source. Is 2018 accurate, or was it a casual approximation in conversation? Does her published work support this — does she have publications on vacancy trends from 2018 or earlier?
   **Source type:** Direct confirmation with source. Cross-reference with her publication record.
   **Chain status:** Untraced.

9. **Claim:** US office buildings "built... between 1970 and 2000 were designed with deep floor plates — sometimes 60 to 80 feet from window to core"
   **Type:** Historical / Numerical
   **Check:** Confirm this is an accurate architectural generalization. Is "1970 to 2000" the correct period for deep-floor-plate construction? Are the 60-80 foot figures sourced from the Columbia study, from architectural references, or from the writer's own description?
   **Source type:** Architecture or real estate reference; or trace to the Columbia study if that is where the figures originated. If the writer paraphrased a general architectural principle, it still needs a source.
   **Chain status:** Untraced.

10. **Claim:** The shift "has reshaped commercial real estate markets, particularly in cities with large technology and financial sectors"
    **Type:** Causal
    **Check:** The causal claim ("reshaped") is a characterization — is it supported by the evidence presented later in the piece? The narrowing to "technology and financial sectors" implies these cities were disproportionately affected. Is that supported by data, or is it the writer's inference?
    **Source type:** Industry reports comparing vacancy rates across city types, or expert attribution.
    **Chain status:** Untraced — no source cited for this characterization.

---

**LOW PRIORITY**

11. **Claim:** "The City of Portland, Oregon"
    **Type:** Identity
    **Check:** Verify city and state — Portland, Maine is a common confusion in copy. The piece discusses commercial real estate; both Portlands have relevant markets.
    **Source type:** Internal consistency — the Cushman & Wakefield report will confirm the geography.
    **Chain status:** N/A

---

**QUOTE VERIFICATION**

| Quote | Attributed to | Type | Risk |
|-------|--------------|------|------|
| "We've never seen this kind of structural dislocation in commercial real estate outside of a major war or economic depression" | Elena Varga, Northfield University | Characterization — contains an implicit historical claim ("never... outside of") | High — "never" is a superlative; if there are other examples of comparable dislocation, the quote is wrong even if Varga said it |
| "The difference is that this one was self-inflicted — we had the technology to work remotely before COVID, we just chose not to use it" | Elena Varga | Opinion/interpretation | Medium — the quote contains a causal claim ("self-inflicted") but it is attributed as opinion |

**Note on quotes:** Even accurately quoted statements can contain factual errors. Varga's "never... outside of a major war or economic depression" is itself a historical claim — has she checked it, or is it rhetorical? If the piece presents her quote as evidence rather than opinion, the historical claim inside it needs independent verification.

---

**Summary**

11 claims flagged: 7 High Priority, 3 Medium, 1 Low. 2 quotes flagged for verification. Estimated checking time: 4-6 hours for a thorough first pass on High Priority items (longer if the Columbia study is difficult to locate).

**Structural concerns:**
- Items 1 and 2 are a linked pair. If the BLS figures come from different survey series, the statistical comparison that opens the piece is invalid. **This should be the first check made.**
- Items 6 and 9 may share a source (the Columbia study). If the study does not exist or says something different, both the 17% figure and the floor-plate dimensions may be unsupported.
- Item 5 contains an internal contradiction in the draft ("proposed" then "approved") that must be resolved before external verification.

**Next Step:** Start with Items 1 and 2 — verify both BLS figures come from the same survey series. If they do not, the writer needs to know immediately because the lede comparison will require rewriting. After the BLS check, locate the Columbia study (Item 6) because it underpins two separate claims. Run house-style-enforcer after all fact-checks are resolved.

---

## Example 2: Profile — Tech Founder Interview

### Input
**Draft type:** Profile / interview
**Fact-checking standard:** Full verification with source documentation
**Recording status:** Audio recording exists for the interview; no transcript yet
**Excerpt (400 words):**

When Jordan Kessler dropped out of Stanford's computer science program in 2017 to start Threadline, the AI-powered supply chain platform, his former advisor told him he was making the biggest mistake of his life. Eight years later, Threadline processes shipping logistics for over 4,000 companies in 11 countries and has raised $280 million in venture funding across four rounds.

"I didn't know anything about logistics when I started," Kessler says. "I just knew that every supply chain manager I talked to was still using spreadsheets to track container shipments. That felt like a problem worth solving."

Before Stanford, Kessler served three years in the Marine Corps, including a deployment to Afghanistan in 2013-2014. He credits his military experience with giving him the discipline to work 18-hour days during Threadline's first year. "In the Marines, you learn that discomfort is temporary," he says. "Startup life felt easy by comparison."

Threadline's breakthrough came in 2020, when the pandemic disrupted global supply chains and demand for logistics software surged. The company grew from 45 employees to 310 in 18 months. Kessler says the growth nearly killed the company — they hired too fast and had to lay off 60 people in early 2021 to stabilize.

Threadline's Series C round, led by Sequoia Capital in March 2022, valued the company at $1.2 billion. Kessler became one of the youngest unicorn founders in the logistics technology space. He was 28 at the time.

### Output

**Fact-Check Checklist — Jordan Kessler / Threadline Profile**

---

**QUOTE VERIFICATION**

| Quote | Verification method | Risk |
|-------|-------------------|------|
| "I didn't know anything about logistics when I started... That felt like a problem worth solving." | Check against audio recording. Two-sentence quote — confirm both sentences are from the same portion of the interview, not spliced from different moments. | Medium |
| "In the Marines, you learn that discomfort is temporary. Startup life felt easy by comparison." | Check against audio recording. | Low |
| His former advisor "told him he was making the biggest mistake of his life" | This is a paraphrase of what a third party allegedly said. Confirm with Kessler that this characterization is accurate. If possible, confirm with the advisor. Note: if the advisor denies it, the draft should attribute it clearly as Kessler's account. | High — characterizes a third party's statement |

---

**HIGH PRIORITY**

1. **Claim:** Kessler "dropped out of Stanford's computer science program in 2017"
   **Type:** Identity
   **Check:** Confirm Stanford enrollment and departure date. Was he in the computer science program specifically (not electrical engineering, or a joint CS/business program)? Did he "drop out" (leave without a degree) or "leave" (he may have completed requirements but not walked at graduation)?
   **Source type:** Direct confirmation with Stanford registrar's office (they may only confirm enrollment dates, not program). Cross-reference with Kessler's own LinkedIn or public bio. Check for any Stanford alumni directory listing.
   **Chain status:** Untraced — source is the subject himself.
   **Flag:** Resume inflation risk. Founders sometimes round up their academic affiliations. "Stanford's computer science program" could mean the BS program, a master's, or even a non-degree program. Pin down the exact program.

2. **Claim:** Threadline "processes shipping logistics for over 4,000 companies in 11 countries"
   **Type:** Numerical / Institutional
   **Check:** Confirm both numbers. "Over 4,000" — what is the actual count? "11 countries" — which 11? Are these active paying customers or total accounts (including trials and churned)?
   **Source type:** Threadline's own public disclosures (press releases, website). Cross-reference with industry databases or press coverage that independently cites customer counts.
   **Chain status:** Untraced — source is the subject company.
   **Flag:** Source red flag — both numbers come from the founder describing his own company. Companies routinely overstate customer counts. Independent verification needed.

3. **Claim:** Threadline "has raised $280 million in venture funding across four rounds"
   **Type:** Numerical
   **Check:** Confirm total raised ($280 million) and number of rounds (four). Check Crunchbase, PitchBook, or SEC filings. Verify whether $280 million is the total amount raised or the total post-money valuation (founders sometimes conflate these).
   **Source type:** Crunchbase, PitchBook, or SEC Form D filings. Press coverage of individual rounds.
   **Chain status:** Untraced — source is the subject.
   **Flag:** Verify each round individually. If only three rounds are documented, "four rounds" is wrong. If the total of documented rounds does not add up to $280 million, ask what the discrepancy is (convertible notes, bridge rounds, and grants are sometimes counted or not counted inconsistently).

4. **Claim:** Kessler "served three years in the Marine Corps, including a deployment to Afghanistan in 2013-2014"
   **Type:** Identity / Historical
   **Check:** Confirm military service, branch (Marine Corps, not Army or another branch), duration (three years), and deployment (Afghanistan, 2013-2014 timeframe). Military service is verifiable through public records requests in some cases; at minimum, cross-reference against any prior press coverage, LinkedIn, or public bios.
   **Source type:** Prior press coverage; Kessler's public bios; if available, DD-214 (discharge papers) or service verification through the National Personnel Records Center.
   **Chain status:** Untraced — source is the subject himself.
   **Flag:** Military service claims are a known area of resume inflation. "Three years" in the Marines means either a specific enlistment term or service dates that span three calendar years. The deployment dates (2013-2014) should be consistent with known Marine Corps deployment rotations to Afghanistan during that period.

5. **Claim:** "Series C round, led by Sequoia Capital in March 2022, valued the company at $1.2 billion"
   **Type:** Numerical / Institutional
   **Check:** Confirm the round designation (Series C, not Series B or C-1), the lead investor (Sequoia Capital — not Sequoia Heritage or Sequoia China, which are separate entities), the date (March 2022), and the valuation ($1.2 billion — pre-money or post-money?).
   **Source type:** Crunchbase, PitchBook, SEC filings, press coverage of the round.
   **Chain status:** Untraced.
   **Flag:** "Valued at $1.2 billion" — pre-money or post-money valuation? The difference can be hundreds of millions of dollars. If post-money, the company itself is worth $1.2 billion minus the round size.

6. **Claim:** "He was 28 at the time" (March 2022, during Series C)
   **Type:** Numerical / Identity
   **Check:** If Kessler dropped out in 2017 and was 28 in March 2022, he was born in 1993 or 1994. Does the math work? If he served three years in the Marines before Stanford and dropped out in 2017, the timeline needs checking: three years of military service + some time at Stanford + dropping out in 2017 suggests he enlisted around 2012-2013 at age 18-19, which fits with a 1993-1994 birth year. Verify his birth year independently.
   **Source type:** Cross-reference with other age claims in prior press coverage. Calculate from the other dates in the piece.
   **Chain status:** Untraced.
   **Flag:** Internal consistency check. The timeline must hold: Marine Corps service + Stanford + company founding + age at Series C. Map the timeline and check that no gaps or overlaps are impossible.

7. **Claim:** "one of the youngest unicorn founders in the logistics technology space"
   **Type:** Historical
   **Check:** Superlative claim. "One of the youngest" is vague enough to be defensible, but only if there are not multiple younger founders in the same space. Search for other logistics tech unicorn founders and their ages at the time they reached unicorn valuation.
   **Source type:** Industry databases, press coverage of logistics tech unicorns.
   **Chain status:** Untraced.
   **Flag:** Red flag — "first/youngest/only" claims are wrong more often than any other type. The qualifying phrase "one of" gives some cover, but the claim still requires at least a cursory check.

---

**MEDIUM PRIORITY**

8. **Claim:** "grew from 45 employees to 310 in 18 months" (2020 growth period)
   **Type:** Numerical
   **Check:** Confirm headcount figures and timeframe. LinkedIn company page may show employee count history. Cross-reference with press coverage of Threadline's growth.
   **Source type:** Threadline press releases, LinkedIn, or prior press coverage.
   **Chain status:** Untraced.

9. **Claim:** "had to lay off 60 people in early 2021 to stabilize"
   **Type:** Numerical / Institutional
   **Check:** Confirm the layoff figure (60 people), timing (early 2021), and whether it was reported publicly. If a company of 310 laid off 60 people, that is a 19% reduction — significant enough to have generated press coverage.
   **Source type:** Press coverage of the layoff; Glassdoor or similar employee review sites; state WARN Act filings if the layoff was large enough to trigger them (threshold is typically 100 employees in most states, so 60 may not trigger it).
   **Chain status:** Untraced.

10. **Claim:** "the pandemic disrupted global supply chains and demand for logistics software surged" (2020)
    **Type:** Causal
    **Check:** The causal claim (pandemic → supply chain disruption → logistics software demand) is widely documented and likely accurate in general terms. Verify that it specifically applies to Threadline's product category.
    **Source type:** Industry reports on logistics software market growth, 2020-2021.
    **Chain status:** N/A — general characterization.

---

**LOW PRIORITY**

11. **Claim:** Threadline is described as "the AI-powered supply chain platform"
    **Type:** Institutional
    **Check:** Confirm this is how the company describes itself. "AI-powered" is a marketing term applied broadly — does the product actually use machine learning, or is "AI-powered" a label?
    **Source type:** Company website, product documentation.
    **Chain status:** N/A.

---

**Summary**

11 claims flagged: 7 High Priority, 3 Medium, 1 Low. 3 quotes flagged for verification. Estimated checking time: 5-7 hours.

**Structural concerns:**
- Nearly every factual claim in this piece comes from a single source: Jordan Kessler himself. Independent verification is required for every number and biographical claim.
- The timeline (Marine Corps → Stanford → drop out in 2017 → Threadline → growth → Series C at age 28 in 2022) must be internally consistent. Map the full timeline and check that no period is missing or overlapping.
- The advisor quote ("biggest mistake of his life") characterizes a third party. If published without the advisor's confirmation, it could create a dispute.

**Next Step:** Start with the venture funding claim (Item 3) — it is the easiest to verify independently through Crunchbase or PitchBook, and if the $280 million figure or the round count is wrong, it signals that other claims from the same source may also be inaccurate. Then map the full timeline (Items 1, 4, 6) to check internal consistency. After independent checks, re-contact Kessler to confirm quotes against the audio recording.

---

## Example 3: Investigative Piece — Environmental Regulation

### Input
**Draft type:** Investigative feature
**Fact-checking standard:** Full verification with source documentation
**Excerpt (380 words):**

Under the Clean Water Act, industrial facilities that discharge pollutants into navigable waters must obtain a National Pollutant Discharge Elimination System (NPDES) permit. The permit sets specific limits on the type and quantity of pollutants that can be discharged.

Between 2019 and 2024, the EPA issued 347 enforcement actions against industrial facilities for NPDES permit violations — an average of about 58 per year. But according to data compiled by the Environmental Integrity Project, a nonprofit watchdog group, the actual number of facilities operating in violation of their permits during that period was closer to 12,000.

"The gap between violations detected and violations enforced is the central problem in environmental regulation," says Dr. Renata Okafor, a professor of environmental law at the University of the Southeast. "You have a law on the books. You have permits on file. But the enforcement apparatus cannot keep up with the scale of non-compliance."

State regulators are supposed to fill the gap. Under the Clean Water Act, the EPA can delegate permitting and enforcement authority to state agencies through a process called "primacy." As of 2024, 47 states have primacy for the NPDES program. Alaska, Idaho, and New Mexico have not assumed primacy — the EPA administers their programs directly.

Critics argue that state agencies, which depend on the industries they regulate for permit fees and sometimes political support, are less aggressive enforcers than the EPA. A 2023 Government Accountability Office report found that among states with primacy, the median state enforcement action rate was 2.1 actions per 1,000 permitted facilities — compared to 4.7 per 1,000 in EPA-administered states.

### Output

**Fact-Check Checklist — EPA / NPDES Enforcement Investigation**

---

**HIGH PRIORITY**

1. **Claim:** "Under the Clean Water Act, industrial facilities that discharge pollutants into navigable waters must obtain a National Pollutant Discharge Elimination System (NPDES) permit"
   **Type:** Legal
   **Check:** Confirm the statutory basis. The Clean Water Act is 33 U.S.C. § 1251 et seq. The NPDES program is specifically at § 1342. Confirm the key terms: (a) "navigable waters" has a specific legal meaning that has been narrowed by recent Supreme Court decisions — does the draft's use match the current legal definition? (b) "industrial facilities" — the NPDES program also covers municipal wastewater treatment plants and some agricultural operations; is "industrial facilities" an accurate narrowing for this piece, or is it misleading?
   **Source type:** 33 U.S.C. § 1342; EPA NPDES program overview page. For current scope of "navigable waters," check *Sackett v. EPA* (2023).
   **Chain status:** Verified to primary — the statutory citation is standard.
   **Flag:** Legal accuracy risk. The scope of the Clean Water Act has changed significantly due to *Sackett v. EPA* (2023), which narrowed the definition of "waters of the United States." If this piece implies the Clean Water Act covers all waterways, it may be overstating the current legal scope.

2. **Claim:** "the EPA issued 347 enforcement actions against industrial facilities for NPDES permit violations" (2019-2024)
   **Type:** Numerical
   **Check:** Verify the number (347), the time period (2019-2024 — is this calendar years or fiscal years?), and the scope (NPDES violations only, or all Clean Water Act violations?). Confirm the count includes only formal enforcement actions (administrative orders, civil judicial referrals), not informal compliance assistance.
   **Source type:** EPA Enforcement and Compliance History Online (ECHO) database. EPA annual enforcement results reports.
   **Chain status:** Untraced — no specific EPA report cited in draft.
   **Flag:** "347 actions" divided by 6 years = 57.8 per year, which the draft rounds to "about 58." The math checks. But verify the underlying count.

3. **Claim:** "the actual number of facilities operating in violation of their permits during that period was closer to 12,000" — attributed to Environmental Integrity Project
   **Type:** Numerical
   **Check:** Locate the specific EIP report or dataset cited. Verify the 12,000 figure. Confirm the methodology — how did EIP define "operating in violation"? A facility that exceeds a permit limit once may be different from one that is in chronic non-compliance. Also confirm the time period matches (2019-2024).
   **Source type:** Environmental Integrity Project — identify the specific publication, its date, methodology, and data sources. EIP typically uses EPA's own data (Discharge Monitoring Reports) to identify violations.
   **Chain status:** Traced to intermediary — the draft names EIP but not the specific report.
   **Flag:** Source red flag — EIP is described as "a nonprofit watchdog group," which is accurate, but watchdog groups sometimes define "violation" more broadly than the EPA does. The 12,000 figure may count any exceedance of any permit parameter (including minor, short-term exceedances) while the EPA's 347 counts only formal enforcement actions against serious or repeat violations. These two numbers may not be directly comparable — the draft implies they are.

4. **Claim:** "47 states have primacy for the NPDES program. Alaska, Idaho, and New Mexico have not assumed primacy"
   **Type:** Legal / Numerical
   **Check:** Verify the current count. 47 + 3 = 50, which accounts for all states. But the District of Columbia and U.S. territories also have NPDES programs — their status should be checked. More importantly: confirm that Alaska, Idaho, and New Mexico are the correct three states. The draft says "as of 2024" — verify against the current EPA list.
   **Source type:** EPA NPDES program webpage, which lists authorized states. Also check whether any of the three states have initiated the primacy application process since the draft was written.
   **Chain status:** Untraced — no specific EPA source cited.
   **Flag:** This is a checkable list — 47 named states and 3 exceptions. Verify the list rather than the count. The count could be 47 and still name the wrong three states.

5. **Claim:** GAO report found "median state enforcement action rate was 2.1 actions per 1,000 permitted facilities — compared to 4.7 per 1,000 in EPA-administered states" (2023)
   **Type:** Numerical / Institutional
   **Check:** Locate the specific GAO report. Verify: publication year (2023), the exact figures (2.1 and 4.7 per 1,000), whether the comparison is median vs. median or median vs. a different measure, and whether "EPA-administered states" means the three states without primacy (a very small comparison group that may not be statistically meaningful).
   **Source type:** GAO.gov — identify the specific report by GAO number (e.g., GAO-23-XXXXX).
   **Chain status:** Traced to intermediary — the draft names GAO and gives the year, but not the specific report number.
   **Flag:** Statistical comparison trap. If "EPA-administered states" means only Alaska, Idaho, and New Mexico, the comparison is between 47 states (with enormous variation) and 3 states. A median of 47 states compared to a rate across 3 states is not a statistically equivalent comparison. The draft should note the sample size disparity.

6. **Claim:** "Dr. Renata Okafor, a professor of environmental law at the University of the Southeast"
   **Type:** Identity
   **Check:** Confirm title (professor — assistant, associate, or full?), field (environmental law — or is the appointment in a different department?), and institution (University of the Southeast — confirm the institution exists and is correctly named).
   **Source type:** University website, faculty directory.
   **Chain status:** Untraced.

---

**MEDIUM PRIORITY**

7. **Claim:** "the EPA can delegate permitting and enforcement authority to state agencies through a process called 'primacy'"
   **Type:** Legal
   **Check:** Confirm the term "primacy" is the correct legal term for this delegation. In the Clean Water Act context, the formal term is "authorization" under § 1342(b). "Primacy" is more commonly associated with the Safe Drinking Water Act. The draft may be using a colloquial term — confirm whether "primacy" is standard for NPDES.
   **Source type:** 33 U.S.C. § 1342(b); EPA program documentation.
   **Chain status:** Verified to primary for the delegation process; the specific term "primacy" needs confirmation.
   **Flag:** Legal terminology risk. If "primacy" is the wrong term for the NPDES program, it signals to expert readers that the piece may not fully understand the regulatory framework.

8. **Claim:** State agencies "depend on the industries they regulate for permit fees"
   **Type:** Institutional / Causal
   **Check:** Confirm that state NPDES programs are funded in part by permit fees from regulated facilities. This is a structural claim about how state environmental agencies are funded — it is generally true but the degree varies by state. Is the draft implying a conflict of interest? If so, it should be attributed to the "critics" who are described as making this argument.
   **Source type:** State environmental agency budget documents; GAO or EPA reports on state program funding.
   **Chain status:** Untraced.

---

**LOW PRIORITY**

9. **Claim:** The NPDES permit "sets specific limits on the type and quantity of pollutants that can be discharged"
   **Type:** Legal
   **Check:** Accurate general description. NPDES permits set effluent limitations. Verify "type and quantity" is not misleading — permits set limits on concentration and mass loading, not "quantity" in the colloquial sense.
   **Source type:** EPA NPDES permit fact sheet.
   **Chain status:** Verified to primary.

---

**Summary**

9 claims flagged: 6 High Priority, 2 Medium, 1 Low. 1 quote flagged. Estimated checking time: 4-6 hours.

**Structural concerns:**
- The comparison between "347 enforcement actions" (Item 2) and "12,000 facilities in violation" (Item 3) is the central claim of the piece. If these two numbers use different definitions of "violation," the comparison is misleading even if both numbers are individually correct. The fact-checker must verify not just the numbers but whether they are directly comparable.
- The GAO comparison (Item 5) has a potential sample-size problem: 47 states vs. 3 states. If the draft does not acknowledge this, the comparison may overstate the difference.
- The legal terminology question (Item 7) — "primacy" vs. "authorization" — may seem minor, but it affects the piece's credibility with expert readers.

**Next Step:** Start with Item 4 — the list of 47 states with primacy and 3 without. This is a factual claim that can be verified in minutes from the EPA website, and if it is wrong, it signals a deeper problem with the draft's accuracy on regulatory details. Then locate the GAO report (Item 5) and the EIP data (Item 3), because the piece's central argument depends on these three sources. Run house-style-enforcer after all fact-checks are resolved.

---

## Known Limitations

- **This skill produces a verification checklist, not verified facts.** The assistant does not check claims against external databases, call sources, or access current records. The checklist tells a human fact-checker what to verify and how — the human must execute the checks.
- **Quotes cannot be verified without recordings or transcripts.** For direct quotes attributed to named sources, this skill flags them for verification but cannot confirm whether a source actually said the words in the draft. Quote verification requires the original audio recording, video recording, written transcript, or direct re-confirmation with the source.
- **The skill cannot detect fabrication.** If a writer invents a source, a quote, or a study, the checklist will flag the claims for verification — but it cannot determine in advance that the source or study does not exist. That discovery happens during the verification process.
- **Implied claims are harder to catch than explicit claims.** The skill may miss claims phrased as implications, connotations, or framing choices rather than direct assertions. Review the checklist against the draft to ensure implied factual claims are captured. Example: "After the CEO resigned, profits rose 40 percent" implies causation without stating it — this implied causal claim is easy to miss.
- **Opinion pieces follow a different standard.** For opinion columns and editorials, only reported elements (statistics, named facts, attributions, characterizations of other people's positions) require verification. The author's argument, interpretation, and recommendations do not. This skill does not distinguish between fact and opinion within a piece — the editor must apply that judgment.
- **Checking time estimates are approximate.** Estimated times assume a fact-checker with access to standard research tools (databases, phone, email, web) working on non-deadline time. On deadline, checking takes longer because sources are harder to reach. If key sources are in different time zones, unavailable, or unresponsive, individual checks may take days.
- **The taxonomy is not exhaustive.** The eight claim types in the taxonomy cover the vast majority of checkable claims in journalism, but some claims fall into multiple categories or into none. When a claim does not fit neatly, the skill defaults to the highest-risk applicable category.
- **The skill does not check photographs, graphics, charts, or multimedia elements.** Visual fact-checking (verifying that a photo shows what the caption says, that a chart accurately represents the data, that a map is correctly labeled) requires separate methods not covered here.
- **Non-English sources present additional challenges.** If the draft cites sources in other languages, the checklist will flag them for verification, but the verification questions assume English-language source materials. Fact-checking claims sourced from foreign-language documents, broadcasts, or interviews requires a checker who reads the source language or a verified translation.
- **Legal and medical claims in the checklist are verification prompts, not professional advice.** The checklist identifies legal and medical claims that need checking — it does not provide legal opinions or medical assessments. Claims with legal liability or public health implications should be reviewed by qualified professionals before publication.

## Related Skills
- [copy-editor-assistant](../copy-editor-assistant/SKILL.md)
- [house-style-enforcer](../house-style-enforcer/SKILL.md)
- [claim-fact-checker](../../../research/facts-context/claim-fact-checker/SKILL.md)
- [research-brief-creator](../../ideation/research-brief-creator/SKILL.md)
- [defamation-risk-checker](../../legal/defamation-risk-checker/SKILL.md)
- [source-credibility-scorer](../../fact-checking/source-credibility-scorer/SKILL.md)
- [correction-notice-writer](../../fact-checking/correction-notice-writer/SKILL.md)
