# text-rea · 文字版 REA

把「逆向工程任意软件」（REA）那套 **证据 → 机制 → 可迁移判断**，迁到**文字写作**：细读作品、迁移写法、定向改稿、读者审读、原创叙事／说明文。

本仓库是可安装的 Codex / Agent Skill（**version 1.2.0**），附用法说明、研究摘要与少量公开安全样例。

维护账号：[@Eric-Cqc](https://github.com/Eric-Cqc)

## 这是什么

- 参考文章提供**写法**（问题、组织、表达动作），本次材料支持**事实**；两者分开处理。
- 需要新稿时交付读者能直接使用的完整正文；需要拆解时给出有位置的动作与适用条件。
- 日常闲聊和纯格式转换不启动完整流程。

更短的入口：[docs/00_从这里开始.md](docs/00_从这里开始.md)

## 怎么装

```bash
mkdir -p ~/.codex/skills
cp -R skill ~/.codex/skills/text-rea
```

重启或重新加载 skills 后，用自然语言触发：**「用文字版 REA / text-rea」**，附上参考、素材或现稿即可。

其他 Agent：把 `skill/SKILL.md` 与 `skill/references/` 放进该 Agent 的 skills 约定路径。

## 怎么用（意图级）

适合：

1. 细读一篇作品，拆可迁移的写法机制（不是赏析感想）
2. 把一种写法迁到新题材／新任务
3. 按读者路径定向改稿
4. 写说明文／规程／短叙事时，要求证据边界清楚

详细分类与阅读路线：[docs/简明用法.md](docs/简明用法.md)

## 目录

```
skill/       # 可安装 Skill（SKILL.md + agents + references）← 权威执行入口
docs/        # 给人读的入口与用法
research/    # 研究摘要、历轮索引、缺口与案例总账
pilots/      # 公开安全短样例 + 使用记录
LICENSE      # MIT
CHANGELOG.md
```

结构说明：[docs/结构说明.md](docs/结构说明.md)

## 边界

- **不**代写作业、**不**伪造出处
- 样例仅供方法演示，非正式出版稿
- 真实私稿诊断、私人口述任务包、密钥与本机绝对路径**未入库**
- 配套 skill（若已安装）：`writing-craft`、`personal-memory-album`；本仓不捆绑其正文

## 许可

MIT © 2026 Eric-Cqc。样例版权与文责归原作者／本仓库维护者；引用请注明出处。
