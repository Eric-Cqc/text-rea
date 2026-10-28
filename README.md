# text-rea

**Steal structure, not sentences.**

An Agent Skill that runs writing through **evidence → mechanism → transferable judgment**: close-read a reference for *how* it works, draft from *your* materials, revise along a reader path.

Compatible with any [`SKILL.md`](https://agentskills.io)-style agent — Codex · Claude Code · Cursor · others.

## What you get

| | |
|---|---|
| **Close-read** | Pull reusable writing moves with locations — not vibes, not book-report praise |
| **Transfer** | Reference owns method; this run’s materials own facts; they don’t smear into each other |
| **Revise** | Edit for a named reader path; ship full prose when the ask is a draft |

## Install

Full guide + self-check: [`INSTALL.md`](INSTALL.md). After copy, run `bash scripts/verify-install.sh` from the repo root (exit 0 = structural OK).

### Codex

```bash
git clone https://github.com/Eric-Cqc/text-rea.git
mkdir -p ~/.codex/skills
# run from the parent directory of the clone (not inside text-rea/)
cp -R text-rea/skills/text-rea ~/.codex/skills/text-rea
```

Reload skills, then trigger in natural language (`用文字版 REA` / `text-rea`) or `$text-rea`.

### Claude Code / Cursor / other agents

Copy `skills/text-rea/` into that agent’s skills directory (same folder layout the agent already uses for `SKILL.md` skills). Restart or reload skills.

> One folder. No marketplace step. If your agent documents a different skills path, use that path — keep the directory name `text-rea`.

## Skill layout

```text
skills/text-rea/
├── SKILL.md           # name: text-rea · version in frontmatter
├── agents/
│   └── openai.yaml    # Codex UI metadata
├── references/        # loaded on demand — not dumped into this README
└── examples/          # short worked samples (public, sanitized)
```

Frontmatter `name` matches the folder. `description` is what makes the skill selectable.

## How it works

One line of work:

**What must the reader understand → what do *these* materials support → which writing moves transfer from the reference → write the piece → re-read without the source open and fix.**

References teach *moves*. Materials carry *facts*. When you need a teardown, you get located actions; when you need a draft, you get full prose.

## Examples

Index (input checklist + expected output): [`skills/text-rea/examples/README.md`](skills/text-rea/examples/README.md).

Open anything under [`skills/text-rea/examples/`](skills/text-rea/examples/):

- [`P010_唐三彩载乐骆驼俑.md`](skills/text-rea/examples/P010_唐三彩载乐骆驼俑.md) — museum label from multiple references  
- [`P012_国家图书馆北区首次办卡指南.md`](skills/text-rea/examples/P012_国家图书馆北区首次办卡指南.md) — procedural how-to  
- [`P007_文字版REA_从参考到新稿.md`](skills/text-rea/examples/P007_文字版REA_从参考到新稿.md) — reference → new draft walkthrough  

Samples are method demos, not publications.

## Non-goals

- Job-seeking / interview-prep as the **main** product surface
- Resume ghostwriting or “guarantee viral copy”
- Requiring stars, pins, private keys, or a private model key merely to **install**
- Shipping a separate `research-report-critique` tree inside this repo (not published here)

## Errors and limits

| Failure | Product response |
|---|---|
| Installed but never triggers | Confirm folder name is `text-rea` under the agent skills root; reload; `SKILL.md` must exist at that path; run `bash scripts/verify-install.sh` |
| Idle chat pulled into full pipeline | Full pipeline stays off for casual chat / pure format conversion; ask explicitly for text-rea + materials or reference |
| Materials insufficient | Ask up to three concrete gaps; mark unknowns; **do not** invent facts |
| “Just make it sound like X” with no material boundary | Steal structure, not sentences; offer a contrast table or scoped edits; refuse unsourced full imitation |

More: [`INSTALL.md`](INSTALL.md) · [`docs/quickstart-min-input.md`](docs/quickstart-min-input.md) · [`docs/QA.md`](docs/QA.md)

## Version

See [`CHANGELOG.md`](CHANGELOG.md). Skill metadata version: **1.2.0** (in `SKILL.md`). Industrial release **1.3.0** is drafting (Unreleased) — see changelog.

## License

MIT © 2026 [Eric-Cqc](https://github.com/Eric-Cqc)
