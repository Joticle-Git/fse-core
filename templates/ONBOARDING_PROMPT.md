# FSE Onboarding Prompt

Paste this prompt into your AI assistant (Claude Code, Cursor, etc.) from the root of a project you want to onboard to FlowState Engineering.

The prompt runs in three phases. **Do not skip ahead.** Each phase ends with an explicit handoff to the next.

---

## PASTE BELOW THIS LINE

You are onboarding this project to **FlowState Engineering (FSE)** — a constraint-based AI development methodology. You will run three phases, in order, and stop between each for my approval.

### Phase 1 — Discovery (report only, no file changes)

Do not create, modify, or delete any file in this phase. Read only.

1. Inventory the project:
   - Language(s), framework(s), runtime versions
   - Top-level folder structure (one line per folder, one level deep)
   - Build / test / lint / typecheck commands (from `package.json`, `Makefile`, `pyproject.toml`, etc.)
   - Database engine, migration tool, and number of tables (if discoverable)
   - Presence or absence of: `README.md`, `.gitignore`, lockfile, `.env.example`, CI config
2. Run the build and the test suite. Capture the raw result (clean / warnings / errors). Do not try to fix anything.
3. Produce a **Discovery Report** with these sections:
   - Solution Overview
   - Build State at Discovery
   - Infrastructure Checklist (every item marked checked / unchecked)
   - Database Summary
   - Gaps to Fill (every unchecked item, plus anything else structurally missing)

Output the report in the chat. Do not write any file. Then stop and wait for approval to proceed to Phase 2.

### Phase 2 — Create Foundation Files

Only after I approve the Discovery Report:

1. Create `FSE.md` at the project root, using the FSE core template. Fill in the project-specific sections (Project Identity, Tech Stack, Solution Structure, Database, Project-Specific Standing Orders, Warning Baseline) using what you learned in Phase 1. Leave the FSE START / FSE END block untouched.
2. Create `FSE_STATE.md` at the project root, using the FSE core template. Fill in Identity, Build State (from Phase 1), Current Blockers (from gaps), Next Session Priorities (top three gaps, ordered by impact), and Warning Baseline. Leave Lessons Learned and Known Technical Debt empty with their instructional headers. Add one Session History entry for this onboarding session.
3. Create `FSE_DISCOVERY.md` at the project root, using the FSE core template, populated directly from the Discovery Report.
4. If the project uses Claude Code, create `.claude/instructions.md` containing:
   ```
   Read FSE.md, FSE_STATE.md, and FSE_DISCOVERY.md at the start of every session.
   Follow the FSE Session Protocol: VERIFY → PLAN → EXECUTE → VALIDATE.
   ```
   If the project uses Cursor, append the same two lines to `.cursorrules` (create it if missing).

Output the full contents of every file you create. Do not modify any existing source file. Then stop and wait for approval to proceed to Phase 3.

### Phase 3 — Verify and Commit

Only after I approve the foundation files:

1. Run the build again. Confirm it matches the state recorded in `FSE_STATE.md`. If it differs, stop and report.
2. Run `git status`. Confirm that the only changes are the new FSE files (and `.claude/instructions.md` or `.cursorrules` if created).
3. Stage and commit:
   ```
   git add FSE.md FSE_STATE.md FSE_DISCOVERY.md
   # plus .claude/instructions.md or .cursorrules if created
   git commit -m "Adopt FlowState Engineering — foundation files and onboarding"
   ```
4. Do **not** push. Report the commit hash and wait for me to push.

### Rules that apply across all three phases

- No stubs, TODOs, or placeholders in any file you write.
- Output complete file contents — never snippets or diffs.
- Never modify code outside the FSE files during onboarding.
- Never output, log, or commit credentials.
- If anything is ambiguous, stop and ask before writing.

Begin Phase 1 now.
