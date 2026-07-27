# Rule Classification — Arc Resolution

**Filed:** 2026-07-26
**Opens from:** `NOTIFICATION-2026-07-26.md` (same folder)
**Outcome:** taxonomy rejected; scope changed to retirement.
**Ships as:** methodology v1.4.0

## What changed

The notification proposed tagging every standing order and protocol step
`INVARIANT` or `COMPENSATING`, with stated failure modes, review triggers, and a
governed retirement path.

On review the taxonomy was judged overhead. Everything it promised to deliver —
distinguishing rules that expire from rules that do not — was obtainable directly,
by retiring the rules that had already expired. The classification would have added
a permanent governance layer to the constitution in order to schedule a decision
that could simply be made.

A methodology that carries a governance layer for its own rules is heavier to read,
heavier to adopt, and no more correct. The taxonomy does not ship.

## What ships instead

Four rules are retired. Each was contradicted by ordinary practice without cost,
which is the working definition of a dead rule:

- **USO 2** — "No snippets or partial code. Output complete file contents every
  time." Assistants apply precise, verified edits directly; USO 1 already forbids
  incomplete implementations.
- **EXECUTE 1** — "Work one file at a time."
- **EXECUTE 2** — "Output complete file contents — never snippets, diffs, or
  partial implementations." The EXECUTE-phase restatement of USO 2.
- **EXECUTE 4** — "After each file, wait for confirmation before moving to the next
  file." The PLAN-phase approval gate already governs authorization.

No other rule is altered. Nothing is added.

## Numbering

Standing-order numbers are stable and never reused. USO 2 is withdrawn in place
rather than renumbered, because `tooling/fse-doctor` and downstream holdings cite
standing orders by number. Protocol steps are internal to their phase and are
renumbered.

## Why this is recorded

The considered-and-rejected amendment is kept because it is part of the lineage.
A methodology that shows it evaluated a governance layer and declined it on
overhead grounds is more defensible than one that never asked the question.
