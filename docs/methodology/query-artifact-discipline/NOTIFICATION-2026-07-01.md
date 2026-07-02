================================================================================
FSE METHODOLOGY NOTIFICATION
Query Artifact Discipline — Universal Standing Order 13
================================================================================

SESSION CLASS: Methodology Notification + Constitution Amendment
SESSION SHAPE: Heavy (methodology block edit + version event)
ORIGIN: Office of the Chairman, Joticle, Inc.
DATE: 2026-07-01
METHODOLOGY VERSION: 1.1.0
TARGET METHODOLOGY VERSION: 1.2.0 (Query Artifact Discipline lands here)

================================================================================
1. NOTIFICATION TO THE FSE PROJECT
================================================================================

This document formally notifies the FlowState Engineering project of intent
to amend the methodology constitution by adding a new Universal Standing
Order: Query Artifact Discipline (USO 13).

The amendment is notified now, before any implementation, because:

  - It edits the FSE START ... FSE END methodology block, which is a
    version event under the fse-core versioning rule. It bumps the
    methodology from 1.1.0 to 1.2.0 and is mirrored by a git tag.

  - It adds a new Universal Standing Order that binds every FSE project
    on every stack, indefinitely.

This notification opens the amendment arc. No methodology text ships under
this notification alone. The notification is the opening artifact.

================================================================================
2. THE FAILURE MODE THIS ADDRESSES
================================================================================

The amendment exists to close a specific, recurring failure. It is stated
here in the abstract, as a property of AI-assisted development, not as a
report of any single event.

The failure mode is query-artifact drift.

As a project grows, two classes of artifact accumulate: schema-change
scripts that alter the database, and data queries that read and write it.
With no rule governing where these artifacts live, how they are named, or
how cross-boundary access is marked, each project makes locally reasonable
choices. Schema scripts land wherever the author last put one. Queries are
written inline at the call site because that is the path of least
resistance. Cross-boundary reads look identical to same-boundary reads, so
nobody can tell by inspection which queries reach across a seam.

The cost surfaces later. Schema history becomes unreconstructable because
the changes were never captured as ordered, canonical artifacts. Query
logic scatters across call sites, so a single change of shape requires
hunting every copy. And because cross-boundary access is invisible, the
architecture erodes silently: modules reach into each other's data and no
grep can find where.

Across a portfolio the divergence appears independently and in the same
dimensions every time: location, naming, boundary marking. Independent
convergence on the same failure is the signature of a missing methodology
rule, not a set of unrelated implementation mistakes.

================================================================================
3. THE RULE BEING INSCRIBED
================================================================================

Query Artifact Discipline is three clauses:

  1. Explicit schema.  Schema changes are explicit, human-authored,
     versioned artifacts stored in a single canonical location. The
     framework or ORM never generates, applies, or infers schema
     implicitly.

  2. Centralized, named queries.  Data queries are centralized and named
     as addressable artifacts. Queries are never embedded inline at the
     call site.

  3. Marked cross-boundary access.  Queries that cross a module or
     bounded-context boundary are explicitly marked, so cross-boundary
     access is discoverable by inspection alone.

Binding note. Concrete file locations, naming grammar, language bindings,
and boundary-marking syntax are defined by each project's binding layer or
stack extension. Core defines the principle. It does not mandate a stack.

The discipline lives or dies on clause 3. Clauses 1 and 2 keep schema and
query logic legible; a project can adopt them and still let cross-boundary
reads hide in plain sight. The marking requirement is what makes an
architectural seam enforceable, because a seam that cannot be grepped
cannot be governed.

================================================================================
4. WHERE IT LIVES IN THE FSE STRUCTURE
================================================================================

  fse-core/
    FSE.md
      Universal Standing Orders                (NEW: USO 13, after USO 12)
    VERSION                                    (1.1.0 -> 1.2.0)
    docs/
      methodology/
        query-artifact-discipline/             (NEW — amendment home)
          NOTIFICATION-2026-07-01.md           (this file)
    FSE_STATE.md                               (living-methodology entry:
                                                promotion of USO 13)

  git tag v1.2.0                               (applied after commit)

The USO 13 text is inside the FSE START ... FSE END block. Unlike the USO
12 arc, this amendment adds no PLAN-phase mechanics and no template output
convention. It is a standing-order addition only.

================================================================================
5. SCOPE OF THE AMENDMENT
================================================================================

The amendment is bounded. It is authored in this order, one file at a time:

  1. NOTIFICATION-2026-07-01.md         this file (opening artifact)
  2. FSE.md                             USO 13 added after USO 12
  3. VERSION                            1.1.0 -> 1.2.0
  4. FSE_STATE.md (fse-core's own)      living-methodology promotion entry
  5. git tag v1.2.0                     version event sealed

No file outside this list is touched. No implementation beyond methodology
text and the version event is authorized by this notification.

================================================================================
6. WHAT THIS NOTIFICATION DOES NOT AUTHORIZE
================================================================================

  - It does not authorize editing any FSE START ... FSE END block beyond
    the addition of USO 13.

  - It does not authorize filling any placeholder slot in templates/*.

  - It does not authorize mandating a stack-specific binding in Core. The
    concrete binding is the project's, not the methodology's.

  - It does not authorize a version event larger than minor. The change is
    additive and backward compatible: 1.1.0 -> 1.2.0, not 2.0.0.

================================================================================
7. ACKNOWLEDGMENT
================================================================================

This notification is committed to the FSE methodology project as the
opening artifact of the Query Artifact Discipline amendment arc. The
amendment proceeds under the rule inscribed herein. Query Artifact
Discipline is a methodology-side standing order. It binds all current and
future FSE projects regardless of stack.

Filed: 2026-07-01
By: Office of the Chairman, Joticle, Inc.
Methodology version at filing: 1.1.0
Amendment target version: 1.2.0

================================================================================
END NOTIFICATION
================================================================================
