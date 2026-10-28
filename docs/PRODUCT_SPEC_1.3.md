# text-rea Product Spec 1.3（仓内精简版）

**目标版本**：`1.3.0`（tag `v1.3.0`；本周为工程卫生草稿，frontmatter 仍可为 `1.2.0` 直至发布包定稿）  
**一句话产品**：依据材料做结构迁移与定向成稿／改稿的可安装 Agent Skill；非通用聊天、非求职代写。  
**发布仓**：https://github.com/Eric-Cqc/text-rea  
**正式入口**：`skills/text-rea/SKILL.md` + `skills/text-rea/agents/openai.yaml`

---

## 非目标（不算本产品）

- 面试／求职准备主产物、简历润色全站
- 通用 Personal Agent、保证爆款文案
- 以「约熟人试用」替代安装自检与版本一致
- 依赖私有模型 key 才能「装上」；买星／假证言

---

## 工业级门槛（1.3 过线）

| # | 维度 | 必须达到 | Week1 状态 |
|---|---|---|---|
| 1 | 版本 | SemVer → `1.3.0`；frontmatter＝CHANGELOG＝git tag 一致 | CHANGELOG 起草；tag／metadata 定稿 → Week2 |
| 2 | 可复现安装 | 干净环境 ≤10 min；`INSTALL.md` + `scripts/verify-install.sh` exit 0 | **本周必须** |
| 3 | 稳定入口 | 单一入口；触发句写死；仓外链声明边界 | **本周必须** |
| 4 | 文档按产品 | 问题／非目标／Install／Quickstart／示例／错误与限制 | Install／Quickstart／错误章本周；README 首屏重写 → Week2 |
| 5 | 示例 | ≥3 golden：输入清单＋期望产物；标已验收／仅展示 | **本周必须** |
| 6 | 测试／回归 | frontmatter／路径自检；Quickstart 进 `docs/QA.md` | **本周必须** |
| 7 | 错误处理 | 缺材料／缺参考／闲聊／只要润色 → 拒绝或降级 | **本周必须** |
| 8 | 发布形态 | tag + Release；LICENSE 在根 | LICENSE 已有；tag → Week2 |
| 9 | 许可与边界 | 非目标写进 README；无求职主叙事 | 本周补非目标／错误；全文扫 → Week2 |

---

## 缺口表（相对 1.2.0 基线）

| 缺口 | 优先级 | 处置 |
|---|---|---|
| 无独立 `INSTALL.md`／无 `verify-install.sh` | **必须** | 本周新增 |
| 无第二环境自检记录 | **必须** | 写入 `docs/QA.md` |
| 无 Quickstart 最小输入包 | **必须** | `docs/quickstart-min-input.md` |
| examples 无「输入＋期望」索引 | **必须** | `skills/text-rea/examples/README.md` |
| SKILL 相对链到仓外 `research-report-critique` | **必须** | 改为仓内边界声明（见 SKILL） |
| 错误处理未系统写入 SKILL／README | **必须** | 本周补段落 |
| CHANGELOG 无 1.3.0 | **必须（草稿）** | Unreleased／draft 节 |
| frontmatter 仍 `1.2.0`；无 git tag | 可延后到发布包 | Push #4 |
| README 首屏未完全按产品五段锁死 | 可延后 | Week2 D9–D10 |
| 无 LLM 评测农场／假 CI badge | **不做** | — |

---

## Week1 内建门槛

安装可复现＋自检脚本绿＋Quickstart 盲跑记录进 QA＋非目标写清。未过则 Week2 禁止扩 `references/` 功能面。

## 后置（不加开工门闩）

外部真人试用／adoption log：工业级过线之后的加分项。
