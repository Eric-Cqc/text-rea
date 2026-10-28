# Troubleshooting · text-rea

Canonical product failure playbook: **[`failure-modes.md`](failure-modes.md)** (≥5 classes: trigger / idle-chat / thin materials / polish-only / companion / copy trap / verify fail).

Structural self-check:

```bash
# from repository root (full clone)
bash scripts/verify-install.sh           # in-tree + clean-prefix simulation
bash scripts/verify-install.sh --dry-run # in-tree only
```

Install steps: [`../INSTALL.md`](../INSTALL.md). First-run pass/fail: [`first-run-acceptance.md`](first-run-acceptance.md). QA log: [`QA.md`](QA.md).
