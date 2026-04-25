# Contributing to FlowState Engineering

Thanks for considering a contribution to FSE. This methodology grew out of real production pain — every rule, every protocol, every standing order earned its place. Contributions that share the same standard are welcome.

---

## Ways to Contribute

There are four distinct ways to contribute. Each has a different process.

### 1. Methodology Improvements

You found a gap, an edge case, or a better way to do something in the FSE protocol itself.

**Process:**
- Open an issue using the **Methodology Question** template before opening a PR
- Describe the problem with a real example (not theoretical)
- Wait for discussion before writing the change
- PRs that change methodology without prior discussion will be closed

The methodology evolves slowly and deliberately. Production-tested wins over clever.

### 2. Bug Reports

Something in the templates, prompts, or documentation is wrong, broken, or misleading.

**Process:**
- Use the **Bug Report** issue template
- Include the file, the exact line or section, and what happened
- If you have a fix, open a PR linked to the issue

### 3. Real-World Reports

You used FSE on a project. Share what worked, what didn't, and what you learned. These reports shape future versions of the methodology.

**Process:**
- Open a Discussion (not an issue) under the **Show and Tell** category
- Describe the project type, stack, team size, duration
- Share which Tier 2 files you ended up creating and why
- Share lessons learned that might benefit others

These reports are the most valuable contribution. They are how the methodology stays grounded.

### 4. Stack Extensions

You want to contribute language-specific or framework-specific rules.

**Stack extensions live in a separate repo:** [fse-extensions](https://github.com/Joticle/fse-extensions). Do not add stack-specific content to fse-core. See the extensions repo for its contribution guide.

---

## What This Repo Contains

```
fse-core/
  README.md              ← methodology overview
  LICENSE                ← Apache 2.0
  CONTRIBUTING.md        ← this file
  CODE_OF_CONDUCT.md     ← community standards
  SECURITY.md            ← security disclosure policy
  templates/             ← FSE.md, FSE_STATE.md, FSE_DISCOVERY.md templates
  prompts/               ← canonical AI session prompts
  .github/               ← issue templates, PR template
```

**fse-core is methodology and templates only.** No code. No language-specific rules. No tooling.

---

## Pull Request Standards

### Before opening a PR

- [ ] An issue exists describing the problem you're solving (except for typo fixes)
- [ ] Discussion happened on the issue before code was written (for non-trivial changes)
- [ ] You have read the README to understand FSE's scope and philosophy
- [ ] You have read this CONTRIBUTING guide

### PR description must include

- **What** — the change being made
- **Why** — the problem being solved (with a real-world example)
- **Impact** — what existing FSE projects need to know if this lands
- **Backward compatibility** — does this break existing FSE.md files? If yes, justify

### What gets accepted

- Changes that solve real problems verified in production
- Changes that strengthen the methodology without complicating adoption
- Changes that maintain the tool-agnostic and stack-agnostic principles
- Documentation improvements that make the methodology clearer

### What gets rejected

- Theoretical improvements without production evidence
- Changes that add tooling, dependencies, or runtime requirements
- Stack-specific or tool-specific rules (those go in extensions)
- Changes that complicate first-time adoption
- Vibes-driven refactors with no problem statement

---

## The FSE Standard for Contributions

This is a methodology repo, but contributions still follow FSE's own standards:

- **Complete files only.** No partial PRs. No "I'll fix the rest later."
- **No stubs or TODOs.** If a section can't be finished, leave it for a future PR.
- **No assumptions about other files.** If your change touches the README, the templates, and a prompt, all three must be coherent in one PR.
- **One concern per PR.** Mixing methodology changes with typo fixes is a fast rejection.

---

## What Doesn't Belong Here

This repo is the constitution of FSE. It does not contain:

- Tool integrations (Claude Code, Cursor, etc. — those are external bridges, not FSE)
- Language-specific rules (those live in fse-extensions)
- Build scripts, CLIs, or runtime tooling (FSE has no runtime)
- Examples of completed FSE.md files from real projects (those will eventually live in a separate examples repo)

If your contribution doesn't fit here, it probably belongs in fse-extensions or in a future examples repo.

---

## Communication

- **Issues** — bugs, methodology questions, feature proposals
- **Discussions** — real-world reports, broader methodology conversations
- **Pull Requests** — actual changes (after issue/discussion)

There is no Discord, Slack, or Twitter community yet. Communication happens on GitHub.

---

## Code of Conduct

This project follows the [Contributor Covenant 2.1](CODE_OF_CONDUCT.md). Be respectful, be specific, be kind. Disagreement is welcome; disrespect is not.

---

## Recognition

Contributors who make substantive methodology improvements will be credited in:

- The README changelog (when one is added)
- A future CONTRIBUTORS.md
- The release notes when methodology versions are tagged

Stack extension contributors are credited in the fse-extensions repo.

---

## License

By contributing to FSE, you agree that your contributions will be licensed under the Apache 2.0 license, the same license that covers the rest of the repository.

---

*FlowState Engineering — Created by Scott Michael Wilson, Joticle Inc.*
*Maintained by the community.*
