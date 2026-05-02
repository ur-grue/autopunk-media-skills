# hooks/ai-slop-detector.awk — banned-phrase matcher.
# Input: filenames on stdin (one per line). Output: human-readable report.
# Variables: skill=path to ai-writing-detox.md.
# Honors per-file <!-- detox: allow X -->, <!-- detox: allow-start/end -->,
# detox_allow: [...] front-matter, and hook_overrides.ai-slop-detector.

function escape_re(s,    out) {
  out = s
  gsub(/\\/, "\\\\", out); gsub(/\./, "\\.", out)
  gsub(/\(/, "\\(", out);  gsub(/\)/, "\\)", out)
  gsub(/\[/, "\\[", out);  gsub(/\]/, "\\]", out)
  gsub(/\{/, "\\{", out);  gsub(/\}/, "\\}", out)
  gsub(/\*/, "\\*", out);  gsub(/\+/, "\\+", out)
  gsub(/\?/, "\\?", out);  gsub(/\|/, "\\|", out)
  gsub(/\^/, "\\^", out);  gsub(/\$/, "\\$", out)
  return out
}

function build_regex(phrase,    re) {
  re = escape_re(tolower(phrase))
  # Replace ellipsis (single Unicode char) with non-greedy token run (1–10 tokens).
  gsub(/…/, "[^[:space:]]+([[:space:]]+[^[:space:]]+){0,10}", re)
  return re
}

function parse_allow_list(line, dest,    items, n, i, it) {
  sub(/^[^[]*\[/, "", line); sub(/\].*/, "", line)
  n = split(line, items, /[[:space:]]*,[[:space:]]*/)
  for (i = 1; i <= n; i++) {
    it = items[i]; gsub(/[[:space:]"\047]/, "", it)
    if (it != "") dest[tolower(it)] = 1
  }
}

BEGIN {
  section = ""; n_pat = 0
  while ((getline line < skill) > 0) {
    if (line ~ /^## Hard ban/)  { section = "hard"; continue }
    if (line ~ /^## Soft warn/) { section = "soft"; continue }
    if (line ~ /^## /)          { section = "";     continue }
    if (section == "" || line !~ /^- `/) continue
    if (!match(line, /`[^`]+`/)) continue
    phrase = substr(line, RSTART + 1, RLENGTH - 2)
    rest = substr(line, RSTART + RLENGTH)
    ctx = "body"
    if (match(rest, /\(context:[[:space:]]*[a-z\-]+\)/)) {
      cstr = substr(rest, RSTART, RLENGTH)
      sub(/\(context:[[:space:]]*/, "", cstr); sub(/\)/, "", cstr)
      ctx = cstr
    }
    expl = rest
    sub(/^[[:space:]]*(—|-)[[:space:]]+/, "", expl)
    sub(/[[:space:]]*\(context:.*\).*$/, "", expl)
    sub(/[[:space:]]+$/, "", expl)
    n_pat++
    pat_phrase[n_pat] = phrase
    pat_tier[n_pat]   = section
    pat_ctx[n_pat]    = ctx
    pat_expl[n_pat]   = expl
    pat_re[n_pat]     = build_regex(phrase)
  }
  close(skill)
}

{ scan_file($0) }

function scan_file(file,    line, in_fm, in_code, in_allow_block, allow_paragraph,
                   hook_skip, lineno, lower, em_count, word_count, hits, key, i,
                   tier, ctx, ph, re, s, abs_start, mlen, before, after, ctx_ok,
                   ph_starts_alnum, ph_ends_alnum, left, right, stripped, banner,
                   hard_n, soft_n, parts, line_str, icon, in_aisd, n_em) {
  in_fm = 0; in_code = 0; in_allow_block = 0; allow_paragraph = 0
  hook_skip = 0; lineno = 0; em_count = 0; word_count = 0; hits = 0
  in_aisd = 0
  delete allow_list; delete allow_pgraph; delete file_hits
  while ((getline line < file) > 0) {
    lineno++
    if (lineno == 1 && line == "---") { in_fm = 1; continue }
    if (in_fm  && line == "---")      { in_fm = 0; in_aisd = 0; continue }
    if (in_fm) {
      if (line ~ /^detox_allow:[[:space:]]*\[/)             parse_allow_list(line, allow_list)
      else if (line ~ /^[[:space:]]+allow:[[:space:]]*\[/ && in_aisd) parse_allow_list(line, allow_list)
      else if (line ~ /^[[:space:]]+ai-slop-detector:[[:space:]]*(skip|false|disabled?)[[:space:]]*$/) hook_skip = 1
      else if (line ~ /^[[:space:]]+ai-slop-detector:[[:space:]]*$/) in_aisd = 1
      else if (line ~ /^[a-zA-Z]/) in_aisd = 0
      continue
    }
    if (hook_skip) break

    if (line ~ /^```/) { in_code = !in_code; continue }
    if (in_code) continue

    if (line ~ /<!--[[:space:]]*detox:[[:space:]]*allow-start[[:space:]]*-->/) { in_allow_block = 1; continue }
    if (line ~ /<!--[[:space:]]*detox:[[:space:]]*allow-end[[:space:]]*-->/)   { in_allow_block = 0; continue }
    if (in_allow_block) continue

    if (match(line, /<!--[[:space:]]*detox:[[:space:]]*allow[[:space:]]+[^-]+-->/)) {
      span = substr(line, RSTART, RLENGTH)
      sub(/<!--[[:space:]]*detox:[[:space:]]*allow[[:space:]]+/, "", span)
      sub(/[[:space:]]*-->/, "", span)
      n = split(span, items, /[[:space:]]+/)
      for (i = 1; i <= n; i++) if (items[i] != "") allow_pgraph[tolower(items[i])] = 1
      allow_paragraph = 1
      continue
    }
    if (allow_paragraph && line ~ /^[[:space:]]*$/) {
      allow_paragraph = 0; delete allow_pgraph
    }

    n_em = gsub(/—/, "—", line); em_count += n_em
    word_count += NF

    is_heading = (line ~ /^#+[[:space:]]/)
    lower = tolower(line)

    for (i = 1; i <= n_pat; i++) {
      ph = pat_phrase[i]; tier = pat_tier[i]; ctx = pat_ctx[i]
      key = tolower(ph)
      if (ph == "em-dash density") continue
      if (key in allow_list) continue
      if (allow_paragraph && key in allow_pgraph) continue
      if (ctx == "heading" && !is_heading) continue
      re = pat_re[i]
      s = lower
      while (match(s, re)) {
        abs_start = (length(lower) - length(s)) + RSTART
        mlen = RLENGTH
        before = (abs_start <= 1) ? "" : substr(lower, abs_start - 1, 1)
        after  = substr(lower, abs_start + mlen, 1)
        ph_starts_alnum = (substr(ph, 1, 1) ~ /[[:alnum:]]/)
        ph_ends_alnum   = (substr(ph, length(ph), 1) ~ /[[:alnum:]]/)
        boundary_ok = !(ph_starts_alnum && before ~ /[[:alnum:]_]/) && \
                      !(ph_ends_alnum   && after  ~ /[[:alnum:]_]/)
        ctx_ok = 1
        if (ctx == "sentence-start") {
          left = substr(lower, 1, abs_start - 1)
          stripped = left
          gsub(/^[[:space:]]*([-*>][[:space:]]+|#+[[:space:]]+)?/, "", stripped)
          if (stripped != "" && stripped !~ /[.!?][[:space:]]+$/) ctx_ok = 0
        } else if (ctx == "sentence-end") {
          right = substr(lower, abs_start + mlen)
          if (right !~ /^[.!?]([[:space:]]|$)/ && right !~ /^[[:space:]]*$/) ctx_ok = 0
        }
        if (boundary_ok && ctx_ok) {
          hits++
          file_hits[hits] = lineno SUBSEP tier SUBSEP ph SUBSEP pat_expl[i]
          if (hits >= 50) break
        }
        s = substr(s, RSTART + mlen)
        if (s == "") break
      }
      if (hits >= 50) break
    }
    if (hits >= 50) break
  }
  close(file)
  if (hook_skip) return

  if (word_count >= 50 && em_count * 200 > word_count * 3) {
    hits++
    file_hits[hits] = "0" SUBSEP "soft" SUBSEP "em-dash density" SUBSEP \
      "high em-dash density (" em_count " em-dashes in ~" word_count " words)"
  }
  if (hits == 0) return

  hard_n = 0; soft_n = 0
  for (i = 1; i <= hits; i++) {
    split(file_hits[i], parts, SUBSEP)
    if (parts[2] == "hard") hard_n++; else soft_n++
  }
  banner = "🚨 ai-slop-detector"
  if (hard_n > 0) banner = banner " — " hard_n " hard ban hit(s)"
  if (soft_n > 0) banner = banner ((hard_n > 0) ? ", " : " — ") soft_n " soft warn(s)"
  print banner
  print "  " file
  for (i = 1; i <= hits; i++) {
    split(file_hits[i], parts, SUBSEP)
    icon = (parts[2] == "hard") ? "  ‼" : "  ·"
    line_str = (parts[1] == "0") ? "" : ":" parts[1]
    print icon " " parts[3] line_str " — " parts[4]
  }
  print ""
}
