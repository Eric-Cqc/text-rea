# text-rea

**好文章不是写得像，是拆得懂、迁得走。**

**一句话：** 可安装的 Agent Skill——给你**参考文**（学写法）＋**你自己的材料**（管事实），按**指定读者**写成新稿或改稿；拆结构、不抄句子、不编事实。

**不是：** 通用聊天机器人、求职／面试代写、保证爆款文案。

English: *Steal structure, not sentences.* Evidence → mechanism → transferable judgment. Compatible with any [`SKILL.md`](https://agentskills.io)-style agent (Codex · Claude Code · Cursor · others).

## Install

Full guide + self-check: [`INSTALL.md`](INSTALL.md). Short path (Codex):

```bash
git clone https://github.com/Eric-Cqc/text-rea.git
mkdir -p ~/.codex/skills
# run from the parent directory of the clone (not inside text-rea/)
cp -R text-rea/skills/text-rea ~/.codex/skills/text-rea
cd text-rea && bash scripts/verify-install.sh
```

Exit **0** + `PASS` = structural OK (`--dry-run` skips the clean-prefix copy). Reload skills. Trigger: `用文字版 REA` / `text-rea` / `$text-rea`.

Other agents: copy `skills/text-rea/` into that agent’s skills directory; keep the folder name `text-rea`.

## 30-second first run

1. Install and reload (above).  
2. Open your agent; say **text-rea** and paste the four fields in [`docs/quickstart-min-input.md`](docs/quickstart-min-input.md) — or attach **one short reference** + **your own materials** (golden samples under [`skills/text-rea/examples/`](skills/text-rea/examples/)).  
3. Success looks like: reusable writing moves with locations, **or** a draft where reference owns method and your materials own facts, **or** clarifying questions / unknowns with **no invented facts** — see [`docs/first-run-acceptance.md`](docs/first-run-acceptance.md).

## What you get｜你得到什么

| | |
|---|---|
| **细读** | 可定位的写作动作（不是空泛夸好） |
| **迁移** | 参考管方法；本次材料管事实 |
| **成稿／改稿** | 按点名读者路径写出可用正文 |

## Non-goals

- Not a general chatbot; everyday chit-chat / pure formatting does not start the full pipeline.
- Not a job-prep / interview / resume service as the **main** product surface.
- Does not invent unsourced facts, require stars/pins/private keys merely to **install**, or guarantee viral copy.
- Does not ship a separate `research-report-critique` tree in this repo.

## Errors and limits

Full playbook (≥5 cases): [`docs/failure-modes.md`](docs/failure-modes.md) · alias [`docs/TROUBLESHOOTING.md`](docs/TROUBLESHOOTING.md).

| Failure | Product response |
|---|---|
| Installed but never triggers | Confirm folder name is `text-rea` under the agent skills root; reload; run `bash scripts/verify-install.sh` from a clone |
| Idle chat pulled into full pipeline | Full pipeline stays off for casual chat / pure format conversion; ask explicitly for text-rea + materials or reference |
| Materials insufficient | Ask up to three concrete gaps; mark unknowns; **do not** invent facts |
| “Just make it sound like X” with no material boundary | Steal structure, not sentences; offer a contrast table or scoped edits; refuse unsourced full imitation |

Also: [`INSTALL.md`](INSTALL.md) · [`docs/QA.md`](docs/QA.md).

## Examples

Index (input checklist + expected output): [`skills/text-rea/examples/README.md`](skills/text-rea/examples/README.md).

- [`P010_唐三彩载乐骆驼俑.md`](skills/text-rea/examples/P010_唐三彩载乐骆驼俑.md) — museum label  
- [`P012_国家图书馆北区首次办卡指南.md`](skills/text-rea/examples/P012_国家图书馆北区首次办卡指南.md) — procedural how-to  
- [`P007_文字版REA_从参考到新稿.md`](skills/text-rea/examples/P007_文字版REA_从参考到新稿.md) — reference → new draft  

Samples are method demos, not publications.

## Skill layout

```text
skills/text-rea/
├── SKILL.md           # name: text-rea · version in frontmatter
├── agents/
│   └── openai.yaml    # Codex UI metadata
├── references/        # loaded on demand — not dumped into this README
└── examples/          # short worked samples (public, sanitized)
```

## Version

See [`CHANGELOG.md`](CHANGELOG.md). Skill metadata version: **1.3.1** (in `SKILL.md`). Tagged **`v1.3.1`**（含 1.3.0 工业门闩＋本补丁）. Product spec: [`docs/PRODUCT_SPEC_1.3.md`](docs/PRODUCT_SPEC_1.3.md).

## License

MIT © 2026 [Eric-Cqc](https://github.com/Eric-Cqc)
