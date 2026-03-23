#!/usr/bin/env bash
#
# AutoResearch Eval Runner for autopunk-media-skills
#
# Usage:
#   ./tests/run-eval.sh --skill hook-generator
#   ./tests/run-eval.sh --top20
#
# Requires: ANTHROPIC_API_KEY environment variable, curl, jq

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
SKILLS_DIR="$REPO_DIR/skills"
ASSERTIONS_DIR="$SCRIPT_DIR/assertions"
INPUTS_DIR="$SCRIPT_DIR/inputs"
RUNS_DIR="$SCRIPT_DIR/runs"

API_URL="https://api.anthropic.com/v1/messages"
MODEL="claude-sonnet-4-20250514"
MAX_TOKENS=4096

# Top 20 skills used in the eval framework
TOP20=(
  hook-generator
  seo-title-optimizer
  thumbnail-concept-brief
  full-script-writer
  shorts-script-adapter
  pitch-treatment-writer
  logline-creator
  commentary-writer
  interview-question-generator
  story-angle-finder
  headline-generator
  foia-request-writer
  solo-episode-script
  ad-read-script
  caption-writer
  thread-writer
  cinematic-shot-prompt
  dataset-summary-brief
  headline-writer
  lede-writer
)

# ---------- helpers ----------

usage() {
  echo "Usage:"
  echo "  $0 --skill <skill-name>    Eval a single skill"
  echo "  $0 --top20                 Eval all top-20 skills"
  echo ""
  echo "Requires ANTHROPIC_API_KEY environment variable."
  exit 1
}

check_deps() {
  for cmd in curl jq; do
    if ! command -v "$cmd" &>/dev/null; then
      echo "Error: '$cmd' is required but not installed."
      exit 1
    fi
  done
  if [[ -z "${ANTHROPIC_API_KEY:-}" ]]; then
    echo "Error: ANTHROPIC_API_KEY environment variable is not set."
    echo ""
    echo "Set it with:"
    echo "  export ANTHROPIC_API_KEY=sk-ant-..."
    exit 1
  fi
}

# Find the skill .md file by searching the skills directory
find_skill_file() {
  local skill_name="$1"
  local found
  found=$(find "$SKILLS_DIR" -name "${skill_name}.md" -type f 2>/dev/null | head -1)
  if [[ -z "$found" ]]; then
    echo ""
    return
  fi
  echo "$found"
}

# Find the assertions file that contains this skill
find_assertions_file() {
  local skill_name="$1"
  local found
  found=$(grep -rl "\"${skill_name}\"" "$ASSERTIONS_DIR" 2>/dev/null | head -1)
  if [[ -z "$found" ]]; then
    echo ""
    return
  fi
  echo "$found"
}

# Find the inputs file for this skill
find_inputs_file() {
  local skill_name="$1"
  local path="$INPUTS_DIR/${skill_name}.json"
  if [[ -f "$path" ]]; then
    echo "$path"
  else
    echo ""
  fi
}

# Call the Anthropic API to generate output from a skill
generate_output() {
  local system_prompt="$1"
  local user_prompt="$2"

  local payload
  payload=$(jq -n \
    --arg model "$MODEL" \
    --argjson max_tokens "$MAX_TOKENS" \
    --arg system "$system_prompt" \
    --arg user "$user_prompt" \
    '{
      model: $model,
      max_tokens: $max_tokens,
      system: $system,
      messages: [
        { role: "user", content: $user }
      ]
    }')

  local response
  response=$(curl -s -w "\n%{http_code}" "$API_URL" \
    -H "Content-Type: application/json" \
    -H "x-api-key: $ANTHROPIC_API_KEY" \
    -H "anthropic-version: 2023-06-01" \
    -d "$payload")

  local http_code
  http_code=$(echo "$response" | tail -1)
  local body
  body=$(echo "$response" | sed '$d')

  if [[ "$http_code" != "200" ]]; then
    echo "API_ERROR: HTTP $http_code - $(echo "$body" | jq -r '.error.message // "Unknown error"' 2>/dev/null)"
    return 1
  fi

  echo "$body" | jq -r '.content[0].text // "NO_CONTENT"'
}

# Call the Anthropic API to grade output against assertions
grade_output() {
  local skill_output="$1"
  local assertions_json="$2"

  local grading_prompt
  grading_prompt="You are a strict binary evaluator. You will be given a skill output and a set of assertions. For each assertion, determine if it PASSES (the output satisfies the assertion) or FAILS (the output does not satisfy the assertion).

Respond ONLY with a JSON object in this exact format, no other text:
{
  \"results\": [
    {\"id\": \"assertion-id\", \"pass\": true, \"reason\": \"brief explanation\"},
    {\"id\": \"assertion-id\", \"pass\": false, \"reason\": \"brief explanation\"}
  ]
}

ASSERTIONS:
$assertions_json

SKILL OUTPUT TO EVALUATE:
$skill_output"

  local payload
  payload=$(jq -n \
    --arg model "$MODEL" \
    --argjson max_tokens 2048 \
    --arg user "$grading_prompt" \
    '{
      model: $model,
      max_tokens: $max_tokens,
      messages: [
        { role: "user", content: $user }
      ]
    }')

  local response
  response=$(curl -s -w "\n%{http_code}" "$API_URL" \
    -H "Content-Type: application/json" \
    -H "x-api-key: $ANTHROPIC_API_KEY" \
    -H "anthropic-version: 2023-06-01" \
    -d "$payload")

  local http_code
  http_code=$(echo "$response" | tail -1)
  local body
  body=$(echo "$response" | sed '$d')

  if [[ "$http_code" != "200" ]]; then
    echo "GRADE_ERROR"
    return 1
  fi

  # Extract the JSON from the response, handling possible markdown fencing
  local text
  text=$(echo "$body" | jq -r '.content[0].text // "NO_CONTENT"')

  # Strip markdown code fences if present
  text=$(echo "$text" | sed '/^```json$/d' | sed '/^```$/d')

  echo "$text"
}

# ---------- main eval logic ----------

eval_skill() {
  local skill_name="$1"

  echo "========================================="
  echo "Evaluating: $skill_name"
  echo "========================================="

  # Find files
  local skill_file
  skill_file=$(find_skill_file "$skill_name")
  if [[ -z "$skill_file" ]]; then
    echo "  ERROR: Skill file not found for '$skill_name'"
    return 1
  fi
  echo "  Skill file: $skill_file"

  local assertions_file
  assertions_file=$(find_assertions_file "$skill_name")
  if [[ -z "$assertions_file" ]]; then
    echo "  ERROR: Assertions file not found for '$skill_name'"
    return 1
  fi
  echo "  Assertions: $assertions_file"

  local inputs_file
  inputs_file=$(find_inputs_file "$skill_name")
  if [[ -z "$inputs_file" ]]; then
    echo "  ERROR: Inputs file not found for '$skill_name'"
    return 1
  fi
  echo "  Inputs: $inputs_file"

  # Read skill content as system prompt
  local system_prompt
  system_prompt=$(cat "$skill_file")

  # Read assertions for this skill
  local assertions
  assertions=$(jq -r ".skills.\"${skill_name}\".assertions" "$assertions_file")
  if [[ "$assertions" == "null" ]]; then
    echo "  ERROR: No assertions found for '$skill_name' in $assertions_file"
    return 1
  fi

  # Create output directory
  local timestamp
  timestamp=$(date +%Y%m%d-%H%M%S)
  local run_dir="$RUNS_DIR/$skill_name/$timestamp"
  mkdir -p "$run_dir"

  # Read inputs
  local input_count
  input_count=$(jq '.inputs | length' "$inputs_file")
  echo "  Inputs to test: $input_count"
  echo ""

  local total_assertions=0
  local total_passed=0
  local total_failed=0
  local all_results="[]"

  for i in $(seq 0 $((input_count - 1))); do
    local input_id
    input_id=$(jq -r ".inputs[$i].id" "$inputs_file")
    local input_desc
    input_desc=$(jq -r ".inputs[$i].description" "$inputs_file")
    local input_prompt
    input_prompt=$(jq -r ".inputs[$i].prompt" "$inputs_file")

    echo "  [$((i+1))/$input_count] $input_id: $input_desc"

    # Generate output
    echo "    Generating output..."
    local output
    output=$(generate_output "$system_prompt" "$input_prompt")
    if [[ "$output" == API_ERROR* ]]; then
      echo "    $output"
      continue
    fi

    # Save output
    echo "$output" > "$run_dir/output-${input_id}.txt"

    # Grade output
    echo "    Grading against assertions..."
    local grade_result
    grade_result=$(grade_output "$output" "$assertions")
    if [[ "$grade_result" == "GRADE_ERROR" ]]; then
      echo "    ERROR: Grading failed"
      continue
    fi

    # Save grade result
    echo "$grade_result" > "$run_dir/grade-${input_id}.json"

    # Count passes and fails
    local passed
    passed=$(echo "$grade_result" | jq '[.results[] | select(.pass == true)] | length' 2>/dev/null || echo 0)
    local failed
    failed=$(echo "$grade_result" | jq '[.results[] | select(.pass == false)] | length' 2>/dev/null || echo 0)
    local assertion_count=$((passed + failed))

    total_assertions=$((total_assertions + assertion_count))
    total_passed=$((total_passed + passed))
    total_failed=$((total_failed + failed))

    echo "    Result: $passed/$assertion_count passed"

    # Print failures
    local fail_details
    fail_details=$(echo "$grade_result" | jq -r '.results[] | select(.pass == false) | "      FAIL: \(.id) - \(.reason)"' 2>/dev/null)
    if [[ -n "$fail_details" ]]; then
      echo "$fail_details"
    fi

    # Accumulate results
    all_results=$(echo "$all_results" | jq \
      --arg input_id "$input_id" \
      --arg input_desc "$input_desc" \
      --argjson passed "$passed" \
      --argjson failed "$failed" \
      --argjson grade "$grade_result" \
      '. + [{
        input_id: $input_id,
        description: $input_desc,
        passed: $passed,
        failed: $failed,
        details: $grade
      }]')

    echo ""
  done

  # Calculate pass rate
  local pass_rate=0
  if [[ $total_assertions -gt 0 ]]; then
    pass_rate=$(echo "scale=1; $total_passed * 100 / $total_assertions" | bc)
  fi

  # Write summary results
  local results_json
  results_json=$(jq -n \
    --arg skill "$skill_name" \
    --arg timestamp "$timestamp" \
    --argjson total_assertions "$total_assertions" \
    --argjson total_passed "$total_passed" \
    --argjson total_failed "$total_failed" \
    --arg pass_rate "${pass_rate}%" \
    --argjson inputs "$all_results" \
    '{
      skill: $skill,
      timestamp: $timestamp,
      summary: {
        total_assertions: $total_assertions,
        passed: $total_passed,
        failed: $total_failed,
        pass_rate: $pass_rate
      },
      inputs: $inputs
    }')

  echo "$results_json" > "$run_dir/results.json"

  # Print summary
  echo "  ----------------------------------------"
  echo "  SUMMARY: $skill_name"
  echo "  Assertions: $total_passed/$total_assertions passed ($pass_rate%)"
  if [[ $total_failed -gt 0 ]]; then
    echo "  Status: NEEDS IMPROVEMENT"
  else
    echo "  Status: PASSING"
  fi
  echo "  Results saved: $run_dir/results.json"
  echo "  ----------------------------------------"
  echo ""
}

# ---------- argument parsing ----------

main() {
  check_deps

  if [[ $# -eq 0 ]]; then
    usage
  fi

  local mode=""
  local skill_name=""

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --skill)
        mode="single"
        skill_name="${2:-}"
        if [[ -z "$skill_name" ]]; then
          echo "Error: --skill requires a skill name"
          usage
        fi
        shift 2
        ;;
      --top20)
        mode="top20"
        shift
        ;;
      -h|--help)
        usage
        ;;
      *)
        echo "Unknown argument: $1"
        usage
        ;;
    esac
  done

  if [[ -z "$mode" ]]; then
    usage
  fi

  echo ""
  echo "AutoResearch Eval Runner"
  echo "========================"
  echo "Model: $MODEL"
  echo "Date: $(date '+%Y-%m-%d %H:%M:%S')"
  echo ""

  if [[ "$mode" == "single" ]]; then
    eval_skill "$skill_name"
  elif [[ "$mode" == "top20" ]]; then
    echo "Running evals for all top-20 skills..."
    echo ""

    local pass_count=0
    local fail_count=0

    for skill in "${TOP20[@]}"; do
      if eval_skill "$skill"; then
        pass_count=$((pass_count + 1))
      else
        fail_count=$((fail_count + 1))
      fi
    done

    echo ""
    echo "========================================="
    echo "TOP-20 EVAL COMPLETE"
    echo "Skills evaluated: ${#TOP20[@]}"
    echo "Successful: $pass_count"
    echo "Errors: $fail_count"
    echo "========================================="
  fi
}

main "$@"
