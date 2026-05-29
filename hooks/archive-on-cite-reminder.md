---
name: archive-on-cite-reminder
hook_event: PostToolUse
blocking: false
severity: reminder
version: 1.0
composes_with:
  - skills/research/preservation/web-archiving.md
---

# Archive-on-cite reminder

## What this hook does

When an edit or write introduces a URL into body text, fires a non-blocking reminder to archive the cited page. Web pages move, change, or disappear — a journalist who cites a URL without archiving it risks a dead link and a lost source within months.

This hook pairs with the `web-archiving` skill (AUT-24). Once that skill ships, the reminder includes the exact command to run. Until then, the reminder points to the Wayback Machine's manual save page.

## When this hook fires

- **Event:** PostToolUse (after any Edit or Write tool call)
- **Condition:** The diff between the previous and new file content contains one or more URLs (`http://` or `https://`) in body text.
- **Exclusions:** URLs inside frontmatter `composes_with` arrays, relative paths (`../skills/…`), `localhost` or `127.0.0.1` URLs, and URLs inside code blocks are excluded.

## What the hook checks

1. Extracts every newly added URL from the diff (not URLs that were already present before the edit).
2. For each new URL, checks whether an archive annotation exists nearby — either an `<!-- archived: URL -->` comment or a parenthetical `(archived YYYY-MM-DD)` within two lines.
3. Flags any new URL that lacks an archive annotation.

## Example output

```
⚠ archive-on-cite-reminder (PostToolUse · non-blocking)

  skills/magazine-journalism/investigation/foia-request-writer.md

  New URLs without archive confirmation (2):
    Line 23: https://www.rcfp.org/open-government-sections/
             → Archive this source. Save at web.archive.org/save/
               or run the web-archiving skill when available.
    Line 41: https://www.justice.gov/oip/blog/foia-update-...
             → Same. Government pages move after administration changes.

  After archiving, add (archived 2026-05-27) next to the link
  or <!-- archived: URL --> above the line.
```

## Behaviour notes

- This hook advises. It does not block the tool call or revert the edit.
- The reminder fires once per new URL per edit. Subsequent edits to the same file that do not add new URLs stay silent.
- If every new URL already has an archive annotation, the hook stays silent.
- The hook does not make network requests. It does not check whether the URL is live or whether an archive already exists at the Wayback Machine. It only checks for the local annotation that the writer has confirmed the archive.
- Once the `web-archiving` skill ships (AUT-24), update this hook's example output to include the skill invocation command.

## Related skills

- [web-archiving](../skills/research/preservation/web-archiving.md) — full archiving workflow (planned, AUT-24)
- [source-research-brief](../skills/magazine-journalism/investigation/source-research-brief.md) — tracking source material and contacts
- [claim-origin-tracer](../skills/research/fact-checking/claim-origin-tracer.md) — tracing claims to original sources
