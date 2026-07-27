================================================================================
FSE METHODOLOGY NOTIFICATION
Rule Classification — Universal Standing Order 15
================================================================================

SESSION CLASS: Methodology Notification + Constitution Amendment
SESSION SHAPE: Heavy (methodology block edit + version event)
ORIGIN: Office of the Chairman, Joticle, Inc.
DATE: 2026-07-26
METHODOLOGY VERSION: 1.3.1
TARGET METHODOLOGY VERSION: 1.4.0 (Rule Classification lands here)

================================================================================
1. NOTIFICATION TO THE FSE PROJECT
================================================================================

This document formally notifies the FlowState Engineering project of intent
to amend the methodology constitution by adding a new Universal Standing
Order: Rule Classification (USO 15), and by classifying every existing rule
under it.

The amendment is notified now, before any implementation, because:

  - It edits the FSE START ... FSE END methodology block, which is a
    version event. It bumps the methodology from 1.3.1 to 1.4.0 and is
    mirrored by a git tag.

  - It adds a new Universal Standing Order binding every FSE project.

  - It attaches a durable classification to every existing standing order
    and session-protocol step. Those classifications are bedrock decisions
    and are subject to Universal Standing Order 11.

This notification opens the amendment arc. No methodology text ships under
this notification alone. The notification is the opening artifact.

================================================================================
2. THE FAILURE MODE THIS ADDRESSES
================================================================================

The amendment exists to close a specific failure. It is stated here in the
abstract, as a property of methodology under changing tooling.

The failure mode is rule superstition.

Every rule in a development methodology is one of two kinds, and the
methodology does not currently say which.

Some rules are properties the artifact or the organization must hold no
matter who or what writes the code: schema history is immutable, secrets
never enter version control, a cross-boundary read is marked. These do not
expire. If anything, a more capable author makes them more load-bearing,
because a faster author reaches a wrong invariant sooner.

Other rules are scaffolding erected against a specific failure mode of a
specific generation of tooling — or of a tired human. "Output complete file
contents every time" and "work one file at a time, waiting between files"
exist because an early model generation drifted mid-response. They are
compensations, and a compensation carries an expiry date it does not know
about.

When the tooling generation that motivated a compensating rule passes, the
rule does not announce that it is obsolete. It stays in the constitution,
still enforced, still read at every session start, now costing throughput
and credibility while protecting against a failure mode that no longer
occurs. Worse, it is followed decreasingly in practice while remaining on
the books — the rule quietly becomes ceremony, and a methodology that
visibly carries ceremony loses adopters faster than one that is merely
incomplete.

Because the two kinds are indistinguishable in the current document, each
capability jump silently converts working rules into superstition, and there
is no mechanism to notice.

================================================================================
3. THE RULE BEING INSCRIBED
================================================================================

Rule Classification is three clauses:

  1. Every rule carries a class.  Each Universal Standing Order and each
     session-protocol step is tagged INVARIANT or COMPENSATING. An untagged
     rule is an unfinished rule.

  2. A compensating rule states what it compensates for.  Every
     COMPENSATING rule records the failure mode it guards against, whose
     failure mode it is, and the condition under which it is reviewed. A
     compensation without a stated failure mode cannot be evaluated and is
     therefore indistinguishable from superstition.

  3. Retirement is a version event with lineage.  A rule is demoted to
     advisory or retired only through the same notification-and-version
     process that promoted it, and the retirement is recorded in the same
     lineage as promotions. Rules are never dropped silently, and a review
     trigger firing is not by itself authority to retire.

Two sub-classes of COMPENSATING are distinguished, because they expire
differently:

  COMPENSATING(model)  — guards a failure mode of the assistant generation.
                         Reviewed when a materially more capable generation
                         ships. May be demoted or retired.

  COMPENSATING(human)  — guards a failure mode of the operator: attention
                         fatigue, momentum over protocol, approval by
                         reflex. Human attention does not ship a new
                         version. These are reviewed but are expected to
                         persist, and several become more load-bearing as
                         the assistant gets faster.

Default on review is demote-to-advisory while retaining any executable
check, not deletion. A check that still passes costs nothing; a rule
re-derived after an incident costs a release.

================================================================================
4. WHERE IT LIVES IN THE FSE STRUCTURE
================================================================================

  fse-core/
    FSE.md
      Universal Standing Orders                (NEW: USO 15, after USO 14)
      Rule Classification                      (NEW subsection: the class
                                                table covering every USO and
                                                every protocol step)
    VERSION                                    (1.3.1 -> 1.4.0)
    CHANGELOG.md                               (release entry)
    templates/
      FSE.md                                   (methodology block mirror —
                                                in scope by default, per the
                                                v1.3.1 lesson)
    docs/
      methodology/
        rule-classification/                   (NEW — amendment home)
          NOTIFICATION-2026-07-26.md           (this file)
    FSE_STATE.md                               (living-methodology entry)

  git tag v1.4.0                               (applied after commit)

The classification covers the session-protocol phases as well as the
standing orders. The most compensating text in the methodology is in the
EXECUTE phase, not in the standing-order list, and an amendment that tagged
only the numbered rules would leave it untagged.

================================================================================
5. SCOPE OF THE AMENDMENT
================================================================================

  1. NOTIFICATION-2026-07-26.md        this file (opening artifact)
  2. FSE.md                            USO 15 + Rule Classification section
  3. templates/FSE.md                  methodology block mirror
  4. VERSION                           1.3.1 -> 1.4.0
  5. CHANGELOG.md                      release entry
  6. README.md                         published standing-order list
  7. FSE_STATE.md                      living-methodology entry
  8. git tag v1.4.0                    version event sealed

No rule text is rewritten by this amendment. Classification is additive:
every existing rule remains in force exactly as written, and nothing is
demoted or retired here. This amendment installs the mechanism and applies
it; it exercises no retirement.

================================================================================
6. BEDROCK AUTHORING CONSTRAINT (USO 11)
================================================================================

The class assigned to each existing rule is a bedrock decision. Under the
Bedrock Authoring Guard, no class may be filled with a plausible default by
the implementing session. The classification table is proposed to the
operator as an explicit, per-rule list under Planning Provenance, marked
Inferred, and confirmed before it is written into the methodology block. Any
rule whose class the operator does not settle is recorded in OPEN DECISIONS
and left explicitly unclassified rather than being assigned a likely answer.

================================================================================
7. WHAT THIS NOTIFICATION DOES NOT AUTHORIZE
================================================================================

  - It does not authorize retiring, demoting, or rewriting any existing
    rule. Classification only.

  - It does not authorize the implementing session to assign classes
    without operator confirmation.

  - It does not authorize editing the FSE START ... FSE END block beyond
    USO 15 and the classification section.

  - It does not authorize a version event larger than minor. The change is
    additive and backward compatible: 1.3.1 -> 1.4.0.

  - It does not authorize automatic retirement when a review trigger fires.
    A trigger schedules a decision; it does not make one.

================================================================================
8. ACKNOWLEDGMENT
================================================================================

This notification is committed to the FSE methodology project as the opening
artifact of the Rule Classification amendment arc. Rule Classification is a
methodology-side standing order. It binds all current and future FSE
projects regardless of stack.

Filed: 2026-07-26
By: Office of the Chairman, Joticle, Inc.
Methodology version at filing: 1.3.1
Amendment target version: 1.4.0

================================================================================
END NOTIFICATION
================================================================================
