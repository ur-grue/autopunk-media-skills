---
name: breaking-news-brief
description: "Generate a breaking news action plan: initial report structure, verification checklist, source priority list, update cadence, and editorial guardrails — for newsrooms responding to developing stories."
status: stable
category: magazine-journalism
subcategory: writing
version: 1.0
eval_score: 4.5
tags: [journalism, breaking-news, newsroom, verification, editorial-workflow]
---
# Breaking News Brief

## What This Skill Does
Generates a structured breaking news action plan when a major story breaks — what to publish first, what to verify before publishing, who to contact, what to hold.

## When To Use This Skill
- A major story has broken in the last hour and you need to coordinate your newsroom's response quickly
- You have fragmentary information from social media, wire services, or a scanner and need to sort what is publishable now from what needs verification
- You are a small newsroom (1-5 reporters) and need to prioritize assignments for the first hours of a developing story
- You are a desk editor receiving conflicting reports and need a decision framework for what goes live and what waits
- You have just been alerted to a developing situation and want to avoid the two worst outcomes: publishing something wrong, or being the last outlet to publish something right

## What You Need To Provide
**Required:** What you know so far about the event (raw facts, however fragmentary); the type of event (accident, natural disaster, political event, crime, public health, institutional crisis, economic event); what sources have reported so far (social media posts, wire alerts, scanner traffic, official statements — specify which); the size of your newsroom or number of reporters available; your publication type (daily newspaper, online-only, broadcast, wire service, magazine with a web presence).

**Optional:** Your publication's breaking news policy or editorial standards (if you have a written one); your deadline cycle (continuous web, hourly broadcast, next-day print); whether you have a photographer or video team available; any subject-matter expertise already in the newsroom (a reporter who covers the relevant beat); whether your publication has a legal counsel available for real-time consultation; the geographic relationship between your newsroom and the event (local outlet vs. national covering a local event).

## How the Assistant Approaches This

### Phase 1: Triage What You Know
1. Separates the information provided into three categories: **Confirmed** (sourced to an official statement, verified eyewitness, or established fact), **Reported but unverified** (social media, single-source tips, scanner traffic), and **Unknown** (questions the newsroom should be asking but does not yet have answers to). This triage is the foundation — everything else follows from it.

### Phase 2: Build the First Report
2. Constructs an initial report structure from the Confirmed column only. This is what can go live immediately. The structure identifies the minimum viable story: what happened, where, when, and who reported it. It specifies what language to use for unconfirmed elements ("reports of," "according to," "could not be independently confirmed") and what to leave out entirely until verification is complete.

### Phase 3: Verification Priorities
3. Builds a verification checklist from the Reported but Unverified and Unknown columns. Each item gets a priority level (verify before publishing, verify within one hour, verify by end of day) and a recommended verification method (call the official spokesperson, check the public record, send a reporter to the scene, cross-reference with a second source). The checklist is ordered by editorial risk — claims that could cause harm if wrong are at the top.

### Phase 4: Source Hierarchy
4. Produces a source priority list tailored to the event type. For each source: who to call, why they matter, what question to ask them, and what their likely response time is. Sources are ranked by authority (official spokesperson first, then institutional sources, then on-scene witnesses, then secondary sources). The list includes a note on who not to rely on as a sole source and why.

### Phase 5: Operational Plan
5. Generates the operational components: reporter assignments (who covers what), update cadence (how often to refresh the story), social media guidelines (what to post, what not to post, how to handle user-generated content), and editorial guardrails (what to avoid speculating about, when to attribute rather than assert, when to hold information for verification even under competitive pressure).

### Phase 6: Follow-Up Angles
6. Identifies follow-up story angles that will matter once the breaking phase ends — the stories that emerge from the event but require reporting that cannot be done in the first hours. These are flagged for assignment once the immediate story stabilizes.

## Output Format

Seven clearly labeled sections, in this order:

1. **Situation Assessment** — one paragraph summarizing what is known, what is reported but unverified, and what is unknown. No longer than 100 words. Written for a desk editor who needs to brief their team in 30 seconds.

2. **First Report Structure** — the minimum viable story that can be published immediately, built only from confirmed information. Structured as a bullet-point outline (not prose). Includes suggested attribution language for each element.

3. **Verification Checklist** — every unverified claim and unanswered question, ranked by editorial risk. Each item formatted as: Claim/Question, Priority (Before publication / Within 1 hour / By end of day), Verification method, Assigned to (reporter number or desk).

4. **Source Priority List** — who to call, in what order, with the specific question to ask each source and their expected response time. Organized as a numbered list with notes.

5. **Reporter Assignments** — who does what in the first 1-2 hours, given the number of reporters available. If only one reporter is available, the plan sequences tasks. If multiple reporters are available, the plan parallelizes.

6. **Social Media and Update Cadence** — what to post on social media and when, how often to update the published story, when to issue a correction vs. an update, and what not to post until verification is complete.

7. **Follow-Up Story List** — 3-6 story angles that will emerge once the breaking phase ends, with a one-line description of each and a note on what reporting each requires.

Total output length: 800-1,200 words. The plan must be scannable — a desk editor under pressure should be able to read any single section in under 30 seconds and act on it.

Ends with a "Next Step" note: the single most important action to take in the next 10 minutes, which section to revisit first as new information arrives, and whether to run fact-check-prompt once the first full draft is written.

---

## Quality Criteria
- [ ] Situation assessment distinguishes confirmed facts from unverified reports — no blending of the two
- [ ] First report structure contains only information that is confirmed or properly attributed as unconfirmed
- [ ] Verification checklist is ordered by editorial risk, not by the order information was received
- [ ] Source priority list includes specific questions to ask each source, not just "call for comment"
- [ ] Reporter assignments are realistic for the stated newsroom size — does not assign five tasks to one reporter in the same hour
- [ ] Social media guidelines include specific language for what to say and what not to say — not generic advice
- [ ] Follow-up story list contains angles that require reporting, not just restatements of the breaking story
- [ ] No speculation disguised as analysis — if a cause, motive, or outcome is unknown, the plan says so
- [ ] Attribution language is specific: "according to [source]," "reported by [outlet]," "could not be independently confirmed" — not vague hedging
- [ ] The plan accounts for the possibility that early reports are wrong — includes a protocol for correction
- [ ] Output is free of generic AI-template phrasing — no "delve into," "navigate the complexities of," Latinate filler verbs ("utilize," "facilitate," "leverage" where a plainer verb fits), restate-the-question intros, summary-of-the-summary closes, or em-dash overuse. (Required for `stable` — see Editorial Naturalness in `tests/EVAL_FRAMEWORK.md`.)
- [ ] Output includes at least one concrete next action the user can take in the next 10 minutes

---

## Example 1: Industrial Accident — Small Local Newsroom

### Input
**What is known:** A chemical plant explosion was reported approximately 20 minutes ago in the Eastfield Industrial District, a zone with several manufacturing facilities on the southeast edge of the city. Two social media posts from accounts geolocated within half a mile show a large smoke plume. One post includes a 12-second video of black smoke rising from what appears to be a low industrial building. A second post, from a different account, says "huge explosion just shook our house, smells like chemicals." The city fire department scanner has dispatched multiple units to the 4200 block of Industrial Parkway. No official statements from any agency yet. No confirmed casualties.

**Event type:** Industrial accident (explosion at a chemical or manufacturing facility)

**Sources so far:** Two social media posts (neither from journalists or official accounts); fire department scanner traffic (dispatch, no details on what units found on arrival).

**Newsroom size:** 3 reporters available — one general assignment reporter currently in the office, one reporter who covers the environment and industry beat (reachable by phone, not in the office), one photographer who can be dispatched.

**Publication type:** Daily newspaper with a website that publishes breaking news online. Print deadline is 10 PM.

### Output

**Breaking News Action Plan — Reported Explosion, Eastfield Industrial District**

---

**1. Situation Assessment**

An explosion has been reported at or near a facility in the 4200 block of Industrial Parkway in the Eastfield Industrial District. The report is based on two social media posts showing smoke and fire department scanner traffic confirming multi-unit dispatch. No official source has confirmed the explosion, its cause, the facility involved, or any casualties. The situation is developing and all details beyond the dispatch are unverified.

---

**2. First Report Structure**

Publish now, based on confirmed information only:

- **Lede:** Fire department units have been dispatched to the 4200 block of Industrial Parkway in the Eastfield Industrial District following reports of an explosion at an industrial facility. *(Source: scanner traffic.)*
- **What is known:** Multiple fire units dispatched. Social media posts from the area show a large smoke plume. *(Attribute: "Social media posts from accounts near the scene show...")*
- **What is not known:** The specific facility involved, the cause, whether anyone was injured, whether hazardous materials are involved.
- **Attribution language:** "Reports of an explosion," not "an explosion occurred." "Social media posts appear to show," not "photos show." "Fire department units have been dispatched to the area," not "fire department is responding to an explosion."
- **Do not include:** The word "chemical" in the headline or lede — the social media post mentioning a chemical smell is a single unverified source. Use "industrial facility" until the facility type is confirmed.
- **Headline suggestion:** "Fire crews respond to reported explosion in Eastfield Industrial District"

---

**3. Verification Checklist**

| # | Claim / Question | Priority | Method | Assign to |
|---|-----------------|----------|--------|-----------|
| 1 | Which facility is involved? Name, address, what they manufacture or store. | Before publication of any update | Reporter 2 (beat reporter): check business registry for 4200 block Industrial Parkway. Cross-reference with EPA Toxics Release Inventory if facility handles hazardous materials. | Reporter 2 |
| 2 | Are there casualties? Injuries? Fatalities? | Before publication of any update mentioning casualties | Call city fire department PIO. Call nearest hospital ER (ask whether they are receiving patients from the area — do not ask for patient details). | Reporter 1 |
| 3 | Is there a hazardous materials risk? Evacuation order? Shelter-in-place? | Before publication — public safety implication | Call fire department PIO. Monitor city emergency management social media and alert systems. If HAZMAT units were dispatched (check scanner), note this in the story with attribution. | Reporter 1 |
| 4 | What caused the explosion? | Within 1 hour — do not speculate before confirmation | Fire department or facility statement. Do not publish a cause until an official source states it. | Hold for official source |
| 5 | Are the social media posts authentic? Are the accounts real local residents? | Within 1 hour | Check account history, geolocation metadata, post consistency. Do not embed or republish the posts without verification. | Reporter 1 (desk check) |
| 6 | What does the facility's safety record look like? Previous violations? | By end of day | OSHA inspection database, EPA enforcement records, state environmental agency records. | Reporter 2 |
| 7 | Are nearby businesses or residents affected? Road closures? | Within 1 hour | Police department PIO, city transportation department, on-scene observation. | Photographer (when on scene) |

---

**4. Source Priority List**

1. **City Fire Department Public Information Officer** — First call. Ask: "Can you confirm an explosion at [address]? Are there casualties? Is there a hazardous materials concern? Is an evacuation in effect?" Expected response time: 15-30 minutes (PIO may be en route to the scene and unavailable immediately; leave a message and call back in 15 minutes).

2. **City Emergency Management Office** — Second call. Ask: "Has an emergency alert or evacuation order been issued for the Eastfield Industrial District?" Expected response time: 10-20 minutes. They may issue a public alert before the fire department PIO is available.

3. **Facility operator or parent company** — Third call (once the facility is identified). Ask: "Can you confirm the incident? How many people were on site? What materials are stored or processed at this facility?" Expected response time: 30-60 minutes minimum. Corporate communications will likely need to draft a statement. Do not hold your story for their response.

4. **Nearest hospital emergency department** — Fourth call. Ask: "Are you receiving patients from the Eastfield Industrial District?" Do not ask for names, conditions, or numbers of specific patients — HIPAA restrictions apply. A general "yes, we are receiving patients" is publishable with attribution. Expected response time: immediate, but the answer may be "we cannot comment."

5. **Police department PIO** — Fifth call. Ask: "Are there road closures or an evacuation perimeter?" This source confirms scene logistics, not the event itself. Expected response time: 15-30 minutes.

6. **State environmental agency** — Not for the first hour. Call later in the day for the facility's compliance history, previous violations, and any pending enforcement actions.

**Do not rely on as sole source:** Social media eyewitnesses (they report what they saw and smelled, which is valuable context but not confirmation of cause, scale, or casualties). Other news outlets (their reports may be based on the same unverified social media posts you have).

---

**5. Reporter Assignments**

**Reporter 1 (general assignment, in office) — Desk coordination, first 60 minutes:**
- Publish the initial web story (Section 2 above) within 15 minutes
- Call fire department PIO and emergency management (Sources 1 and 2)
- Verify social media posts (Checklist item 5)
- Update the web story every 15-20 minutes as new confirmed information arrives
- Coordinate with Reporter 2 and Photographer by phone

**Reporter 2 (environment/industry beat, remote) — Source identification and background:**
- Identify the facility at 4200 block Industrial Parkway — business name, owner, what they produce or store
- Check EPA Toxics Release Inventory and OSHA inspection history for the facility
- Call the facility operator or parent company (Source 3)
- Prepare background paragraph on the facility for the next web update
- Once facility is identified, determine whether hazardous materials are stored on site

**Photographer — Scene, depart immediately:**
- Drive to the Eastfield Industrial District. Do not enter any evacuation perimeter.
- Photograph the smoke plume, emergency response vehicles, any evacuation activity, road closures
- Note the addresses of the closest buildings to the scene and whether they appear damaged
- Call Reporter 1 with on-scene observations: what is visible, how many fire trucks, whether police have set up a perimeter, whether residents appear to be evacuating
- If safe and permitted, speak to people near the scene — residents, workers from nearby businesses. Get names, ages, and one quote. Do not approach the facility or emergency responders working at the scene.

---

**6. Social Media and Update Cadence**

**Post immediately on social media:**
- "BREAKING: Fire crews are responding to a reported explosion in the Eastfield Industrial District. Details are developing. We will update as we confirm information. [link to web story]"
- Do not post: the social media video or photos until the accounts are verified. Do not describe the smoke as "chemical" or "toxic" — that is unverified.

**Update cadence for the web story:**
- Update every 15-20 minutes for the first hour, even if the update is "no new confirmed information."
- Mark every update with a timestamp at the top of the story: "Updated 2:45 PM — Fire department confirms..."
- Each update adds new confirmed information. Do not remove previously published information unless issuing a correction.

**Correction protocol:**
- If an early report turns out to be wrong (wrong address, wrong facility, wrong number of casualties), publish a correction at the top of the story, timestamped, explaining what was wrong and what the correct information is. Do not silently edit.

**What not to post on social media:**
- Do not speculate about the cause ("possible gas leak," "may be related to chemicals stored on site") until an official source states it
- Do not post unverified casualty numbers — "reports of injuries" is acceptable only if attributed to a named source
- Do not share user-generated video or photos without verification and permission
- Do not name the facility until you have confirmed its identity independently (not from social media alone)

**User-generated content policy:**
- If readers or followers send photos or videos, verify the sender's identity and location before publishing. Ask: "Were you there? Can I use your name and this image in our coverage?"
- Do not embed social media posts from unverified accounts in the story

---

**7. Follow-Up Story List**

1. **Facility safety record** — Has this plant been cited for safety violations before? What did OSHA inspections find? Were violations corrected? *(Requires: OSHA database search, state records, possible FOIA for inspection reports. Reporter 2 can start today.)*

2. **Emergency response effectiveness** — How quickly did fire, HAZMAT, and EMS units arrive? Was the response adequate for the scale of the event? Were mutual aid agreements activated? *(Requires: Post-incident interviews with fire chief, review of dispatch timeline. Start tomorrow.)*

3. **Community impact and health concerns** — What are residents near the facility experiencing? Are there air quality concerns? Has the local health department issued advisories? *(Requires: Door-to-door reporting in the neighborhood, health department interview, air quality monitoring data. Start tomorrow.)*

4. **Regulatory oversight** — Who regulates this type of facility? How often is it inspected? Is the regulatory framework adequate? *(Requires: Interviews with state environmental agency, federal EPA regional office, industry experts. Start within 48 hours.)*

5. **Land use and zoning** — How close are residential areas to the industrial district? When was the facility built relative to the surrounding neighborhood? Has the community raised concerns before? *(Requires: Zoning maps, city planning department interview, community meeting records. Start within 48 hours.)*

6. **Worker accounts** — What was it like inside the facility at the time of the explosion? Were safety protocols followed? Were workers trained for this scenario? *(Requires: Off-the-record conversations with current and former employees. May take days to develop sources. Reporter 2 should begin outreach once the facility is identified.)*

---

**Next Step:** Reporter 1 publishes the initial web story now — use the First Report Structure above as the outline. While that publishes, call the fire department PIO (Source 1). The PIO confirmation or denial is the single piece of information that will most change the story in the next 10 minutes. Revisit the Verification Checklist as each item is resolved — cross off confirmed items and add new questions as they emerge. Once a full narrative draft exists (likely 2-3 hours into coverage), run fact-check-prompt on the draft before the print deadline.

---

## Example 2: Political Resignation — Mid-Size Regional Outlet

### Input
**What is known:** The state governor's chief of staff resigned effective immediately, according to a one-paragraph statement released by the governor's press office 35 minutes ago. The statement thanks the chief of staff "for years of dedicated service" and says "the governor will name an interim chief of staff in the coming days." No reason for the resignation is given. The chief of staff has not made a public statement. A political reporter at a rival outlet posted on social media 10 minutes ago that the resignation is "connected to an ongoing federal investigation" but provided no details or sourcing. Your publication's capital bureau chief has heard similar rumors from two legislative sources over the past week but has not been able to confirm them.

**Event type:** Political event (sudden high-level resignation with possible legal implications)

**Sources so far:** Governor's press office statement (official, one paragraph); rival outlet reporter's social media post (unverified, no sourcing cited); two legislative sources who mentioned rumors to bureau chief last week (background only, no on-record confirmation).

**Newsroom size:** 2 reporters available — one capital bureau chief who covers state politics, one general assignment reporter at the main office.

**Publication type:** Online regional news outlet, publishes continuously. No print edition.

### Output

**Breaking News Action Plan — Chief of Staff Resignation**

---

**1. Situation Assessment**

The governor's chief of staff has resigned immediately. The governor's office confirmed the departure in a brief statement that gave no reason. A rival outlet's reporter has connected the resignation to "an ongoing federal investigation" on social media, without sourcing. Your bureau chief has heard similar rumors from two legislative sources but has nothing confirmed. The resignation itself is confirmed and publishable. The reason for the resignation is not confirmed and should not be stated as fact.

---

**2. First Report Structure**

Publish now, based on the official statement only:

- **Lede:** The governor's chief of staff resigned effective immediately, the governor's office announced in a statement released this afternoon. *(Source: governor's press office statement.)*
- **The statement:** Quote the relevant language — "years of dedicated service," "interim chief of staff in the coming days." Reproduce the full statement or link to it.
- **What the statement does not say:** No reason was given for the departure. The chief of staff has not issued a separate statement.
- **Background paragraph:** Who the chief of staff is — how long they served, what role they played, any notable policy decisions they were associated with. This is factual background, not speculation about why they left.
- **Do not include:** Any mention of a federal investigation, the rival outlet's social media post, or the legislative rumors. None of these are confirmed. If your publication reports an unverified connection to a federal investigation and it turns out to be wrong, the damage is severe and possibly actionable.
- **Headline suggestion:** "[Name] resigns as governor's chief of staff; no reason given"

---

**3. Verification Checklist**

| # | Claim / Question | Priority | Method | Assign to |
|---|-----------------|----------|--------|-----------|
| 1 | Is there an ongoing federal investigation connected to the chief of staff or the governor's office? | Before any mention of an investigation in your coverage | Bureau chief: call federal courthouse clerk for any sealed or unsealed cases naming the chief of staff. Contact two federal law enforcement sources. Contact a defense attorney source who would know if a grand jury has been convened. Do not ask the governor's office about this directly until you have independent confirmation — asking tips them off and may produce a denial that you then have to report. | Bureau chief |
| 2 | What does the chief of staff say? | Within 1 hour | Call the chief of staff's personal phone, personal email, and any known attorney. A "no comment" or "declined to comment" is itself news if the resignation is unexplained. | Bureau chief |
| 3 | Has the rival outlet published a sourced story, or only the social media post? | Within 30 minutes | Monitor the rival outlet's website. If they publish a sourced story with named or described sources, evaluate whether their sourcing meets your threshold for reporting "another outlet has reported that..." If it is still just a social media post, it does not meet that threshold. | General assignment reporter (desk monitoring) |
| 4 | What do legislative leaders know? | Within 1 hour | Call the majority and minority leaders' offices. Ask: "Were you informed of the resignation before the announcement? Do you know the reason?" Legislative sources may speak more freely than the governor's office. | Bureau chief |
| 5 | Is the chief of staff's resignation part of a broader staff change? | Within 2 hours | Call other senior staff in the governor's office. Check whether other departures have been announced or are rumored. | General assignment reporter |
| 6 | Who is likely to be named interim chief of staff? | By end of day | Bureau chief's existing source network. This is a secondary story but worth reporting when confirmed. | Bureau chief |

---

**4. Source Priority List**

1. **The chief of staff (directly)** — Most important call. Ask: "Can you tell me why you resigned? Is there anything you want the public to know?" If they have retained an attorney, the attorney may respond instead. Expected response: 50/50 chance of no response at all in the first hour.

2. **Governor's press office** — Call back and ask follow-up questions: "Why did the chief of staff resign? Was the resignation requested? When was the decision made? Will the governor make a statement beyond the press release?" Expected response: likely a restatement of the press release. Note what they decline to answer — the refusal to explain is itself significant.

3. **Legislative leadership (both parties)** — Majority and minority leaders' offices. Ask: "Were you informed before the announcement? Has the governor's office communicated the reason to legislative leadership?" Expected response: the minority party is more likely to speak; the majority party may defer to the governor's office.

4. **Federal courthouse clerk** — Only if pursuing the investigation angle. Ask: "Are there any cases — sealed or unsealed — naming [chief of staff's full legal name]?" Expected response: the clerk will confirm or deny the existence of public filings. Sealed cases will not be disclosed.

5. **Defense attorneys in the capital's legal community** — Background sources. Ask: "Are you aware of any federal legal activity involving the governor's office?" Expected response: off-the-record guidance, if anything. These conversations are for direction, not for publication.

**Do not rely on as sole source:** The rival outlet's social media post (no sourcing, no editorial review). Your own legislative sources from last week (background rumors, not confirmation).

---

**5. Reporter Assignments**

**Bureau chief — Source work, first 90 minutes:**
- Call the chief of staff directly (Source 1)
- Call the governor's press office for follow-up (Source 2)
- Call legislative leadership contacts (Source 3)
- Assess whether the investigation angle can be confirmed through federal court or law enforcement sources
- Feed confirmed information to general assignment reporter for web updates

**General assignment reporter — Desk and publication, first 90 minutes:**
- Publish the initial web story immediately (Section 2 above)
- Write the biographical background paragraph on the chief of staff
- Monitor the rival outlet for any sourced follow-up story
- Monitor the governor's social media and official channels for additional statements
- Update the web story as bureau chief confirms new information — every update timestamped

---

**6. Social Media and Update Cadence**

**Post immediately:**
- "BREAKING: Governor's chief of staff [Name] has resigned effective immediately. The governor's office gave no reason. Story: [link]"

**Do not post:**
- Any reference to a federal investigation, rumors, or the rival outlet's social media post
- Speculation about the reason for the resignation ("Sources say..." when your sources have not confirmed anything on record)

**Update cadence:**
- Update the web story within 30 minutes of any confirmed new information
- If 2 hours pass with no new confirmed information, publish a brief update noting that the chief of staff has not responded to requests for comment and the governor's office has not elaborated beyond the initial statement — the absence of explanation is news

**If the rival outlet publishes a sourced story:**
- Evaluate their sourcing. If they cite named sources or describe their sources specifically enough to assess credibility ("two federal law enforcement officials"), you may report: "[Rival outlet] reported that the resignation is connected to a federal investigation, citing [their described sources]. [Your publication] has not independently confirmed this."
- If their sourcing is vague ("sources say"), do not amplify.

---

**7. Follow-Up Story List**

1. **The investigation angle** — If a federal investigation exists, it becomes the dominant story. *(Requires: federal court records, law enforcement sources, defense attorney sources. May take days to weeks to confirm independently. Bureau chief should continue working this.)*

2. **Power vacuum and policy impact** — The chief of staff controlled access to the governor and managed the legislative agenda. Who fills that role? How does this affect pending legislation? *(Requires: interviews with legislative staff, lobbyists, and policy advocates who worked with the chief of staff. Start within 24 hours.)*

3. **The chief of staff's tenure** — A retrospective on what they accomplished, what controversies they were involved in, and what their departure means for the administration. *(Requires: clips review, interviews with former colleagues and political analysts. Publish within 48 hours.)*

4. **Reaction from political allies and opponents** — How are legislators, party officials, and interest groups responding? *(Requires: calls to 6-10 political figures for on-record comment. Start within 2-3 hours.)*

---

**Next Step:** Publish the initial story now — use the First Report Structure in Section 2. While it publishes, bureau chief calls the chief of staff directly. That call, or its refusal, is the most important development in the next 10 minutes. Revisit the Verification Checklist hourly. If the investigation angle is confirmed through independent sourcing, update the story and alert the editor — that changes the story from a staffing change to an accountability story. Run fact-check-prompt on the full draft before any version that mentions legal or investigative elements.

---

## Example 3: Natural Disaster — Solo Reporter at a Community Outlet

### Input
**What is known:** A tornado warning was issued by the National Weather Service 45 minutes ago for the southern part of your county. The warning has since expired. Social media posts from two neighborhoods — Riverside and Oak Hills — show downed trees, damaged roofs, and at least one collapsed structure. The county emergency management office posted on its official social media account 10 minutes ago: "We are aware of reports of storm damage in the southern part of the county. Emergency crews have been dispatched. Please avoid the affected areas." A listener called your newsroom to say her neighbor's house "is destroyed" on Elm Street in Riverside. No confirmed injuries. Power outage reports from the local utility's outage map show approximately 3,200 customers without power in the southern part of the county.

**Event type:** Natural disaster (possible tornado, confirmed storm damage)

**Sources so far:** National Weather Service tornado warning (official, expired); county emergency management social media post (official, vague); social media posts from two neighborhoods (unverified, multiple accounts); one phone call from a resident (single source, eyewitness to damage near her home); utility outage map (official, real-time data).

**Newsroom size:** 1 reporter — you are the only journalist on duty. You have a phone, a car, and a camera.

**Publication type:** Community news website with a small but loyal local readership. You also post to a community Facebook group with 8,000 members.

### Output

**Breaking News Action Plan — Storm Damage, Southern County**

---

**1. Situation Assessment**

A tornado warning expired 45 minutes ago. Storm damage is confirmed in the southern part of the county by the county emergency management office, which has dispatched crews. Social media posts show damage in the Riverside and Oak Hills neighborhoods. One resident reports a destroyed house on Elm Street. The utility outage map shows 3,200 customers without power. No injuries have been confirmed or denied by any official source. Whether the damage was caused by a tornado or straight-line winds has not been determined.

---

**2. First Report Structure**

Publish now:

- **Lede:** Emergency crews are responding to storm damage in the southern part of the county after a tornado warning expired this afternoon, according to the county emergency management office. *(Source: county emergency management official social media post.)*
- **Power outages:** Approximately 3,200 customers are without power in the southern county, according to [utility name]'s outage map. *(Source: utility outage map — include the time you checked.)*
- **Reported damage areas:** Social media posts show damage in the Riverside and Oak Hills neighborhoods, including downed trees and structural damage. *(Attribute: "Social media posts from the area show..." — do not state as confirmed fact.)*
- **What is not known:** Whether the damage was caused by a tornado. Whether anyone was injured. The full extent of the damage.
- **What officials are saying:** Quote the county emergency management post. Note that they ask residents to avoid the area.
- **Do not include:** The word "tornado" in the headline unless the NWS confirms a tornado occurred. Use "severe storm" or "storm damage." Do not describe any structure as "destroyed" based on a single phone call.
- **Headline suggestion:** "Emergency crews respond to storm damage in southern [county name]; 3,200 without power"

---

**3. Verification Checklist**

| # | Claim / Question | Priority | Method | Assign to |
|---|-----------------|----------|--------|-----------|
| 1 | Are there injuries or fatalities? | Before any mention of casualties | Call county emergency management (phone, not social media). Call the county sheriff's office — they dispatch to structure collapses. If possible, call the closest fire station to Riverside. | You (phone calls before driving to scene) |
| 2 | Was it a tornado or straight-line winds? | Within 2 hours — do not state either until NWS confirms | Call NWS local forecast office. They will send a survey team if tornado damage is suspected. Until they confirm, use "storm" or "severe weather." | You (phone call) |
| 3 | Is the house on Elm Street actually destroyed? | Within 1 hour — before including the detail | Drive to Elm Street if safe. If you cannot get there, call the resident back and ask for a photo. One person's "destroyed" may mean severely damaged. | You (on scene or phone) |
| 4 | Are roads passable? Are there shelter-in-place orders? | Before driving to the scene | Check county emergency management updates. Check the sheriff's office social media for road closures. Do not drive into an area with active power lines down. | You (desk check before departing) |
| 5 | How widespread is the damage? | By end of day | On-scene observation once you arrive. NWS damage survey results (may take 12-24 hours). | You (on scene) |

---

**4. Source Priority List**

1. **County emergency management office (phone)** — Call now. Ask: "Can you confirm the areas affected? Are there any reported injuries? Is there a shelter open? Is there an evacuation or shelter-in-place order?" Expected response: 5-15 minutes. They may transfer you to a PIO.

2. **County sheriff's office** — Ask: "Are deputies on scene in Riverside or Oak Hills? Are there any road closures? Have you received reports of injuries?" Expected response: 5-10 minutes.

3. **National Weather Service local forecast office** — Ask: "Will you be sending a survey team to assess whether this was a tornado? What was the storm's path based on radar data?" Expected response: NWS is usually responsive within 30 minutes. They will not confirm "tornado" until a survey team has assessed the damage, which may take 12-24 hours.

4. **Local utility company** — Ask: "How many customers are affected? What is the estimated restoration time? Are there downed power lines that pose a safety hazard?" Expected response: 15-30 minutes. The outage map provides real-time data; the phone call adds estimated restoration time and safety information.

5. **Residents on scene (when you arrive)** — Ask: "What did you see and hear? When did the storm hit? Is everyone in your household safe?" Get names, ages, and addresses for anyone willing to be quoted. Do not enter damaged structures.

---

**5. Reporter Assignments**

You are the only reporter. Sequence your tasks:

**Minutes 0-15 (at desk):**
- Publish the initial web story and post to the community Facebook group
- Make phone calls: county emergency management, sheriff's office, NWS (in that order)
- Check road conditions and safety before driving

**Minutes 15-45 (driving to scene, if safe):**
- Drive to Riverside — the area with the most reported damage
- On arrival, photograph the damage, talk to residents, note addresses of damaged structures
- Call or text updates to yourself to add to the web story from your phone

**Minutes 45-90 (on scene):**
- Photograph 5-10 images of damage from different locations
- Interview 2-3 residents on record (name, age, what they experienced)
- Note the street addresses of the most damaged structures
- Check whether the Elm Street house is actually destroyed (Checklist item 3)
- Look for emergency crews and ask them (politely, without interfering) whether there are injuries

**Minutes 90-120 (return to desk or file from phone):**
- Update the web story with on-scene details, photos, and quotes
- Follow up with county emergency management for updated information
- Post updated photos and information to the community Facebook group

---

**6. Social Media and Update Cadence**

**Post immediately to the community Facebook group:**
- "Storm damage reported in Riverside and Oak Hills. Emergency crews are responding. 3,200 without power. We are heading to the scene and will update. If you have damage, please report it to county emergency management at [phone number]."

**Do not post:**
- Unverified photos from other social media accounts — post only your own photos or photos with verified permission
- "Tornado" — until NWS confirms; use "storm damage"
- Casualty reports until confirmed by an official source

**Update cadence:**
- Update the web story every 30 minutes during the first 2 hours
- Post to the Facebook group with each major update
- After the first 2 hours, update every hour or as new confirmed information arrives

**Community service information (add to every update):**
- County emergency management phone number
- Shelter location (if one opens)
- Utility outage reporting number
- "If you or someone you know needs help, call [number]"

---

**7. Follow-Up Story List**

1. **NWS tornado confirmation and rating** — Once the survey team assesses the damage, the NWS will confirm whether it was a tornado and assign an EF rating. This becomes the definitive story of what happened. *(Requires: NWS survey results, typically 12-24 hours. Follow up with NWS forecast office tomorrow morning.)*

2. **Damage assessment and recovery** — How many structures were damaged? What is the cost? Are residents displaced? Where are they staying? *(Requires: County damage assessment, Red Cross or emergency management interview, resident interviews. Start tomorrow.)*

3. **Community response** — How are neighbors helping each other? Are local organizations mobilizing? Where can people donate or volunteer? *(Requires: On-scene reporting, interviews with community organizations. Start tomorrow — this is the story your community readership will care about most.)*

4. **Infrastructure and rebuilding** — When will power be restored? Are roads reopened? What does the insurance and rebuilding process look like for affected homeowners? *(Requires: Utility company follow-up, county public works interview, insurance industry source. Start within 48 hours.)*

5. **Warning system effectiveness** — Did the tornado warning give residents enough time? Did sirens activate? Were mobile alerts received? *(Requires: NWS timeline data, resident interviews about what warning they received and when. Start within 48 hours.)*

---

**Next Step:** Publish the initial story now and post to the community Facebook group. Then call county emergency management — that call determines whether you are covering property damage or a mass casualty event, and everything else follows from the answer. As you get new information, update the Verification Checklist and cross off resolved items. Once you have a full narrative story (likely tonight for the detailed version), run fact-check-prompt before publishing the comprehensive account.

---

## Known Limitations

- **This skill produces a plan, not reporting.** The action plan organizes what a newsroom should do, but it cannot make phone calls, verify claims, or go to the scene. Every element of the plan requires a human journalist to execute it. The plan is only as good as the reporting that follows.

- **The plan is based on what you tell it, which is incomplete by definition.** In a breaking news situation, the most important facts are often the ones you do not yet know. The plan works with the information provided, but it cannot account for information you have not shared or do not yet possess. If the situation is materially different from what the initial reports suggest — the explosion was actually a building collapse, the resignation was actually a firing — the plan will need to be rebuilt from the updated facts.

- **Source priority lists are generic for the event type, not specific to your community.** The plan recommends calling "the fire department PIO" or "the county emergency management office," but it does not know that your city's PIO never answers after 5 PM, or that the county emergency manager is a personal source who will pick up your call. Adjust the source list based on your actual relationships and your community's institutional geography.

- **The plan cannot assess legal risk.** For stories involving ongoing investigations, potential defamation, or privacy concerns (identifying victims, naming suspects before charges), the plan flags the risk but cannot provide legal advice. Consult your publication's legal counsel before publishing any element that could expose the outlet to legal liability.

- **Update cadence recommendations assume continuous online publication.** If your outlet publishes on a different cycle (weekly print, hourly broadcast), adjust the cadence. A weekly newspaper covering a breaking story for its website faces different timing pressures than a wire service or a 24-hour broadcast operation.

- **The plan does not account for competitive pressure in real time.** It recommends holding unverified information for verification, but it cannot weigh the editorial cost of being second against the reputational cost of being wrong. That judgment is the editor's, not the plan's.

## Related Skills
- [fact-check-prompt](../../editing/fact-check-prompt/SKILL.md)
- [reportage-structure](../reportage-structure/SKILL.md)
- [sidebar-fact-box-writer](../sidebar-fact-box-writer/SKILL.md)
- [source-verification](../../investigation/source-verification/SKILL.md)
- [headline-generator](../../ideation/headline-generator/SKILL.md)
- [story-angle-finder](../../ideation/story-angle-finder/SKILL.md)
