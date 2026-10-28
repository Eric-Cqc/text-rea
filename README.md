# text-rea · 文字版 REA

把「逆向工程任意软件」那套证据—机制—可迁移判断，迁到**文字**：细读作品、迁移写法、定向改稿、读者审读、原创叙事。

本仓库是可安装的 Codex / Agent Skill，附协议说明、研究底稿与少量试写样例。

## 这是什么

- **Skill**：`skill/` — 直接拷进 `~/.codex/skills/text-rea/`（或你的 Agent skills 目录）即可调用
- **Docs**：协议、写法动作、思维模式、迁移与 runbook
- **Research**：语料画像、harness、迭代记录、证据笔记
- **Pilots**：脱敏后的短试写／对照样例（非正式出版稿）

## 怎么装

```bash
# Codex
mkdir -p ~/.codex/skills
cp -R skill ~/.codex/skills/text-rea
# 重启或重新加载 skills 后，用自然语言触发「文字版 REA / text-rea」
```

其他 Agent：把 `skill/SKILL.md` 与 `skill/references/` 放进该 Agent 的 skills 约定路径即可。

## 怎么用（意图级）

适合：

1. 细读一篇作品，拆可迁移的写法机制（不是赏析感想）
2. 把一种写法迁到新题材／新任务
3. 按读者路径定向改稿
4. 写原创短篇／说明文时，要求证据边界清楚

不适合：代写作业、伪造出处、把私密原稿当公开范本。

## 目录

```
skill/          # 可安装 Skill（SKILL.md + references + agents）
docs/           # 协议与用法说明（从 references 抽出）
research/       # 研究与 harness 底稿
pilots/         # 短样例（已筛，不含密钥与强隐私私稿）
LICENSE         # MIT
```

## 许可

MIT。样例仅供方法演示，版权与文责归原作者／本仓库维护者；引用请注明出处。

## 维护

账号：[@Eric-Cqc](https://github.com/Eric-Cqc)
