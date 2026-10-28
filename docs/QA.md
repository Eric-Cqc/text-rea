# QA — install / Quickstart records

Asia/Shanghai times. No fabricated users or stars.

## Structural self-check (`verify-install.sh`)

### Run A — repository root (work tree)

- **When**: 2026-10-28 14:15 CST
- **Environment**: Linux box; cwd = clone root `text-rea-industrial-v130/text-rea`
- **Command**:

```bash
bash scripts/verify-install.sh
```

- **Exit code**: 0
- **Output summary**:
```
verify-install: ok: SKILL_DIR=/workspace/company/vc-discuss/text-rea-industrial-v130/text-rea/skills/text-rea
verify-install: ok: SKILL.md present
verify-install: ok: frontmatter name=text-rea
verify-install: ok: frontmatter version present (  version: "1.2.0")
verify-install: ok: agents/openai.yaml present
verify-install: ok: golden example paths present (3 files)
verify-install: ok: examples/README.md present
verify-install: ok: repo INSTALL.md present
verify-install: ok: all checks passed
```

### Run B — clean temporary directory (install simulation)

- **When**: 2026-10-28 14:15 CST
- **Environment**: `mktemp -d`; copied only `skills/text-rea` + `scripts/verify-install.sh`
- **Command**:

```bash
TMP=$(mktemp -d)
mkdir -p "$TMP/skills" "$TMP/scripts"
cp -R skills/text-rea "$TMP/skills/text-rea"
cp scripts/verify-install.sh "$TMP/scripts/"
TEXT_REA_SKILL_DIR="$TMP/skills/text-rea" bash "$TMP/scripts/verify-install.sh"
```

- **Exit code**: 0
- **Output summary**:
```
verify-install: ok: SKILL_DIR=/tmp/text-rea-verify-8bshxl/skills/text-rea
verify-install: ok: SKILL.md present
verify-install: ok: frontmatter name=text-rea
verify-install: ok: frontmatter version present (  version: "1.2.0")
verify-install: ok: agents/openai.yaml present
verify-install: ok: golden example paths present (3 files)
verify-install: ok: examples/README.md present
verify-install: ok: all checks passed
```

### Run C — Codex-like skills path simulation

- **When**: 2026-10-28 14:15 CST
- **Command**: `TEXT_REA_SKILL_DIR=<tmp>/.codex/skills/text-rea bash scripts/verify-install.sh`
- **Exit code**: 0
- **Output summary**:
```
verify-install: ok: SKILL_DIR=/tmp/text-rea-codexsim-RG264H/.codex/skills/text-rea
verify-install: ok: SKILL.md present
verify-install: ok: frontmatter name=text-rea
verify-install: ok: frontmatter version present (  version: "1.2.0")
verify-install: ok: agents/openai.yaml present
verify-install: ok: golden example paths present (3 files)
verify-install: ok: examples/README.md present
verify-install: ok: all checks passed
```

---

## Quickstart blind-run template

| Field | Fill |
|---|---|
| Date (Asia/Shanghai) | |
| Environment (OS / Agent) | |
| Install path used | |
| `verify-install.sh` exit | |
| Min-input pack used? (link `docs/quickstart-min-input.md`) | |
| Trigger phrase | |
| Result (moves / draft / fail) | |
| Friction / fix | |

### Week1 note

Full Agent blind-run of a draft (LLM path) is **optional** for structural Week1 gate. Structural install + verify exit 0 is the hard gate recorded above. A human/Agent Quickstart line can be appended here in Week1 owner time (~45–90 min per Marcus calendar).

---

## Bad-input expectation (manual / fixture notes)

| Case | Expected skill behavior | Record |
|---|---|---|
| 缺材料 | Ask ≤3 gaps; mark unknowns; no invented facts | Documented in `SKILL.md` §拒绝或降级 + README Errors |
| 缺参考却要求迁移 | Degrade to materials-only draft or request a reference | Same |
| 纯闲聊 | Do **not** start full pipeline | Same |
| 只要润色／无来源仿写 | Refuse unsourced full imitation; structure-not-sentences | Same |

No automated LLM fixture in Week1 (Julian: no fake CI matrix). Static path/frontmatter checks covered by `verify-install.sh`.

---

## Known open (not blocking Week1 structural gate)

- Frontmatter still `1.2.0` until release package bumps to `1.3.0` + tag
- README first-screen five-block lock (Vivian D9–D10) not fully rewritten
- Live Agent Quickstart row above still blank until owner blind-run
