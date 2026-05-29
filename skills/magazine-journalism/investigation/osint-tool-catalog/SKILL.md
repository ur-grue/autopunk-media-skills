---
name: osint-tool-catalog
description: "Produces a categorised catalog of open-source intelligence tools relevant to a journalist's investigation, with practical guidance on what each tool does, when to use it, and what its limitations are."
status: stable
category: magazine-journalism
subcategory: investigation
version: 1.0
eval_score: 4.76
tags: [journalism, OSINT, tools, investigation, geolocation, verification, research]
---
# OSINT tool catalog

## What this skill does
Produces a categorised catalog of open-source intelligence tools relevant to a journalist's investigation, with practical guidance on what each tool does, when to use it, and what its limitations are.

## When to use this skill
- You are starting an investigation and need to know which OSINT tools exist for a specific task (geolocation, account analysis, corporate records, satellite imagery, etc.)
- You know the general category of tool you need but not the specific name or where to find it
- You want a reference list of tools organised by investigation type, to keep on hand for your newsroom
- You are training a colleague or intern on OSINT methods and need a structured starting inventory

## What you need to provide
**Required:** The type of investigation or the category of tools you need (e.g., "geolocation tools," "corporate ownership research," "full catalog for a newsroom reference sheet")
**Optional:** The specific platform or data type you are working with (e.g., "Telegram account analysis," "ship tracking," "Chinese corporate records"); your skill level (beginner, intermediate, advanced); whether you need free tools only or can use paid services

## How Claude approaches this

1. Identifies the investigation category or categories relevant to the request. If the user asks for a full catalog, covers all categories. If they ask for a specific domain, focuses there.

2. For each category, lists the most reliable and widely used tools. Provides: tool name, URL (when it is a web tool or has a stable homepage), what it does in one sentence, free vs. paid status, and a practical note on what it is good at and where it falls short.

3. Groups tools by investigation domain, not alphabetically. Domains: geolocation and mapping, account and identity analysis, satellite and aerial imagery, facial recognition and biometrics, archiving and preservation, transport tracking (maritime, aviation, rail), corporate and financial research, document and metadata analysis, network and infrastructure analysis, social media monitoring. Adds domains as needed if the investigation warrants it.

4. Notes legal and ethical boundaries for each category where relevant. Some tools (facial recognition, phone-number lookup) raise privacy and legal issues depending on jurisdiction. The skill flags these without making legal judgments — it says "check your jurisdiction's rules on this" and names the type of law that applies.

5. Closes with a short guidance note on tool hygiene: using a dedicated browser profile or VM for OSINT work, not logging into personal accounts while researching, understanding that some tools log your queries, and documenting your tool use for editorial transparency.

## Output format
Categorised reference list. Each category gets a heading. Each tool entry is 2–4 lines: name, URL, one-sentence description, cost, practical note. Closes with an operational-security section. Total length depends on scope — a single-category request produces 300–500 words; a full catalog runs 1500–2500 words. No marketing language. No rankings. Tools are listed by practical utility, not popularity.

## Quality criteria
- [ ] Every tool listed is a real, currently operational tool with the correct name and a working URL or clear description of how to access it
- [ ] Each tool entry explains what it does, not just what category it belongs to
- [ ] Free vs. paid status is stated for every tool
- [ ] Legal and ethical flags are present for sensitive categories (facial recognition, phone lookup, location tracking)
- [ ] Operational-security section is included and practical
- [ ] Catalog does not read as a promotional list — tools' limitations are noted alongside their uses
- [ ] Output is free of generic AI-template phrasing — no "delve into," "navigate the complexities of," Latinate filler verbs, restate-the-question intros, summary-of-the-summary closes, or em-dash overuse

## Example

### Input
I need a full OSINT tool catalog for our investigative unit. We cover corporate corruption, environmental crime, and political disinformation across Europe. Free tools preferred, but flag paid tools that are worth it. Intermediate skill level.

### Output

**OSINT tool catalog — investigative unit reference**

---

### Geolocation and mapping

**Google Earth Pro** — desktop.google.com/earth — Historical satellite imagery with a time slider. Free. The single most useful tool for verifying when a building was constructed, when land was cleared, or when a facility changed. Resolution varies by region.

**SunCalc** — suncalc.org — Calculates sun position, shadow angles, and golden-hour timing for any location and date. Free. Use it to verify the time a photograph was taken by matching shadow angles to the claimed time and location. Requires a clear shadow in the image.

**Sentinel Hub EO Browser** — apps.sentinel-hub.com/eo-browser — Access to Copernicus Sentinel satellite imagery (Sentinel-2 for optical, Sentinel-1 for radar). Free for individual use. Updated every 5 days. Resolution is 10m per pixel — useful for land-use change, deforestation, or large-scale environmental damage but not for identifying individual vehicles or people.

**Mapillary** — mapillary.com — Crowdsourced street-level imagery (alternative to Google Street View, with different coverage and dates). Free. Useful when Google's imagery is outdated or absent. Coverage is uneven outside Western Europe and North America.

**what3words / Plus Codes** — For receiving or communicating precise locations from sources who cannot share coordinates. Free. Not an analysis tool; a communication aid.

### Account and identity analysis

**Namechk** — namechk.com — Checks whether a username is registered across dozens of platforms. Free. Starting point for building an account footprint across services. Does not verify that the same person controls all accounts with the same username.

**WhatsMyName** — whatsmyname.app — Similar to Namechk but open-source and maintained by the OSINT community. Free. More frequently updated than commercial alternatives.

**Epieos** — epieos.com — Searches for accounts linked to an email address or phone number across platforms. Free tier with limits, paid for full results. Check your jurisdiction's data-protection rules before using phone-number lookups on EU residents — this type of query can fall under GDPR depending on your purpose and relationship to the subject.

**Wayback Machine CDX API** — web.archive.org/cdx — Retrieve historical snapshots of a web page or social media profile. Free. Essential for documenting what a page said before it was edited or deleted. See the web-archiving skill for detailed guidance.

### Satellite and aerial imagery

**Google Earth Pro** — (see Geolocation section) — Also the primary free satellite imagery tool.

**Maxar SecureWatch / EarthExplorer** — Paid (Maxar) / Free (USGS EarthExplorer for Landsat) — High-resolution commercial satellite imagery for when Sentinel's 10m resolution is not enough. Maxar provides sub-metre resolution but at significant cost. EarthExplorer gives free Landsat imagery at 30m resolution, useful for long-term environmental change.

**Planet Explorer** — planet.com — Daily imaging of the entire Earth at 3–5m resolution. Paid, but Planet offers free access to journalists through its media programme (apply via their website). Unmatched for monitoring day-by-day changes at a specific site.

### Transport tracking

**MarineTraffic** — marinetraffic.com — Live and historical vessel tracking via AIS data. Free tier shows current positions; paid tier gives historical routes and port calls. Standard tool for investigating sanctions evasion, illegal fishing, and maritime transport of goods. Vessels can disable their AIS transponders to avoid tracking — gaps in the track record are themselves significant.

**FlightRadar24** — flightradar24.com — Live and historical flight tracking. Free tier shows current flights; paid tiers give historical data and owner information. Useful for tracking private jets linked to specific individuals or companies. Some military and government flights are filtered from public view.

**OpenRailwayMap** — openrailwaymap.org — Maps railway infrastructure worldwide. Free. Niche but useful for investigations involving rail freight routes, especially cross-border transport.

### Corporate and financial research

**OpenCorporates** — opencorporates.com — Aggregates company registry data from jurisdictions worldwide. Free basic search; paid for bulk access. First stop for identifying company officers, registered addresses, and jurisdictional registration. Coverage varies by country.

**North Data** — northdata.com — European company data, including ownership chains and officer networks. Free tier with limits; paid for full graphs. Particularly strong for Germany, Austria, Switzerland, and the Nordics.

**Aleph (OCCRP)** — aleph.occrp.org — Cross-references leaked databases, company registries, court records, and sanctions lists. Free for journalists (register for access). The strongest free tool for following money across borders. Data is strong for Eastern Europe, the Balkans, and Central Asia.

**EU Transparency Register** — ec.europa.eu/transparencyregister — Lists organisations and individuals engaged in lobbying EU institutions. Free. Useful for identifying who is lobbying on a specific directive and how much they report spending. Registration is semi-voluntary, so absence does not mean absence of lobbying activity.

**Beneficial Ownership Registers** — Varies by country (e.g., Companies House for the UK, Handelsregister for Germany). Coverage is expanding under EU Anti-Money Laundering Directives, but effective access varies by jurisdiction and some countries have restricted public access citing privacy concerns.

### Document and metadata analysis

**ExifTool** — exiftool.org — Extracts and edits metadata from images, videos, PDFs, and office documents. Free, open-source, command-line. The standard tool for metadata inspection. See the source-verification skill for what to look for.

**FOCA** — github.com/ElevenPaths/FOCA — Extracts metadata from documents (PDFs, DOCs, spreadsheets) found on a target website. Free, open-source. Useful for identifying authors, software versions, and internal network paths embedded in published documents.

**PDF Table Extractor tools** — Tabula (tabula.technology) for structured tables in PDFs; Camelot (Python library) for more complex layouts. Both free. Essential for turning government reports and financial filings into workable data.

### Archiving and preservation

**Wayback Machine** — web.archive.org — Archive and retrieve web pages. Free. The default archiving tool. See the web-archiving skill for multi-archive strategy.

**Archive.today** — archive.today — Independent web archive. Free. Better than Wayback Machine for capturing JavaScript-rendered pages and pages behind soft paywalls. Use both for redundancy.

**Hunchly** — hunch.ly — Browser extension that automatically archives every page you visit during a research session, with timestamps and hash verification. Paid ($130/year). Designed for OSINT investigators. Creates a court-admissible evidence chain if needed.

### Network and infrastructure analysis

**Shodan** — shodan.io — Searches for internet-connected devices, servers, and infrastructure. Free basic search; paid for full results. Useful for identifying the hosting infrastructure behind a website, exposed databases, or industrial control systems. Not a hacking tool — it indexes publicly visible information.

**BuiltWith** — builtwith.com — Identifies the technology stack behind a website. Free basic lookup. Useful for linking websites that share the same analytics tracking codes, advertising IDs, or hosting infrastructure — a method for connecting apparently unrelated websites to the same operator.

**DNSViz / SecurityTrails** — dnsviz.net / securitytrails.com — DNS record analysis and historical DNS lookups. Free tiers available. Useful for tracing who owns a domain, where it was hosted previously, and whether it shares infrastructure with other domains.

---

### Operational security

Keep OSINT research separate from your personal online identity. Practical steps:

- **Dedicated browser profile.** Use a separate Chrome or Firefox profile for OSINT work. No personal logins, no saved passwords, no synced bookmarks. Clear cookies between investigations.
- **VPN or Tor for sensitive queries.** If you are researching subjects who may monitor who searches for them (corporate intelligence, state actors), route your traffic through a VPN or Tor. Be aware that some OSINT tools block Tor exit nodes.
- **Some tools log your queries.** Social media search tools, people-search engines, and some corporate registry sites log incoming searches and may notify the subject. Know which tools are passive (Wayback Machine, Google Earth) and which may leave traces (LinkedIn profile views, some people-search sites).
- **Document your tool use.** Record which tools you used, when, and what queries you ran. This is editorial hygiene — your editor or legal counsel may need to know your research path — and it protects against accusations of hacking or unauthorised access.

## Known limitations
- Tool URLs and availability change. This catalog reflects the state of the OSINT tool ecosystem as of the skill's last update. Tools shut down, change pricing, or restrict access without notice.
- This skill lists tools and describes what they do. It does not teach how to use them. For detailed guidance on specific methods (reverse-image search, metadata inspection, social media account analysis), use the relevant investigation skills in this library.
- Legal restrictions on OSINT tools vary by jurisdiction. Facial recognition, phone-number lookups, and corporate-registry scraping have different legal status in different countries. The skill flags where legal questions arise but does not provide legal advice.
- No tool catalog is exhaustive. The OSINT community develops new tools constantly. This catalog covers the most established and widely used tools; it is not a complete inventory.

## Related skills
- [source-verification](../source-verification/SKILL.md)
- [social-media-intelligence](../social-media-intelligence/SKILL.md)
- [web-archiving](../../../research/preservation/web-archiving/SKILL.md)
