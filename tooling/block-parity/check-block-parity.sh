#!/usr/bin/env bash
# ============================================================================
# check-block-parity — fse-core self-check (USO 14)
# ----------------------------------------------------------------------------
# The FSE START ... FSE END methodology block must be byte-identical in the
# root FSE.md and the published templates/FSE.md. The root is the source of
# truth; templates/FSE.md is the contract adopters copy.
#
# This exists because that rule lived only as prose ("templates are published
# contracts") and nothing enforced it. Universal Standing Orders 12 and 13, and
# the PLAN-phase provenance steps, were added to the root across the v1.1.0 and
# v1.2.0 arcs and never backfilled into the template — the published contract
# silently shipped 1..11 for two releases while the constitution said 1..13.
#
# Fails loudly rather than skipping: an unreadable file or a missing/malformed
# block is an error, not a pass. A check that cannot run must not report green.
#
# Usage:  check-block-parity.sh            (run from anywhere in the repo)
# Exit:   0 identical | 1 divergent | 2 cannot run
# ============================================================================
set -u

ROOT="$(git rev-parse --show-toplevel 2>/dev/null)" || {
  echo "block-parity: not inside a git repository" >&2; exit 2; }

A="$ROOT/FSE.md"
B="$ROOT/templates/FSE.md"

for f in "$A" "$B"; do
  [[ -r "$f" ]] || { echo "block-parity: cannot read $f" >&2; exit 2; }
done

extract() {                    # print the methodology block, markers included
  awk '/^<!-- FSE START/{f=1} f{print} /^<!-- FSE END/{f=0}' "$1"
}

ta="$(extract "$A")"
tb="$(extract "$B")"

# A gate whose subject set is empty must fail, not pass.
for pair in "A:$ta" "B:$tb"; do
  name="${pair%%:*}"; body="${pair#*:}"
  if [[ -z "${body//[[:space:]]/}" ]]; then
    echo "block-parity: no FSE START/END block found in $([[ $name == A ]] && echo "$A" || echo "$B")" >&2
    exit 2
  fi
done
if ! grep -q '^<!-- FSE END' <<<"$ta" || ! grep -q '^<!-- FSE END' <<<"$tb"; then
  echo "block-parity: a methodology block is unterminated (no FSE END marker)" >&2
  exit 2
fi

if diff_out="$(diff <(printf '%s\n' "$ta") <(printf '%s\n' "$tb"))"; then
  echo "block-parity: methodology blocks identical ($(wc -l <<<"$ta") lines)"
  exit 0
fi

echo "block-parity: FSE.md and templates/FSE.md have DIVERGED" >&2
echo "  '<' = root only (missing from the published template)" >&2
echo "  '>' = template only (stale text adopters are copying)" >&2
printf '%s\n' "$diff_out" | cut -c1-160 >&2
echo "" >&2
echo "The root is the source of truth. Backfill templates/FSE.md, and remember" >&2
echo "that editing the block in either file is a version event." >&2
exit 1
