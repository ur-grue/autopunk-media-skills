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
# Hashnode's GraphQL publishing API requires a paid Pro plan: gql.hashnode.com
# 301-redirects POSTs to an announcement to that effect. Off by default so runs
# stay green; set HASHNODE_ENABLED=1 (Secrets) if/when on a Pro plan.
HASH_ON = os.environ.get("HASHNODE_ENABLED", "").strip() == "1"
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
        "https://gql.hashnode.com",  # no trailing slash — slash can 301 -> GET -> HTML
        data=json.dumps({"query": q, "variables": variables}).encode(),
        headers={"Authorization": HASH_PAT, "Content-Type": "application/json",
                 "Accept": "application/json",
                 "User-Agent": "Mozilla/5.0 (autopunk-publisher)"},
        method="POST")
    # Do NOT auto-follow redirects: a 301 on POST would be replayed as GET and
    # return the marketing site's HTML. Catch it and report instead.
    class _NoRedirect(urllib.request.HTTPRedirectHandler):
        def redirect_request(self, *a, **k):
            return None
    opener = urllib.request.build_opener(_NoRedirect)
    try:
        with opener.open(req, timeout=30) as r:
            status = r.status
            ctype = r.headers.get("Content-Type", "")
            raw = r.read().decode().strip()
    except urllib.error.HTTPError as e:
        loc = e.headers.get("Location", "")
        ctype = e.headers.get("Content-Type", "")
        if e.code in (301, 302, 303, 307, 308):
            raise RuntimeError(f"hashnode redirect HTTP {e.code} -> {loc!r} (ctype={ctype})")
        body_snip = ""
        try:
            body_snip = e.read().decode()[:200]
        except Exception:
            pass
        raise RuntimeError(f"hashnode HTTP {e.code} ctype={ctype} body={body_snip!r}")
    if not raw:
        raise RuntimeError(f"hashnode empty response (HTTP {status})")
    if not raw.lstrip().startswith("{"):
        raise RuntimeError(f"hashnode non-JSON (HTTP {status}, ctype={ctype}): {raw[:200]}")
    try:
        d = json.loads(raw)
    except json.JSONDecodeError:
        raise RuntimeError(f"hashnode non-JSON response: {raw[:300]}")
    if d.get("errors"):
        raise RuntimeError(d["errors"])
    try:
        return d["data"]["publishPost"]["post"]["url"]
    except (KeyError, TypeError):
        raise RuntimeError(f"hashnode unexpected response: {raw[:300]}")


def main():
    if not os.path.isdir(ART_DIR):
        print("no articles dir"); return 0
    state = load_state()
    arts = sorted(f for f in os.listdir(ART_DIR) if f.endswith(".md"))
    print(f"articles: {len(arts)} | live={LIVE} | devto={'yes' if DEVTO else 'no'} | hashnode={'yes' if HASH_ON and HASH_PAT and HASH_PUB else 'off (needs Pro plan; set HASHNODE_ENABLED=1)'}")
    attempted = succeeded = 0
    for fn in arts:
        slug = fn[:-3]
        rec = state.setdefault(slug, {})
        fm, body = parse(open(os.path.join(ART_DIR, fn)).read())
        for channel, ok, fn_post in (
            ("devto", bool(DEVTO), post_devto),
            ("hashnode", bool(HASH_ON and HASH_PAT and HASH_PUB), post_hashnode),
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
            attempted += 1
            try:
                url = fn_post(fm, body)
                rec[channel] = url
                succeeded += 1
                print(f"  {slug} [{channel}] PUBLISHED -> {url}")
            except urllib.error.HTTPError as e:
                detail = ""
                try:
                    detail = e.read().decode()[:500]
                except Exception:
                    pass
                print(f"  {slug} [{channel}] HTTP {e.code} ERROR: {detail}", file=sys.stderr)
            except Exception as e:
                print(f"  {slug} [{channel}] ERROR: {type(e).__name__}: {e}", file=sys.stderr)
    save_state(state)
    # Fail loudly if we tried to publish but everything failed — otherwise a
    # silent green run hides a broken token / API change.
    if attempted and not succeeded:
        print(f"FAILED: {attempted} publish attempt(s), 0 succeeded", file=sys.stderr)
        return 1
    print(f"done: {succeeded}/{attempted} published" if attempted else "done: nothing to publish")
    return 0


if __name__ == "__main__":
    sys.exit(main())
