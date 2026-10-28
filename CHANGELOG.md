# Changelog

## 1.3.0 — 2026-10-28

Industrial hardening (engineering hygiene; no new writing algorithm). Tag `v1.3.0`.

- Add `INSTALL.md` with clean-environment steps and self-check instructions
- Add `scripts/verify-install.sh` (frontmatter name/version, `agents/openai.yaml`, golden example paths, examples index; `--dry-run` / `--prefix`; full-clone docs gate)
- Add `docs/PRODUCT_SPEC_1.3.md`, `docs/quickstart-min-input.md`, `docs/QA.md`, `docs/failure-modes.md`, `docs/TROUBLESHOOTING.md`, `docs/first-run-acceptance.md`
- Add `skills/text-rea/examples/README.md` with ≥3 golden rows (输入清单＋期望产物；已验收)
- Document refuse/degrade behavior in `SKILL.md` and README (缺材料／缺参考／闲聊／只要润色／材料不够→澄清或标未知)
- Declare `research-report-critique` companion **not shipped in this repo** (remove broken relative link)
- README: Non-goals + Errors and limits; product five-block install-state front (Install → 30s → What you get); no job-prep main product narrative
- Add GitHub Actions `verify-install` workflow (real gate; no fake badge)

## 1.2.0

- Publish as a standard Agent Skill layout: `skills/text-rea/{SKILL.md,agents,references,examples}`
- Align install path with Codex / Claude Code conventions
