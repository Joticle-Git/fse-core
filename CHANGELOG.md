# Changelog

All notable changes to the FlowState Engineering methodology.

The version in `VERSION` tracks the methodology itself — the `FSE START … FSE END`
block published in `FSE.md` and `templates/FSE.md`. Editing that block is a version
event: it bumps `VERSION` and is mirrored by a git tag. Changes that do not touch
the methodology block (tooling, published summaries, repository hygiene) ship
without a version bump and are not listed here.

This project follows [Semantic Versioning](https://semver.org/):
**major** — a change that invalidates existing conformance;
**minor** — an additive, backward-compatible rule;
**patch** — clarification or terminology with no behavioural change.

Dates are the release (tag) dates.

## [1.3.1] — 2026-07-26

### Fixed
- **The published template was missing two standing orders.** `templates/FSE.md` —
  the artifact adopters copy — carried Universal Standing Orders 1–11 and the
  pre-1.1.0 PLAN phase. USO 12 (Planning Provenance), USO 13 (Query Artifact
  Discipline), and the PLAN-phase provenance steps were added to the root `FSE.md`
  during the 1.1.0 and 1.2.0 arcs but never backfilled into the template, because
  neither arc listed `templates/FSE.md` in its file list. Adopting from the template
  between 1.1.0 and 1.3.0 produced a constitution missing two rules. The methodology
  block is now byte-identical in both files; no rule text changed, so this is a
  patch, not a re-release of 1.3.0.

### Added
- `tooling/block-parity/check-block-parity.sh` — fails the build when the
  methodology block in `FSE.md` and `templates/FSE.md` diverge, and fails loudly
  (exit 2) when it cannot run rather than reporting green. The published-contract
  rule previously existed only as prose, which is how it drifted for two releases.
  Per USO 14, the check was verified by observing it fail on the actual historical
  violation before being trusted.

## [1.3.0] — 2026-07-26

### Added
- **Universal Standing Order 14 — Executable Enforcement.** Invariants are encoded
  as executable checks that fail the build, not carried as prose. A check must fail
  loudly when it cannot run — a gate that skips because a dependency is unreachable,
  a fixture is missing, or its target set is empty reports success while verifying
  nothing. Enforcement artifacts are themselves verified: observed failing on a known
  violation before being trusted to pass. Opened by
  `docs/methodology/executable-enforcement/NOTIFICATION-2026-07-26.md`.
- `CHANGELOG.md` (this file), backfilled from the tag history.

## [1.2.1] — 2026-07-07

### Changed
- Retired command-line-specific language from the *Session Numbering & Artifact
  Lifecycle* section. A session is "one complete assistant session"; identifiers
  "count sessions, not git operations." The planning/execution separation is an
  approval gate, not a boundary between two tools. Terminology only — no rule
  changed, so a patch bump.

## [1.2.0] — 2026-07-02

### Added
- **Universal Standing Order 13 — Query Artifact Discipline.** Schema changes are
  explicit, human-authored, versioned artifacts in a single canonical location;
  queries are centralized and named as addressable artifacts; queries crossing a
  module or bounded-context boundary are explicitly marked. Concrete locations,
  naming grammar, and bindings belong to each project's stack extension. Opened by
  `docs/methodology/query-artifact-discipline/NOTIFICATION-2026-07-01.md`.

## [1.1.0] — 2026-06-20

### Added
- **Universal Standing Order 12 — Planning Provenance.** Every plan element carries
  a provenance tag: **D** (Directed), **E** (Extrapolated), **I** (Inferred), or
  **S** (Scaffold). Only Inferred elements must be surfaced for confirmation before
  a build begins; Scaffold is exempt, which keeps the gate low-noise. Opened by
  `docs/methodology/planning-provenance/NOTIFICATION-2026-06-18.md`.

### Changed
- PLAN phase amended with the provenance tagging step and the surface-Inferred step.
- `templates/FSE_STATE.md` carries the provenance output convention so adopters
  inherit it.

## [1.0.0] — 2026-06-01

### Added
- First versioned methodology release: the Session Protocol
  (VERIFY → PLAN → EXECUTE → VALIDATE), the Self-Healing Build Loop and
  Counter-Point Protocol, the tiered document ecosystem, Universal Standing
  Orders 1–11, Session Numbering & Artifact Lifecycle, and the Module Pattern
  (Context-Bounded Context).

[1.3.1]: https://github.com/Joticle-Git/fse-core/releases/tag/v1.3.1
[1.3.0]: https://github.com/Joticle-Git/fse-core/releases/tag/v1.3.0
[1.2.1]: https://github.com/Joticle-Git/fse-core/releases/tag/v1.2.1
[1.2.0]: https://github.com/Joticle-Git/fse-core/releases/tag/v1.2.0
[1.1.0]: https://github.com/Joticle-Git/fse-core/releases/tag/v1.1.0
[1.0.0]: https://github.com/Joticle-Git/fse-core/releases/tag/v1.0.0
