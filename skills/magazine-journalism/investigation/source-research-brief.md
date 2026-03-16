---
name: source-research-brief
status: stable
category: magazine-journalism
subcategory: investigation
version: 1.0
eval_score: 4.4
tags: [journalism, investigation, research, sources, interview-prep]
---

# Source Research Brief

## What This Skill Does
Produces a structured pre-interview research brief on a potential source, covering their professional background, public positions, known biases, potential conflicts of interest, and suggested lines of questioning.

## When To Use This Skill
- You have identified a potential interview subject and need to prepare before speaking with them
- You want to understand a source's track record before deciding how much weight to give their claims
- You are approaching a source who has been quoted in other stories and want to know their standard narrative
- You need to identify pressure points or contradictions in a source's public record before a difficult interview

## What You Need To Provide
**Required:** The source's name, professional title or role, and the topic of your investigation
**Optional:** Links or summaries of previous public statements, publications, or interviews; the source's employer or institutional affiliation; any known relationship between the source and the subject of your investigation; how you plan to use their testimony (on-record, background, expert commentary)

## How Claude Approaches This
1. Profiles the source's professional background and relevant expertise, distinguishing between established credentials and claimed authority
2. Reviews the source's known public positions on the investigation topic, identifying consistency or evolution over time, and flagging any previously stated views that could affect their testimony
3. Assesses potential conflicts of interest, institutional affiliations, funding sources, or personal relationships that could bias their account — without making unsupported accusations
4. Generates a set of targeted pre-interview questions calibrated to probe both the substance of the story and the source's reliability
5. After the brief, provides a "Next Step" note: whether any identified conflict of interest requires editorial review before proceeding, which question should open the interview and why, and whether foia-request-writer should be run to independently verify claims this source may make

## Output Format
Structured brief, 400–600 words. Sections: Background Summary, Relevant Expertise, Known Public Positions, Potential Biases and Conflicts, Suggested Interview Questions (6–10 questions). Factual, neutral tone. No editorial conclusions about the source's truthfulness — only documented facts and flagged unknowns. Output ends with a "Next Step" note: whether a conflict of interest needs editorial sign-off before the interview, which question to lead with, and whether to run foia-request-writer to independently corroborate what the source may reveal.

## Quality Criteria
- [ ] Background section distinguishes between verified credentials and self-reported expertise
- [ ] Public positions section references specific, datable statements rather than generalities
- [ ] Conflicts section is specific and evidence-based — no speculation without a factual basis
- [ ] Interview questions address both the story's substance and the source's potential blind spots
- [ ] Tone is neutral throughout — the brief does not pre-judge the source's credibility
- [ ] Output includes at least one concrete next action the user can take immediately (flag a conflict for editorial review, identify the opening interview question, or run foia-request-writer for independent verification)

## Example

### Input
Source: Dr. Marcus Osei, Chief Medical Officer at Vantage Genomics, a mid-size biotech company
Topic: Investigating whether a widely prescribed blood pressure drug causes elevated cancer risk in patients over 65
Intended use: Expert commentary and potential whistleblower source — Osei was previously at the FDA's drug evaluation division

### Output

**Source Research Brief — Dr. Marcus Osei, Chief Medical Officer, Vantage Genomics**
*Prepared for: Investigative piece on blood pressure drug and cancer risk*

---

**Background Summary**

Dr. Marcus Osei holds an MD and an MPH and spent eight years as a medical officer at the FDA's Center for Drug Evaluation and Research (CDER) before joining Vantage Genomics in 2019. At the FDA, he was involved in post-market drug surveillance and adverse event reporting. His transition to industry is relevant context: he moved from a regulatory oversight role to a commercial biotech environment, a common career path that warrants disclosure.

**Relevant Expertise**

Osei's FDA background gives him direct, credible knowledge of how adverse event data is collected, analyzed, and acted upon — or not. He is a legitimate expert on the regulatory machinery of post-market drug safety. His current role as CMO at Vantage Genomics involves cardiovascular therapeutics, which overlaps directly with the story's subject matter. However, confirm whether Vantage Genomics has any commercial relationship with the drug manufacturer or its competitors before treating him as a neutral expert.

**Known Public Positions**

In a 2022 conference presentation (American Pharmacovigilance Society, Boston), Osei argued publicly that the FDA's post-market surveillance system is "structurally under-resourced" and that adverse event signals are frequently deprioritized. This position aligns with what he might say on the record. In a 2021 trade press interview (PharmaTech Review), he was notably more cautious, describing the drug evaluation process as "rigorous by international standards." The shift in tone is worth exploring.

**Potential Biases and Conflicts**

- Vantage Genomics' pipeline includes a competing cardiovascular compound currently in Phase III trials. If the drug under investigation is implicated, a competitor's removal from the market could benefit Vantage Genomics commercially. This is a material conflict that must be disclosed to readers if Osei is quoted.
- Osei's FDA career means he may have personal loyalty to or grievances with former colleagues who are now managing the drug's regulatory file. Worth probing whether he has a specific internal relationship with this case.
- No political donations or public advocacy positions found in available records.

**Suggested Interview Questions**

1. During your time at FDA, did you ever review adverse event reports related to this drug class? What was the general handling?
2. You've said publicly that post-market surveillance is under-resourced. Do you think the current cancer risk data has been adequately reviewed?
3. Vantage Genomics has a competing compound in trials. How does that affect your ability to comment neutrally?
4. What would a legitimate cancer risk signal look like in this drug's adverse event data — and what threshold would trigger a label change?
5. Are there colleagues still at FDA who you believe would speak on the record about this?
6. Have you been contacted by any attorneys, patient groups, or media outlets about this drug before today?
7. If the risk data is as strong as some researchers claim, why hasn't the FDA acted?

## Known Limitations
- This brief is based only on publicly available information provided by the user or known to Claude. It cannot search live databases, paywalled academic records, or non-public financial disclosures.
- Conflict-of-interest flags are based on stated affiliations and public records — undisclosed relationships will not appear.
- The brief describes a source's known positions but cannot predict how they will behave in an interview or whether they will go on record.
- For sources with very limited public footprints, the brief will be correspondingly thin — this is an honest reflection of available information, not a failure of the skill.

## Related Skills
- [expert-finder-brief](./expert-finder-brief.md)
- [interview-question-generator](../scripting/interview-question-generator.md)
- [foia-request-writer](./foia-request-writer.md)
