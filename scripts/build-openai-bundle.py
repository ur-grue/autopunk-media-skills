#!/usr/bin/env python3
"""
Build per-category Knowledge files for an OpenAI Custom GPT.

Produces, under dist/openai/:
  - <category>.md  — one file per category (journalism, youtube, podcast…),
                     each containing that category's skills.

These are meant to be uploaded as a Custom GPT's **Knowledge** files, so the GPT
retrieves the single relevant skill per request. We deliberately do NOT emit one
giant all-skills prompt: cramming 394 skills into a single context makes the
model pick worse and dilutes every instruction — the opposite of why this
library is split into narrow skills.

Each skill is included as its markdown body (YAML frontmatter stripped), under a
clear "## SKILL: <name>" separator.

Stdlib only. Run: python3 scripts/build-openai-bundle.py
"""
import os, re, glob
from collections import defaultdict

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, "dist", "openai")


def strip_frontmatter(text):
    m = re.match(r"^---\s*\n.*?\n---\s*\n(.*)$", text, re.DOTALL)
    return m.group(1).strip() if m else text.strip()


def fm_field(text, key):
    m = re.match(r"^---\s*\n(.*?\n)---\s*\n", text, re.DOTALL)
    if not m:
        return None
    mm = re.search(rf"(?m)^{key}:\s*(.+)$", m.group(1))
    return mm.group(1).strip() if mm else None


def header(cat):
    return (
        f"# autopunk media skills — {cat}\n\n"
        "Knowledge file for a Custom GPT. Each section below is a SKILL: a procedure "
        "for one media task. Find the single most relevant skill for the user's "
        "request and follow it exactly — its \"What You Need To Provide,\" \"How the "
        "Assistant Approaches This,\" \"Output Format,\" and \"Quality Criteria.\" "
        "If a required input is missing, ask for it instead of inventing facts.\n\n---\n"
    )


def main():
    os.makedirs(OUT, exist_ok=True)
    files = sorted(f for f in glob.glob("skills/**/SKILL.md", recursive=True)
                   if "/locales/" not in f)
    by_cat = defaultdict(list)
    for f in files:
        text = open(f, encoding="utf-8").read()
        name = fm_field(text, "name") or os.path.basename(os.path.dirname(f))
        by_cat[f.split("/")[1]].append((name, strip_frontmatter(text)))

    for cat, skills in sorted(by_cat.items()):
        parts = [header(cat)]
        for name, body in skills:
            parts.append(f"\n\n## SKILL: {name}\n\n{body}\n\n---\n")
        open(os.path.join(OUT, f"{cat}.md"), "w", encoding="utf-8").write("".join(parts))

    print(f"wrote {len(by_cat)} per-category Knowledge files under dist/openai/ "
          f"({len(files)} skills total)")
    print("upload the categories you work in as a Custom GPT's Knowledge files "
          "(see docs/using-with-openai.md).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
