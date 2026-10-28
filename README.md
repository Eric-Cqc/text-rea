# text-rea

Agent Skill：把「证据 → 机制 → 可迁移判断」用到文字写作——细读与迁移参考写法、按材料成稿、按反馈定向改稿。

Compatible with any [`SKILL.md`](https://agentskills.io)-style agent（Codex · Claude Code · Cursor 等）。

## Install

```bash
# Codex
mkdir -p ~/.codex/skills
cp -R skills/text-rea ~/.codex/skills/text-rea
```

或：

```bash
git clone https://github.com/Eric-Cqc/text-rea.git
cp -R text-rea/skills/text-rea ~/.codex/skills/text-rea
```

重启／重载 skills 后，用自然语言触发，或显式 `$text-rea`。

Claude Code / 其他 Agent：把 `skills/text-rea/` 拷进该 Agent 的 skills 目录即可。

## What's in the skill

```text
skills/text-rea/
├── SKILL.md              # required — frontmatter + instructions
├── agents/
│   └── openai.yaml       # Codex UI metadata + default prompt
├── references/           # loaded on demand
│   ├── writing.md
│   ├── writing-actions.md
│   ├── transfer.md
│   ├── thinking-patterns.md
│   ├── protocol.md
│   ├── style-retrieval.md
│   ├── corpus-profile.md
│   ├── relation-checks.md
│   ├── research.md
│   ├── runbooks.md
│   ├── harness.md
│   ├── iteration.md
│   └── evidence-notes.md
└── examples/             # short worked samples
```

`name` in frontmatter is `text-rea`（与目录名一致）。`description` 决定何时被选中。

## How it works

成稿主线（见 `SKILL.md`）：

**读者要理解什么 → 本次材料支撑什么 → 参考里可迁移的写法动作 → 写成正文 → 脱离材料重读并修。**

参考管写法；材料管事实。需要拆解时交付有位置的动作；需要新稿时交付完整正文。

## Examples

`skills/text-rea/examples/` 里有脱敏短样例（藏品说明、办卡规程、多来源说明等）。

## License

MIT © 2026 Eric-Cqc
