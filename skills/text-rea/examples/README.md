# examples — golden index

Public, sanitized samples. **Method demos, not publications.**

Status legend:

- **已验收** — used as a reproducible golden path for install / Quickstart  
- **仅展示** — kept for reading; not required by `verify-install.sh`

Each golden row lists **输入清单** and **期望产物**. Paths are repo-relative under `skills/text-rea/examples/`.

---

## Golden (≥3｜已验收)

### 1. P010 — 唐三彩载乐骆驼俑

| | |
|---|---|
| **文件** | [`P010_唐三彩载乐骆驼俑.md`](P010_唐三彩载乐骆驼俑.md) |
| **状态** | 已验收 |
| **输入清单** | 公开藏品说明／图注链接（文件末「资料」）；任务＝博物馆短说明；读者＝到馆观众 |
| **期望产物** | 短说明文：物件身份 → 驼／底座空间 → 人物乐队层次；事实可回链所给资料；不编造未给出的出土细节 |
| **不要做什么** | 不抄成学术论文；不把参考句当材料事实 |

### 2. P012 — 国家图书馆北区首次办卡指南

| | |
|---|---|
| **文件** | [`P012_国家图书馆北区首次办卡指南.md`](P012_国家图书馆北区首次办卡指南.md) |
| **状态** | 已验收 |
| **输入清单** | 馆方公开须知链接（文内引用）；任务＝首次办卡准备；读者＝持二代证成年公民 |
| **期望产物** | 规程型指南：服务分界 → 携带物与地点 → 时段表 → 外借功能提示；条件／时间保留可核对来源 |
| **不要做什么** | 不发明闭馆例外；不写成旅游软文 |

### 3. P007 — 文字版 REA：从参考到新稿

| | |
|---|---|
| **文件** | [`P007_文字版REA_从参考到新稿.md`](P007_文字版REA_从参考到新稿.md) |
| **状态** | 已验收 |
| **输入清单** | 参考方法线索（文内链到公开 Skill／论文）；任务＝说明「参考→新稿」机制；读者＝要复用该方法的写作者 |
| **期望产物** | 机制说明：拆动作 → 规则／模型路线分工 → 样本控制；标明迁移保留／改变了什么；缺口处标未知而非编造训练结果 |
| **不要做什么** | 不把外部项目写成已完成的本地训练产物 |

---

## 仅展示（不纳入 verify 必查）

| 文件 | 备注 |
|---|---|
| [`P001_两稿匿名再读.md`](P001_两稿匿名再读.md) | 匿名对照阅读条 |
| [`P006_Mac重建规程_英文试写.md`](P006_Mac重建规程_英文试写.md) | 规程英文试写 |
| [`P008_海里的盐从哪里来.md`](P008_海里的盐从哪里来.md) | 科普短文 |
| [`P011_Mac环境重建现场核对卡.md`](P011_Mac环境重建现场核对卡.md) | 现场核对卡 |
| [`P013_文字版REA研究委托说明.md`](P013_文字版REA研究委托说明.md) | 研究委托说明样例 |

---

## Regression note

`scripts/verify-install.sh` asserts the three **已验收** files above exist. Adding a new golden: document 输入清单＋期望产物 here, then add the filename to the script’s `REQUIRED_EXAMPLES` list.
