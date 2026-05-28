#!/usr/bin/env bash
# Create the structured label set documented in .github/labels.yml.
# Requires the `gh` CLI authenticated against the target repo.
#
# Usage:
#   ./scripts/setup-labels.sh <owner/repo>
#
# Re-running is safe: `gh label create` fails on existing labels but the script
# continues; check the output if you want to verify each label landed.

set -uo pipefail

REPO="${1:-}"
if [ -z "$REPO" ]; then
  echo "Usage: $0 <owner/repo>" >&2
  exit 1
fi

if ! command -v gh >/dev/null 2>&1; then
  echo "Error: gh CLI not found on PATH" >&2
  exit 1
fi

# (name, color, description) — kept in sync with .github/labels.yml by hand.
labels=(
  "type:decision|5319e7|A decision a human needs to make"
  "type:research|7057ff|Read-only investigation; produces a report"
  "type:task|1d76db|Concrete agent-actionable work"
  "type:question|d4c5f9|An open question pending clarification"
  "status:active|0e8a16|Someone is doing this now"
  "status:queued|c5def5|Will pick up next; dependencies clear"
  "status:blocked|fbca04|Waiting on a dependency"
  "status:backlog|c2e0c6|Not yet prioritized; carry-forward"
  "owner:human|d93f0b|A human must act; agent cannot decide"
  "owner:agent|006b75|An agent can act autonomously"
  "scope:current-version|0052cc|In scope for the version currently being built"
  "scope:next-version|bfd4f2|Deferred to the next version"
  "scope:carry-forward|e99695|Surfaced from prior work; not in current plan"
)

echo "Creating labels in $REPO..."
created=0
skipped=0
for spec in "${labels[@]}"; do
  IFS='|' read -r name color desc <<< "$spec"
  if gh label create "$name" --color "$color" --description "$desc" --repo "$REPO" 2>/dev/null; then
    created=$((created+1))
    echo "  + $name"
  else
    skipped=$((skipped+1))
    echo "  · $name (already exists or failed)"
  fi
done

echo "Done. $created created, $skipped skipped/existing."
