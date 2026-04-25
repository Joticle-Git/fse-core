# FSE_DISCOVERY.md — Initial Project Audit

A one-time snapshot taken when FSE is first adopted. It captures the project as it exists *before* FSE, so gaps can be named and tracked.

Update this file only when a gap is closed or a new structural fact is discovered. Day-to-day state lives in `FSE_STATE.md`, not here.

## Solution Overview

| Field | Value |
|-------|-------|
| Project name | [Name] |
| Primary purpose | [One-line description] |
| Production status | [Pre-production / Production / Maintenance] |
| Primary users | [Who uses this] |
| Primary stack | [Language / framework / DB, one line] |
| Repository | [URL] |
| Discovery date | [YYYY-MM-DD] |
| Discovered by | [Name / handle] |

## Build State at Discovery

| Check | Command | Result |
|-------|---------|--------|
| Install | [e.g. `npm install`] | [clean / errors] |
| Build | [e.g. `npm run build`] | [clean / N warnings / broken] |
| Tests | [e.g. `npm test`] | [passing / failing / none] |
| Lint | [e.g. `npm run lint`] | [clean / N warnings / broken] |
| Type check | [e.g. `npm run typecheck`] | [clean / N warnings / broken] |

## Infrastructure Checklist

Check every item. Unchecked items become entries in the Gaps table below.

- [ ] Version control in use (Git)
- [ ] `.gitignore` covers secrets, build artifacts, and local environment files
- [ ] `README.md` exists and describes how to run the project
- [ ] Dependency manifest is committed and reproducible (lockfile present)
- [ ] Environment variables are documented (`.env.example` or equivalent)
- [ ] Local dev environment can be stood up from a clean clone
- [ ] Build command is defined and works
- [ ] Test command is defined
- [ ] Lint command is defined
- [ ] Type check (if applicable) is defined
- [ ] CI runs on every push / PR
- [ ] Deployment path is documented
- [ ] Secrets are stored outside the repo (vault / platform secrets)
- [ ] Database migrations are versioned and committed
- [ ] Backups exist for production data
- [ ] Error monitoring is wired up (Sentry / equivalent)
- [ ] Logging destination is known (where do logs go in prod?)
- [ ] Access to production is limited and recorded

## Database Summary

| Field | Value |
|-------|-------|
| Engine | [e.g. PostgreSQL 16] |
| Hosting | [e.g. Supabase / RDS / self-hosted] |
| Migration tool | [e.g. Prisma Migrate] |
| Number of tables | [N] |
| Primary entities | [List the 3-5 most important entities] |
| Backup strategy | [Automated daily / manual / none] |
| Access control | [How credentials are managed] |

## Gaps to Fill

Every unchecked infrastructure item, plus any other structural gap discovered during onboarding.

| Gap | Impact | Priority | Owner |
|-----|--------|----------|-------|
| [e.g. No CI pipeline] | [e.g. Regressions can reach main undetected] | [High / Med / Low] | [Name] |

Close a gap by fixing it and removing the row. Large gaps graduate to `FSE_STATE.md` as priorities or to `Known Technical Debt`.

## FSE Compliance at Discovery

- [ ] `FSE.md` present at project root
- [ ] `FSE_STATE.md` present at project root
- [ ] `FSE_DISCOVERY.md` present at project root (this file)
- [ ] AI tool configured to read foundation files at session start (e.g. `.claude/instructions.md`, `.cursorrules`)
- [ ] Universal Standing Orders reviewed and acknowledged
- [ ] Project-Specific Standing Orders drafted in `FSE.md`
- [ ] Warning baseline recorded in `FSE.md` and mirrored in `FSE_STATE.md`
- [ ] First session priorities recorded in `FSE_STATE.md`

When every box is checked, FSE onboarding is complete.
