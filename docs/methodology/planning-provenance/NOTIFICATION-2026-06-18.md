================================================================================
FSE METHODOLOGY NOTIFICATION
Planning Provenance — Universal Standing Order 12
================================================================================

SESSION CLASS: Methodology Notification + Constitution Amendment
SESSION SHAPE: Heavy (methodology block edit + version event)
ORIGIN: Office of the Chairman, Joticle, Inc.
DATE: 2026-06-18
METHODOLOGY VERSION: 1.0.0
TARGET METHODOLOGY VERSION: 1.1.0 (Planning Provenance lands here)

================================================================================
1. NOTIFICATION TO THE FSE PROJECT
================================================================================

This document formally notifies the FlowState Engineering project of intent
to amend the methodology constitution by adding a new Universal Standing
Order: Planning Provenance (USO 12).

The amendment is notified now, before any implementation, because:

  - It edits the FSE START ... FSE END methodology block, which is a
    version event under the fse-core versioning rule. It bumps the
    methodology from 1.0.0 to 1.1.0 and is mirrored by a git tag.

  - It adds a new Universal Standing Order that binds every FSE project
    on every stack, indefinitely.

  - It adds mechanics to the PLAN phase that change how every plan,
    discovery, and design is expressed going forward.

  - It introduces a published output convention into the FSE_STATE.md
    template that downstream adopters inherit.

This notification opens the amendment arc. No methodology text ships under
this notification alone. The notification is the opening artifact.

================================================================================
2. THE FAILURE MODE THIS ADDRESSES
================================================================================

The amendment exists to close a specific, recurring planning failure. It is
stated here in the abstract, as a property of AI-assisted planning, not as
a report of any single event.

The failure mode is inference-as-requirement.

During planning or discovery, an assistant introduces an element that no
operator directed — a field, a constraint, a feature, a modeling choice.
The element is reasonable. It is added in good faith as best practice. But
nobody asked for it.

On the next session, that element is already in the plan. It reads
identically to the elements the operator did direct. Nothing in the plan
records that it was an unprompted judgment call. So it is carried forward,
built on, and defended — as though it were a requirement. The inference has
acquired the authority of a directive purely by persisting in the document.

The cost is asymmetric. A missing requirement gets noticed: the operator
sees the gap and fills it. An invented requirement does not get noticed:
it gets enforced by every session that follows, silently widening scope,
adding surface area, and constraining later decisions against a foundation
no human ever laid.

This is the planning-time analogue of the failure the Bedrock Authoring
Guard (USO 11) already addresses for foundation files. USO 11 governs what
gets written into bedrock. Planning Provenance governs what gets acted on
during a session. The two are companions.

================================================================================
3. THE RULE BEING INSCRIBED
================================================================================

Every element of a plan, discovery, or design carries an explicit
provenance tag:

  D (Directed)     Explicitly requested by the operator. Traceable to a
                   specific directive.

  E (Extrapolated) Logically required by a directed requirement, even if
                   not stated outright. If X is directed and X cannot work
                   without Y, then Y is Extrapolated, not Inferred.

  I (Inferred)     Not directed. Added as best-practice or standard
                   modeling. A defensible judgment call nobody asked for.

  S (Scaffold)     Generic platform, framework, or architectural
                   convention. Not domain-specific. Audit columns, CRUD
                   plumbing, soft-delete patterns.

Surfacing rule:

  - Only Inferred (I) elements must be surfaced to the operator as a
    separate, explicit list for confirmation before any build begins. An
    unconfirmed inference is a question, not a foundation.

  - Extrapolated (E) elements are stated alongside the directed
    requirement they derive from, so the operator can check the logic.

  - Directed (D) elements reference their directive.

  - Scaffold (S) is exempt from surfacing. It is standard convention, and
    exempting it is what keeps the gate low-noise. A gate that flags
    everything is a gate operators learn to ignore.

The discipline lives or dies on the I/S distinction. Inferred is the
unprompted domain judgment that must be confirmed. Scaffold is the
ambient convention that needs no confirmation. Tagging Scaffold as
Inferred would flood the surfacing list and train the operator to wave it
through — which reintroduces the exact failure mode the rule exists to
prevent.

================================================================================
4. WHERE IT LIVES IN THE FSE STRUCTURE
================================================================================

  fse-core/
    FSE.md
      Universal Standing Orders                (NEW: USO 12, after USO 11)
      FSE Session Protocol -> 2. PLAN          (AMENDED: D/E/I/S tagging
                                                step + surface-Inferred step)
    VERSION                                    (1.0.0 -> 1.1.0)
    templates/
      FSE_STATE.md                             (NEW: discovery/planning
                                                output convention — tag
                                                elements D/E/I/S, surface
                                                Inferred as a separate
                                                explicit list before build)
    docs/
      methodology/
        planning-provenance/                   (NEW — amendment home)
          NOTIFICATION-2026-06-18.md           (this file)

  git tag v1.1.0                               (applied after commit)

The USO 12 text and the PLAN-phase mechanics are inside the FSE START ...
FSE END block. The templates/FSE_STATE.md convention is a published
contract that downstream adopters inherit. fse-core's own FSE_STATE.md
records the promotion as a living-methodology entry.

================================================================================
5. SCOPE OF THE AMENDMENT
================================================================================

The amendment is bounded. It is authored across a single session in this
order, one file at a time:

  1. NOTIFICATION-2026-06-18.md         this file (opening artifact)
  2. FSE.md                             USO 12 + PLAN phase mechanics
  3. VERSION                            1.0.0 -> 1.1.0
  4. templates/FSE_STATE.md             output convention for adopters
  5. FSE_STATE.md (fse-core's own)      living-methodology promotion entry
  6. git tag v1.1.0                     version event sealed

No file outside this list is touched. No implementation beyond methodology
text and the version event is authorized by this notification.

================================================================================
6. WHAT THIS NOTIFICATION DOES NOT AUTHORIZE
================================================================================

  - It does not authorize editing any FSE START ... FSE END block beyond
    the addition of USO 12 and the PLAN-phase mechanics described here.

  - It does not authorize filling any placeholder slot in templates/*.
    The output convention is added as methodology guidance, not as a
    filled value.

  - It does not authorize any revision of the D/E/I/S definitions or the
    surfacing rule from the text ratified in this arc.

  - It does not authorize a version event larger than minor. The change
    is additive and backward compatible: 1.0.0 -> 1.1.0, not 2.0.0.

================================================================================
7. ACKNOWLEDGMENT
================================================================================

This notification is committed to the FSE methodology project as the
opening artifact of the Planning Provenance amendment arc. The amendment
proceeds under the rule inscribed herein. Planning Provenance is a
methodology-side standing order. It is framed on its own merits and binds
all current and future FSE projects regardless of stack.

Filed: 2026-06-18
By: Office of the Chairman, Joticle, Inc.
Methodology version at filing: 1.0.0
Amendment target version: 1.1.0

================================================================================
END NOTIFICATION
================================================================================
