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
| Date (Asia/Shanghai) | 2026-10-28 |
| Environment (OS / Agent) | Linux box · Grok Bot + `text-rea` skill |
| Install path used | clone `Eric-Cqc/text-rea` @ `479a187`；skill via Skill loader |
| `verify-install.sh` exit | 0 / PASS（dry-run + clean-prefix） |
| Min-input pack used? | Yes — [`docs/quickstart-min-input.md`](quickstart-min-input.md) + P010 demo |
| Trigger phrase | `用 text-rea` + 四字段 |
| Result (moves / draft / fail) | **draft PASS** — 博物馆短说明；见 [`qa-runs/20261028_live-agent_P010.md`](qa-runs/20261028_live-agent_P010.md) |
| Friction / fix | 全局 skill 路径 ≠ 仓内路径；INSTALL 已写清拷贝＋reload |

### Second environment (structural)

| Field | Fill |
|---|---|
| Date (Asia/Shanghai) | 2026-10-28 |
| Environment | macOS · clone + `verify-install.sh`（见下表推送后回填 exit） |
| Result | `verify-install.sh` PASS（dry-run + clean-prefix）on macOS worktree；活 LLM 盲跑以 Linux Agent 行为主记录 |

### Note

Live Agent Quickstart is **recorded** above (no longer blank). Structural install + verify remains the CI hard gate; live draft is the human/Agent acceptance row.

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

## Known open

- ~~Frontmatter 1.2.0~~ → **1.3.0** tagged
- ~~Live Agent Quickstart blank~~ → filled 2026-10-28（P010）
- 第二 Agent（另一产品 UI）完整盲跑可再追加；不以假 badge 代替
- 写稿算法未在 1.3.x 变更

---

## D6–D10 friction log (Push #2｜Asia/Shanghai)

Baseline after Adrian Week1b: `origin/main` = `61793db` (on top of Push #1 `d7188af`).

| # | Evidence | Fix |
|---|---|---|
| F1 | `INSTALL.md` still documented `TEXT_REA_SKILL_DIR=… bash verify-install.sh` and implied bare skill-path use; Week1b script is **clone-rooted** and only accepts `--dry-run` / `--prefix` | Rewrote INSTALL self-check to match real CLI; dropped false env/positional docs |
| F2 | Full-clone verify did not assert product docs exist | Docs gate: QA / quickstart / failure-modes / PRODUCT_SPEC / first-run-acceptance / TROUBLESHOOTING |
| F3 | `docs/failure-modes.md` had 4 classes; Clara industrial bar asked TROUBLESHOOTING≥5 | Expanded failure-modes to 7; added `docs/TROUBLESHOOTING.md` as alias index |
| F4 | No standalone 「Acceptance of a first run」 page (Vivian draft pointed at wrong place) | Added `docs/first-run-acceptance.md`; linked from quickstart / INSTALL / README |
| F5 | README still What-you-get-before-Install (not Vivian five-block) | Push #3 README rewrite (separate list) |

### Run D — after Push #2 local edits

- **When**: 2026-10-28 ~14:30 CST
- **Commands**: `bash scripts/verify-install.sh --dry-run` ; `bash scripts/verify-install.sh`
- **Exit**: 0 / 0 (expect `repo docs OK` line + `PASS`)
- **Notes**: no push; no tag

