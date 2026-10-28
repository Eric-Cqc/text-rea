# Changelog

## 1.3.0 — Unreleased (draft)

Industrial hardening toward tag `v1.3.0` (engineering hygiene; no new writing algorithm).

- Add `INSTALL.md` with clean-environment steps and self-check instructions
- Add `scripts/verify-install.sh` (frontmatter name/version, `agents/openai.yaml`, golden example paths, examples index)
- Add `docs/PRODUCT_SPEC_1.3.md`, `docs/quickstart-min-input.md`, `docs/QA.md`
- Add `skills/text-rea/examples/README.md` with ≥3 golden rows (输入清单＋期望产物；已验收)
- Document refuse/degrade behavior in `SKILL.md` and README (缺材料／缺参考／闲聊／只要润色)
- Declare `research-report-critique` companion **not shipped in this repo** (remove broken relative link)
- README: Non-goals + Errors and limits (no job-prep main product narrative)
- Add `docs/failure-modes.md` playbook + stronger `verify-install.sh` (`--dry-run` / `--prefix`) [Week1b]
- Fix INSTALL↔script mismatch (remove undocumented `TEXT_REA_SKILL_DIR`); document `--dry-run` / `--prefix`
- Expand failure-modes to ≥5; add `docs/TROUBLESHOOTING.md` alias + `docs/first-run-acceptance.md`
- `verify-install.sh` full-clone docs gate (QA / quickstart / failure-modes / PRODUCT_SPEC / first-run-acceptance / TROUBLESHOOTING)
- README: product five-block install-state front (Install → 30s → What you get)

*Metadata `version` and git tag remain at 1.2.0 until the release package (Week2) freezes 1.3.0.*

## 1.2.0

- Publish as a standard Agent Skill layout: `skills/text-rea/{SKILL.md,agents,references,examples}`
- Align install path with Codex / Claude Code conventions
