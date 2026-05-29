#!/usr/bin/env python3
"""
Publish marketing articles to dev.to and Hashnode.

- Reads markdown articles from content/articles/*.md (YAML frontmatter + body).
- Tracks what has already been published in content/.published.json so re-runs
  never double-post (idempotent).
- Secrets come from env vars (GitHub Actions Secrets): DEVTO_API_KEY,
  HASHNODE_PAT, HASHNODE_PUBLICATION_ID. Missing secret => that channel is
  skipped, not an error.
- Dry-run by default unless PUBLISH=1, so CI on a PR never posts.

Stdlib only. No pip deps.
"""
import json, os, re, sys, urllib.request, urllib.error

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ART_DIR = os.path.join(ROOT, "content", "articles")
STATE = os.path.join(ROOT, "content", ".published.json")

DEVTO = os.environ.get("DEVTO_API_KEY", "").strip()
HASH_PAT = os.environ.get("HASHNODE_PAT", "").strip()
HASH_PUB = os.environ.get("HASHNODE_PUBLICATION_ID", "").strip()
LIVE = os.environ.get("PUBLISH", "") == "1"


def parse(md):
    m = re.match(r"^---\s*\n(.*?\n)---\s*\n(.*)$", md, re.DOTALL)
    if not m:
        return {}, md
    fm, body = {}, m.group(2)
    for line in m.group(1).strip().splitlines():
        if ":" in line:
            k, _, v = line.partition(":")
            fm[k.strip()] = v.strip().strip('"')
    return fm, body


def load_state():
    if os.path.exists(STATE):
        return json.load(open(STATE))
    return {}


def save_state(s):
    json.dump(s, open(STATE, "w"), indent=2, sort_keys=True)
    open(STATE, "a").write("\n")


def post_devto(fm, body):
    tags = [t.strip() for t in fm.get("tags", "").split(",") if t.strip()][:4]
    payload = {"article": {
        "title": fm.get("title", "Untitled"),
        "published": True,
        "body_markdown": body,
        "tags": tags,
        "canonical_url": f"https://github.com/ur-grue/autopunk-media-skills",
    }}
    if fm.get("cover_image"):
        payload["article"]["main_image"] = fm["cover_image"]
    req = urllib.request.Request(
        "https://dev.to/api/articles",
        data=json.dumps(payload).encode(),
        headers={"api-key": DEVTO, "Content-Type": "application/json",
                 "User-Agent": "autopunk-publisher"},
        method="POST")
    with urllib.request.urlopen(req, timeout=30) as r:
        return json.load(r).get("url", "ok")


def post_hashnode(fm, body):
    q = """mutation Publish($input: PublishPostInput!){
      publishPost(input:$input){ post { url } } }"""
    variables = {"input": {
        "title": fm.get("title", "Untitled"),
        "contentMarkdown": body,
        "tags": [{"slug": t.strip(), "name": t.strip()}
                 for t in fm.get("tags", "").split(",") if t.strip()][:5],
        "publicationId": HASH_PUB,
    }}
    if fm.get("cover_image"):
        variables["input"]["coverImageOptions"] = {"coverImageURL": fm["cover_image"]}
    req = urllib.request.Request(
        "https://gql.hashnode.com/",
        data=json.dumps({"query": q, "variables": variables}).encode(),
        headers={"Authorization": HASH_PAT, "Content-Type": "application/json",
                 "User-Agent": "autopunk-publisher"},
        method="POST")
    with urllib.request.urlopen(req, timeout=30) as r:
        d = json.load(r)
        if d.get("errors"):
            raise RuntimeError(d["errors"])
        return d["data"]["publishPost"]["post"]["url"]


def main():
    if not os.path.isdir(ART_DIR):
        print("no articles dir"); return 0
    state = load_state()
    arts = sorted(f for f in os.listdir(ART_DIR) if f.endswith(".md"))
    print(f"articles: {len(arts)} | live={LIVE} | devto={'yes' if DEVTO else 'no'} | hashnode={'yes' if HASH_PAT and HASH_PUB else 'no'}")
    for fn in arts:
        slug = fn[:-3]
        rec = state.setdefault(slug, {})
        fm, body = parse(open(os.path.join(ART_DIR, fn)).read())
        for channel, ok, fn_post in (
            ("devto", bool(DEVTO), post_devto),
            ("hashnode", bool(HASH_PAT and HASH_PUB), post_hashnode),
        ):
            if rec.get(channel):
                print(f"  {slug} [{channel}] already published -> skip")
                continue
            if not ok:
                print(f"  {slug} [{channel}] secret missing -> skip")
                continue
            if not LIVE:
                print(f"  {slug} [{channel}] DRY-RUN (would publish)")
                continue
            try:
                url = fn_post(fm, body)
                rec[channel] = url
                print(f"  {slug} [{channel}] PUBLISHED -> {url}")
            except (urllib.error.HTTPError, urllib.error.URLError, RuntimeError) as e:
                print(f"  {slug} [{channel}] ERROR: {e}", file=sys.stderr)
    save_state(state)
    return 0


if __name__ == "__main__":
    sys.exit(main())
