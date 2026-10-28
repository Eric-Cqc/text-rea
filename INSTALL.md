# Install text-rea

Clean-environment install for Agent Skills that read a `SKILL.md` folder (Codex · Claude Code · Cursor · compatible agents).

**Time budget**: ≤10 minutes. No marketplace step. No API key required to *install*.

## Prerequisites

- `git` and a POSIX shell (`bash`)
- An Agent that loads skills from a local skills directory
- Write access to that skills directory

## One-shot (Codex)

```bash
git clone https://github.com/Eric-Cqc/text-rea.git
mkdir -p ~/.codex/skills
# run from the *parent* of the clone — not inside text-rea/
cp -R text-rea/skills/text-rea ~/.codex/skills/text-rea
```

Reload / restart skills in the Agent. Trigger with natural language (`用文字版 REA` / `text-rea`) or `$text-rea`.

## Claude Code / Cursor / other agents

Copy `skills/text-rea/` into that agent’s skills root. Keep the directory name **`text-rea`**. Restart or reload skills.

> If your agent documents a different skills path, use that path — directory name must remain `text-rea`.

## Install self-check

From the **repository root** (the clone):

```bash
bash scripts/verify-install.sh           # in-tree checks + clean-prefix copy simulation
bash scripts/verify-install.sh --dry-run # in-tree only (faster)
bash scripts/verify-install.sh --prefix /tmp/my-prefix  # simulate install into /tmp/my-prefix/text-rea
```

- Exit **0** + `PASS` → frontmatter `name`/`version`, `agents/openai.yaml`, references, golden examples, examples index, and (full clone) product docs are present; clean-prefix copy also validates unless `--dry-run`.
- Non-zero → stderr names the missing or invalid item; fix before claiming install success.

> The checker is **clone-rooted** (`scripts/` → repo root → `skills/text-rea`). It does **not** take `TEXT_REA_SKILL_DIR` or a bare skill-path argument. After you `cp` into `~/.codex/skills/text-rea`, keep a clone handy and re-run from that clone, or use `--prefix` to simulate the install layout.

## After install: 30-second run

1. Open [`docs/quickstart-min-input.md`](docs/quickstart-min-input.md).
2. In the Agent, say you want **text-rea** and paste the four fields (材料／参考／读者／成功标准).
3. Success looks like: located writing moves and/or a short draft that keeps **reference = method**, **materials = facts**. See [`docs/first-run-acceptance.md`](docs/first-run-acceptance.md) and [`docs/QA.md`](docs/QA.md).

## Troubleshooting

| Symptom | Next step |
|---|---|
| Skill never triggers | Directory name must be `text-rea`; must sit under the agent’s skills root; reload skills; confirm `SKILL.md` exists at that path |
| `verify-install.sh` fails | Read stderr; re-copy the whole `skills/text-rea/` tree (do not flatten files into the skills root) |
| Parent-directory trap | `cp -R text-rea/skills/text-rea …` must be run from the **parent** of the clone |
| Product failure modes (4+) | See [`docs/failure-modes.md`](docs/failure-modes.md) (alias: [`docs/TROUBLESHOOTING.md`](docs/TROUBLESHOOTING.md)) |

## Non-goals of install

Install does **not** require stars, pin changes, private repos, or job-seeking templates.
