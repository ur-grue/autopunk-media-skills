#!/usr/bin/env python3
"""Validate skill files for frontmatter, structure, and editorial discipline."""

import re
import sys
import os
from pathlib import Path

REQUIRED_FRONTMATTER = ["name", "status", "category", "subcategory", "version", "tags"]
VALID_STATUSES = ["planned", "draft", "beta", "stable"]

REQUIRED_SECTIONS_NON_PLANNED = [
    "What This Skill Does",
    "When To Use This Skill",
    "What You Need To Provide",
    "Output Format",
    "Quality Criteria",
    "Known Limitations",
]

BANNED_WORDS = [
    "delve", "utilize", "leverage", "robust", "seamless", "cutting-edge",
    "unleash", "harness the", "streamline", "holistic", "synergy",
    "game-changer", "embark on a journey",
    "in today's fast-paced world",
]

BANNED_PHRASES = [
    "in this section, we will",
    "it is worth noting",
    "it's worth noting",
    "it's important to note",
    "it should be noted",
    "whether you're a journalist or",
    "in the realm of",
    "navigate the complexities",
    "in today's digital",
]


def parse_frontmatter(text):
    m = re.match(r"^---\s*\n(.*?\n)---\s*\n", text, re.DOTALL)
    if not m:
        return None, text
    fm = {}
    for line in m.group(1).strip().split("\n"):
        if ":" in line:
            k, v = line.split(":", 1)
            fm[k.strip()] = v.strip()
    body = text[m.end() :]
    return fm, body


def check_frontmatter(path, fm):
    errors = []
    for key in REQUIRED_FRONTMATTER:
        if key not in fm:
            errors.append(f'{path}: missing frontmatter field "{key}"')
    if "status" in fm and fm["status"] not in VALID_STATUSES:
        errors.append(f"{path}: invalid status '{fm['status']}'")
    if fm.get("status") == "stable" and fm.get("eval_score") in ("null", "None", ""):
        errors.append(f"{path}: stable skill must have eval_score set")
    if fm.get("status") == "stable":
        try:
            score = float(fm.get("eval_score", "0"))
            if score < 4.0:
                errors.append(
                    f"{path}: stable skill has eval_score {score} (minimum 4.0)"
                )
        except ValueError:
            pass
    return errors


def check_sections(path, body, status):
    if status == "planned":
        return []
    errors = []
    for section in REQUIRED_SECTIONS_NON_PLANNED:
        pattern = rf"##\s+{re.escape(section)}"
        if not re.search(pattern, body, re.IGNORECASE):
            errors.append(f'{path}: missing section "## {section}"')
    return errors


def check_editorial(path, body, status):
    if status == "planned":
        return []
    warnings = []
    body_lower = body.lower()
    for word in BANNED_WORDS:
        if word.lower() in body_lower:
            warnings.append(f"{path}: banned word/phrase found: \"{word}\"")
    for phrase in BANNED_PHRASES:
        if phrase.lower() in body_lower:
            warnings.append(f"{path}: banned phrase found: \"{phrase}\"")
    return warnings


def check_tbd(path, body, status):
    if status == "planned":
        return []
    errors = []
    tbd_count = len(re.findall(r"\bTBD\b", body))
    if tbd_count > 0:
        errors.append(
            f"{path}: {tbd_count} TBD placeholder(s) in non-planned skill"
        )
    return errors


def check_example(path, body, status):
    if status in ("planned", "draft"):
        return []
    errors = []
    if "## Example" not in body:
        errors.append(f"{path}: beta/stable skill missing ## Example section")
    elif "### Input" not in body or "### Output" not in body:
        errors.append(f"{path}: Example section missing ### Input or ### Output")
    return errors


def validate_file(path):
    with open(path) as f:
        text = f.read()

    fm, body = parse_frontmatter(text)
    if fm is None:
        return [f"{path}: missing frontmatter"], []

    status = fm.get("status", "planned")

    errors = []
    warnings = []

    errors.extend(check_frontmatter(path, fm))
    errors.extend(check_sections(path, body, status))
    errors.extend(check_tbd(path, body, status))
    errors.extend(check_example(path, body, status))
    warnings.extend(check_editorial(path, body, status))

    return errors, warnings


def main():
    changed_only = "--changed-only" in sys.argv
    skill_dir = "skills"

    if changed_only:
        import subprocess

        result = subprocess.run(
            ["git", "diff", "--name-only", "--diff-filter=ACMR", "HEAD~1"],
            capture_output=True,
            text=True,
        )
        paths = [
            p
            for p in result.stdout.strip().split("\n")
            if p.startswith("skills/") and p.endswith(".md") and "/locales/" not in p
        ]
        if not paths:
            result = subprocess.run(
                [
                    "git",
                    "diff",
                    "--name-only",
                    "--diff-filter=ACMR",
                    "origin/main...HEAD",
                ],
                capture_output=True,
                text=True,
            )
            paths = [
                p
                for p in result.stdout.strip().split("\n")
                if p.startswith("skills/")
                and p.endswith(".md")
                and "/locales/" not in p
            ]
    else:
        paths = []
        for root, dirs, files in os.walk(skill_dir):
            if "/locales/" in root:
                continue
            for f in files:
                if f.endswith(".md"):
                    paths.append(os.path.join(root, f))

    all_errors = []
    all_warnings = []

    for path in paths:
        if not os.path.exists(path):
            continue
        errors, warnings = validate_file(path)
        all_errors.extend(errors)
        all_warnings.extend(warnings)

    if all_warnings:
        print(f"\n{len(all_warnings)} editorial warning(s):")
        for w in all_warnings:
            print(f"  ⚠️  {w}")

    if all_errors:
        print(f"\n{len(all_errors)} validation error(s):")
        for e in all_errors:
            print(f"  ❌ {e}")
        sys.exit(1)
    else:
        print(f"\n✅ {len(paths)} skill file(s) validated — no errors")
        if all_warnings:
            print(
                "   (editorial warnings above are advisory — fix before marking stable)"
            )
        sys.exit(0)


if __name__ == "__main__":
    main()
