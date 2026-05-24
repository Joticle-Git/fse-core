# FSE Field Report Template

A field report is an account of using FSE on real work — what worked, what
didn't, what you'd change. Field reports are the most valuable contribution
to FSE because they keep the methodology honest. A methodology that only
collects success stories stops improving.

Copy this file, fill in every section, and post it to the discussions tab
or r/FlowStateEngineering. Delete this header and the instruction lines in
*italics* before publishing.

---

## Before You Publish — Sanitization Checklist

FSE field reports teach the *pattern*. They never expose the *specifics* of
private work. Confirm every box before posting:

- [ ] No client, employer, or customer names
- [ ] No proprietary product names, codenames, or internal project names
- [ ] No portfolio details that identify a specific business or owner
- [ ] No credentials, hostnames, connection strings, or deploy targets
- [ ] No private repository URLs or internal file paths that reveal identity
- [ ] Code excerpts are illustrative — renamed, trimmed, generic
- [ ] The report would be safe to read aloud to a stranger

If a detail is needed to make the lesson land, generalize it. "A regulated
healthcare codebase" teaches as well as a named product, and exposes nothing.

---

## Title

*One line. State the situation and the outcome. Example: "Onboarding a
four-year-old legacy app to FSE — what the audit caught."*

## Summary

*Two or three sentences. What you did, what FSE was used for, and the single
most useful takeaway. A reader should be able to stop here and still have
learned something.*

## Context

*Set the scene without identifying anything private.*

- **Project type:** *e.g., greenfield SaaS, legacy production app, internal tool*
- **Stack:** *language, framework, database — generic is fine*
- **AI tool(s):** *Claude Code, Cursor, Copilot, etc.*
- **Team size:** *solo, small team*
- **FSE maturity at start:** *new to FSE / adopting on existing project / established*
- **Tier 2 files in use:** *which, if any — FSE_POLICE, FSE_SCHEMA, etc.*

## What You Set Out To Do

*The goal of the session or sessions this report covers. One paragraph.*

## What Happened

*The core of the report. Walk through it honestly. Cover both the working
and the not-working. Useful prompts:*

- *Which FSE mechanism was load-bearing here — foundation files, the
  protocol, the build loop, the Counter-Point Protocol?*
- *Where did the AI drift, and did FSE catch it?*
- *Did the self-healing loop hit its three-attempt limit? What happened next?*
- *Did anything in FSE get in the way or feel like overhead?*

## What Worked

*Specific, concrete. "The VERIFY phase caught a schema assumption before any
code was written" is useful. "FSE is great" is not.*

## What Didn't

*Equally specific. This section is the reason the report has value. If
nothing went wrong, the report is probably under-examined — look harder.*

## What You'd Change

*Concrete suggestions. A methodology improvement, a missing standing order, a
Tier 2 file that should have existed earlier, a protocol gap. If it's a
proposal for FSE itself, note whether you've opened an issue or PR.*

## Lessons Extracted

*The portable takeaways — the part another FSE user can apply to their own
project. State them as plain rules or observations.*

- *Lesson one*
- *Lesson two*

---

## Optional — Legacy Onboarding Section

*Fill this in only if the report covers adopting FSE on an existing
codebase. Delete the section entirely otherwise.*

### Starting State

*What the project looked like before FSE — build state, test coverage,
documentation, known problem areas. Generic descriptions only.*

### Audit Findings

*What the FSE_DISCOVERY audit surfaced. The gaps, the surprises, the
deviations from convention. This is often the most instructive part of a
legacy report.*

### Remediation Plan

*How the deviations were prioritized and addressed — or deliberately
deferred. What got fixed first and why.*

### Onboarding Cost

*Honest accounting. How many sessions, roughly how much effort, before the
project was running clean FSE. Future adopters need realistic expectations.*

---

*End of template. Delete all italic instruction lines before publishing.*
