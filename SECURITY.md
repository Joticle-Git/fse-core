# Security Policy

## Reporting a Vulnerability

FlowState Engineering is a methodology repository — it contains documentation, templates, and prompts, not executable code. The security surface here is small, but it is not zero. If you find something that concerns you, please report it.

Send reports to **security@joticle.com**.

Include as much of the following as you can:

- A description of the issue
- The file or template involved
- Why you believe it represents a security risk
- Steps to reproduce, if applicable
- Any suggested remediation

## What Counts as a Security Issue Here

Because this repo holds methodology rather than runtime code, security issues tend to look different than they do in a typical software project. Examples of things we'd want to know about:

- A template that, if followed literally, would lead a developer to commit secrets or expose credentials
- A prompt or onboarding instruction that could trick an AI assistant into producing insecure patterns
- Documentation that recommends a known-vulnerable library, version, or pattern
- A link in any document that points to a compromised or malicious resource
- Anything in the templates that would cause a downstream project to violate basic security hygiene (hardcoded secrets, missing tenant scoping, unsafe SQL patterns, etc.)

## What Does Not Belong Here

Bugs in your own implementation of FSE are not security issues with this repo. If you adopted FSE in your project and have a vulnerability there, that is yours to triage. We're happy to discuss methodology improvements that would have helped you avoid it — open an issue or discussion for that.

## Response Expectations

This project is maintained by a small team. We will acknowledge security reports within 7 days and aim to address valid issues within 30 days. We will credit reporters in the resolution unless they request otherwise.

## Disclosure

Please do not open public GitHub issues for security concerns. Use the email address above. Once an issue is resolved, we may publish a note in the changelog or release notes describing what was changed and why.

## Scope

This policy covers the contents of the `Joticle/fse-core` repository. The companion repository `Joticle/fse-extensions` has its own SECURITY.md. Production solutions built using FSE are out of scope — those are the responsibility of the teams operating them.
