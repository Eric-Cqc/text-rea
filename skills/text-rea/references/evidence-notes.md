# 方法证据与案例界限

供需要追查规则缘由时按需阅读。研究项目的长报告和私人原文留在原授权位置；本文件提供可独立使用的简要证据说明与公开来源。外部项目均是方法来源，不是运行依赖。

## P001

一个固定事实包的中文月食解释探索：三稿在同一助手上下文中顺序生成。用户首次盲读选中已有通用流程稿，并不喜欢三稿中几处抽象收束句。此后对两份修订稿匿名再读，用户回答“A 更自然”，A 是第三版候选。没有具体句子理由、首次理解成绩或整稿接受记录；不能归因于 V2 的方法优势。单个读者与单题反馈只形成局部候选规则。

## P002

已授权私稿的回顾性诊断先锁定再查看后版：捕捉到部分跨图顺序和无来源的经历补写，也漏过一些当时动机与感受的推断。后版是编辑证据，不是作者验收或独立真值。因此个人材料须逐句核主观归属；不在可移用包中附上私稿或其定位路径。

## H001

三条 [ParaReval](https://huggingface.co/datasets/taln-ls2n/parareval) 公开人工标注的先判后揭校准，暴露出评审偏好简短稿却无法证明其可接受，以及整体偏好与单项选择不同。它用于评价协议校准，不是 V2 生成效果或对人工标签的总体准确率测量。

## H002

对 [CS2W 固定版本 test 数据](https://github.com/guozishan/CS2W/blob/be6e0519b433cfa9d8388b23308f1380716254fd/data/test.jsonl)均匀抽四条，先锁定本地整理判断再揭示标签。四条均只标重复或重启类型；一条参考删去的重复代词未出现在问题标签中，部分参考还加入职责或加强程度的措辞。后两类改动的语义是否合适仍待判断，不能一概当参考错误。这里只校准问题标签、实际修改和语义判断的分工，不计算准确率或 V2 优势。

[CS2W 论文](https://aclanthology.org/2023.emnlp-main.241.pdf)按类型标片段并直接改写，提供了对齐思路；其完整句、无需上下文的抽样范围和规范书面目标，不能覆盖真实口述的全部问题。对应操作见[语料与画像](corpus-profile.md)。

## 关系与保留

真实材料诊断中出现“事实各自有出处、连接关系却未知”的情况；同时也有口述已支持、应该保留的关系。开发例已参与规则制定，不能当保留测试集。[D-FActScore](https://aclanthology.org/2024.findings-acl.160.pdf)的方法按段落中可辨人物分组后限定实体核验；研究限于传记与 Wikipedia，不能直接当私人材料的准确率。[MontageLie／DoveScore](https://aclanthology.org/2025.emnlp-main.558.pdf)核事实与时间语义，原始提示允许恢复倒叙中的实际先后；其英文模型生成数据不等于人工写作分布。对应操作见[关系核验](relation-checks.md)。

固定提交的 [DoveScore 排序代码](https://github.com/dannalily/DoveScore/blob/9ccdc7510fd1e57e12a88d2cec58fd6f47bbdae2/DoveScore/default_sorter.py)在重试失败后退回输入事件列表；[评分代码](https://github.com/dannalily/DoveScore/blob/9ccdc7510fd1e57e12a88d2cec58fd6f47bbdae2/DoveScore/evaluator_dovescore.py)把两个相同返回列表计为顺序一致。这是静态路径上的失败混淆风险，未测其发生频率。本 Skill 因此单列执行失败、证据不足和反驳，核对实际成功范围，不采用失败后的默认分数。

## 解释

[隐含读者问题](https://aclanthology.org/2023.emnlp-main.336/)与 [ElabEval](https://aclanthology.org/2026.readi-1.15/)帮助区分上下文衔接和信息价值；研究对象不是本用户中文全文。补充解释可回应未解决问题，也可能只重复前文。不能由此建立“禁用一切总结句”的规则。

## 修订

[ARIES v2](https://arxiv.org/html/2306.12587v2)区分反馈与实际编辑的对齐、直接生成编辑；其生成分析不评价事实正确性。固定版[生成配置](https://github.com/allenai/aries/blob/5691bae71a101225ed345d0ffc42e47609f03bbb/data/configs/edit_generation_paper.json)允许用占位符或合理猜测补缺失信息，这部分不用于本地事实写作；只借用反馈与改动的映射，并将答复和正文分开。[IteraTeR](https://aclanthology.org/2022.acl-long.250/)的编辑意图是从前后稿标注的类别，不是原编辑者的心理自述；其分类法不是适合所有文类的强制单标签。

[R3](https://aclanthology.org/2022.in2writing-1.14/)与IteraTeR属于同一研究家族。固定版[界面实现](https://github.com/vipulraheja/iterater/blob/41adc0818356f78b362a9382a3732e0529f3fe35/code/R3_In2Writing2022/main.py)把接受后的正文用于下一轮，并按修改前片段、修改后片段、意图和类型的四元组过滤既往拒绝提案；它不是语义级拒绝记忆，也不能据此声称在线训练。本文借鉴状态衔接，另用任务与拒绝理由判断近似提案。对应操作见[反馈修订步骤](protocol.md#将反馈落实为修改)，尚无新增用户试验或方法比较。

[Self-Refine](https://arxiv.org/html/2303.17651v2)的相关方法与分析支持把具体反馈连到改写，并显示多维质量可能非单调变化。[Spontaneous Reward Hacking](https://arxiv.org/html/2407.04549v1)的作文研究区分在线模型反馈、离线模型评审与人工评审；它不证明换一个评审上下文就可靠。[GEPA 文档](https://github.com/stanfordnlp/dspy/blob/c7e9752debcce5715fee62cd5f1ae538c14d5ce4/docs/docs/diving-deeper/gepa-in-depth.md)提供用逐例反馈提出指令候选、比较并保存谱系的实现线索。对应的本地协议见[迭代与选版](iteration.md)，尚未运行自动优化或验证其在中文写作上的效果。

### 反馈优化与更新路径

[TextGrad v1](https://arxiv.org/html/2406.07496v1)把反馈沿输入输出图传给可改变量，并明确梯度为类比；这里核的是2024预印本相关方法，不冒充2025 Nature定稿全文。固定版[反馈路径](https://github.com/zou-group/textgrad/blob/75e912e210864b61999781778cdf756d4468120f/textgrad/autograd/llm_ops.py)保留调用上下文，并跳过不需反馈的变量。[基础更新器](https://github.com/zou-group/textgrad/blob/75e912e210864b61999781778cdf756d4468120f/textgrad/optimizer/optimizer.py)把约束作为提示文本后直接替换变量；[教程](https://github.com/zou-group/textgrad/blob/75e912e210864b61999781778cdf756d4468120f/examples/notebooks/Tutorial-Prompt-Optimization.ipynb)另设验证集下降时回退。所核默认提示构造未拼入已传入的gradient_memory字段，不能凭配置存在断言历史参与。以上为静态路径观察，未执行或测发生率，也不概括所有版本。

[ProTeGi](https://aclanthology.org/2023.emnlp-main.494/)以错误样本产生批评，改写提示并搜索候选；固定版[实现](https://github.com/microsoft/LMOps/blob/6f53ef41c951de0962bbf27fe3f5819eabc8ce0e/prompt_optimization/optimizers.py)保留原候选、主要替换task段，再按训练样本估分选择。它的分类实验和TextGrad的应用均不能直接证明中文长稿效果；两个来源在文字梯度上有关联，不作独立复制。对应操作见[迭代协议](iteration.md#沿实际输入定位可改对象)，只借定位与更新检查，不把模型批评升级为已证实缺陷。

[TETRA](https://aclanthology.org/2024.bea-1.21/)区分编辑位置重合和重合位置的修改类型一致；后者不是写出相同句子。[To Revise or Not to Revise](https://aclanthology.org/2023.acl-long.880/)提示修订历史标签有假设与噪声。[连接词修订研究](https://aclanthology.org/2025.codi-1.19/)提供必要、较好、两可和原文应保留的区分；原始修订 TSV 未经核实不能当人工标签集。[Re3](https://aclanthology.org/2024.acl-long.255/)启发反馈、改动与修订说明对齐，其答复数据是研究人员整理的摘要。[Time Is Effort](https://aclanthology.org/2025.hcinlp-1.15/)启发真实计时，不提供中文长文的预计耗时。

## 理解

[HoWToBench／Tree-of-Writing](https://aclanthology.org/2026.acl-long.317/)按文类与任务评中文写作，显式组织维度和权重；表3的0.93是系统层级相关性，不能直接当逐篇选稿能力。固定版[权重实现](https://github.com/ZhuoerFeng/ACL2026-Tree-of-Writing/blob/5868cdc6060cebc8746713663addc4d1137dda81/code/tow/evaluation/weight.py)将四项模型权重扩为五项并归一化，[汇总实现](https://github.com/ZhuoerFeng/ACL2026-Tree-of-Writing/blob/5868cdc6060cebc8746713663addc4d1137dda81/code/tow/evaluation/aggregator.py)还定义固定计数与缺键默认值。这里只核静态路径，未测触发频率或复现成绩；[Harness](harness.md)据此补评价层级与聚合口径检查。

[CEFE](https://aclanthology.org/2024.ccl-3.34/)区分中小学生作文的语病识别、最小改写和全文流畅性评级；本地自然度反馈不自动成为语病标签。[CCTAA](https://aclanthology.org/2022.lrec-1.633/)在简体中文新闻中控制跨题材作者归属，仍是已知作者集合内的识别任务；中文身份识别结果不代替新稿可读性。两项只借鉴任务范围和分组设计，未使用受限正文数据或运行基准。

[阅读理解评价](https://aclanthology.org/2024.tacl-1.24/)与 [STARC](https://aclanthology.org/2020.acl-main.507/)支持把稿件可答性、读者答案、题目可猜性分开。题目只覆盖部分信息；反复读同一题目会有先前暴露。自然度、自觉理解、正确作答与整稿接受分别记录。

## 长文研究

[STORM 论文](https://aclanthology.org/2024.naacl-long.347.pdf)用相邻主题启发视角，以检索支持提问和提纲，再分节生成；作者报告来源偏向和无关事实联想仍是问题。百科文章设置不直接证明其他文类效果。固定版本[分节实现](https://github.com/stanford-oval/storm/blob/fb951af7744dab086e34962e9bc6fe878e145f83/knowledge_storm/storm_wiki/modules/article_generation.py)将层级标题用于检索，生成调用却未接收完整提纲；[提纲接口](https://github.com/stanford-oval/storm/blob/fb951af7744dab086e34962e9bc6fe878e145f83/knowledge_storm/storm_wiki/modules/outline_generation.py)的旧提纲参数也未被上层调用继续传入。这是静态传递观察，不是已测生成缺陷。对应操作见[长文研究](research.md)。

## 迁移

[Quill 主规则](https://github.com/sevenwoood/quill-skill/blob/23b58b48e72675b0b2ad035b7d098653d8f503fd/SKILL.md)把多源融合与增量更新拆成可调整维度；[融合示例](https://github.com/sevenwoood/quill-skill/blob/23b58b48e72675b0b2ad035b7d098653d8f503fd/examples/example-style-blending.md)却有保持原意时新增情节、修改少数选项后其他属性也变化的情况。它们是静态演示，不是运行日志。我们采用用途分配和局部规则更新，另行检查兼容性、虚构权限和输出联动；没有采用其未完整定义的比例执行、无口径精确分数或按表层特征判定 AI 作者身份。[诊断规则](https://github.com/sevenwoood/quill-skill/blob/23b58b48e72675b0b2ad035b7d098653d8f503fd/references/diagnosis-rules.md)的句长标准差公式与百分比阈值缺少单位衔接，不作为本 Skill 的漂移门槛。[去 AI 味规则](https://github.com/sevenwoood/quill-skill/blob/23b58b48e72675b0b2ad035b7d098653d8f503fd/references/de-ai-audit-rules.md)的限定词削减也不能覆盖事实所需的不确定性。

[STYLL](https://arxiv.org/abs/2212.08986)的方法和数据分组核读提示，少量作者样本的风格与题材可能混杂；其社交文本任务不等于中文正式写作。当前项目中的用户口述、用户局部认可的助手稿和匿名偏好分别支持意图、期望输出与具体偏好，不能混成用户亲写语料。对应操作见[语料与画像](corpus-profile.md)。

### 个性化材料的检索与时间

[LaMP v4](https://arxiv.org/html/2304.11406v4)区分跨用户切分和已有用户的时间切分，并把查询、个人材料检索与提示构造分开；其生成任务主要为标题、邮件主题和推文。固定版[提示构造](https://github.com/LaMP-Benchmark/LaMP/blob/38c9d4d87629aba5a821bcddc10ddcc83f8d49a1/LaMP/prompts/prompts.py)选择材料后按预算截取，失败分支可退回原输入。因此检索成功不独自证明历史片段实际参与生成；这里只核静态路径，未运行或测频率。

关联的[LongLaMP v3](https://arxiv.org/html/2407.11016v3)扩展至邮件正文、摘要、评论与主题写作；论文明确主题写作缺时间信息，所谓temporal设置对此任务仍随机切分。其英文[固定数据卡](https://huggingface.co/datasets/LongLaMP/LongLaMP/blob/7323ac0ac72ea038731858bcfe9a917c7b7b281b/README.md)列出六种配置，未取得受限邮件正文。论文采用ROUGE/METEOR等指标，不直接证明中文新稿的写法或读者效用。固定仓库所核GPT入口与提示/数据类签名不齐，未作可运行性结论；目标文本虽被传到提示函数的output参数，所核函数未使用它，不能据字段名就宣称答案已泄漏。对应操作见[语料指南](corpus-profile.md#将画像用于新任务)，没有新增本地效果结果。

[StoryTrans](https://aclanthology.org/2023.acl-long.827/)研究中英文故事的篇章风格与内容恢复，其作者也报告强风格变化对内容保留的压力。[Mind the Style Gap](https://aclanthology.org/2025.findings-emnlp.1175/)研究表明指标的适用性会受到测试样本构成影响；其人工构造或模型生成后人工标注的困难样本不代表真实错误发生率。对应操作见[迁移指南](transfer.md)。

[Text Fact Transfer](https://aclanthology.org/2023.emnlp-main.288/)将旧事实变成问题后寻找新答案，但假设事实库正确且无矛盾。[IRP](https://aclanthology.org/2023.emnlp-main.729/)分别规划、检索与改写，其含原文输入和不含原文的实验需分看。[RePA](https://aclanthology.org/2025.acl-long.1250/)用相近主题范文作分段适应，源上下文与输出摘要用途不同。其[原始问答提示](https://github.com/liuyuxiang512/RePA/blob/main/Model/prompts/prompt_calibratedQA.txt)要求缺证据时猜答，[写作提示](https://github.com/liuyuxiang512/RePA/blob/main/Model/prompts/prompt_write.txt)中的负面事实删除指令有歧义。本 Skill 只借用问题规划、适用性判断和状态分工，未采用猜测补证据、自报置信即可信或一律删除负面结论的做法。跨文类、低质参考和冲突语料仍需另验。

[TinyStyler](https://arxiv.org/html/2406.15586v2)通过作者表征条件化重建、候选筛选与后续自蒸馏完成模型路线；论文将选稿所用风格表征与最终评价表征分开，并报告风格强度和语义保留的取舍。少量范文提示不等于已训练这种表征。固定版本的[演示入口](https://github.com/zacharyhorvitz/TinyStyler/blob/128e735520f215eb6cd55ac10760b68f8b33f269/hugging_face_demo/tinystyler_hf.py)在 `run_tinystyler_batch` 中将候选和目标范文传给语义评分，`joint_score` 又将 NaN 转成 1；因此不能仅凭该返回分数证明新材料的内容保留。此处核的是演示路径，不把它当论文评价的同一路径或实测失败率。

[StyleRemix](https://arxiv.org/html/2408.15666v1)的目标是作者身份模糊化；分轴控制和顺序处理提供机制线索，英语适配器数量的实验结果不是中文写作的普遍上限。固定版本[清理函数](https://github.com/jfisher52/StyleRemix/blob/c999002c4a5e858ac452794b20b896d06137a13c/src/utils.py)先按语法分数回退，再以原始生成值覆盖结果，使非空候选不受前一语法回退约束；[顺序入口](https://github.com/jfisher52/StyleRemix/blob/c999002c4a5e858ac452794b20b896d06137a13c/obfuscate.py)继续传递该返回值。它说明过滤必须核对实际生效路径，尚未说明影响频率或本地写作效果。

[StyleDistance](https://arxiv.org/html/2410.12757v2)用同写法异内容、异写法同内容等受控材料训练和评价表征；[mStyleDistance](https://arxiv.org/html/2502.15168v1)扩展到包括中文的语言并排除部分不适用特征。这些是句级表征与识别研究，不是中文长文写作效果。其[公开模型示例](https://huggingface.co/StyleDistance/mstyledistance/blob/d66ed25e48225a503b21a65bc804caf06c886f96/README.md)包含人称变化；新任务是否允许这种变化仍须核编辑合同。对应的条件化判法并入[语料画像指南](corpus-profile.md)，未加载模型、生成向量或运行其评价基准。

固定版本 [stylometric-transfer 统计辅助函数](https://github.com/ngpepin/stylometric-transfer/blob/74dd7e523e760f0607d46e8662b775b968a01057/utils.py)按 ASCII 字母数字匹配词，句子切分依赖英文标点与空格；[画像统计](https://github.com/ngpepin/stylometric-transfer/blob/74dd7e523e760f0607d46e8662b775b968a01057/fingerprint_style.py)和[改写统计](https://github.com/ngpepin/stylometric-transfer/blob/74dd7e523e760f0607d46e8662b775b968a01057/apply_fingerprint.py)的所查路径调用这些函数，并主要计部分英文标点。中文或混合输入时，需先核覆盖范围与量纲；有限的零不自动表示没有该特征。这里是静态范围观察，未执行项目或测中文生成效果。对应判法见[语料指南](corpus-profile.md)与[Harness](harness.md)。

[WritingBench v4](https://arxiv.org/html/2503.05244v4)按题生成名称、说明和分档标准，再经人工复核；其人机一致性研究另有题目，读者不看生成的标准。[固定版评价入口](https://github.com/X-PLUG/WritingBench/blob/ae2d5176449b7b769815482641d35926f26793eb/evaluate_benchmark.py)读取存储的checklist，逐条传入题目和候选评分；标准的产生与审核不是评分脚本自动证明的。由此给[Harness](harness.md)补评价标准的依据、角色、时点和适用性，不把固定五项或模型新增要求变成通用合同。

[LitBench v1](https://arxiv.org/html/2507.00769v1)的主要配对标签由Reddit票数及时间、长度筛选产生；训练语料明示取自WritingPrompts_preferences。另行人工研究对已有题目的新模型故事进行比较，不等于主要数据每对都有直接阅读标注，也不能证明适合中文个人写作。标签产生方式、同源数据关系与真实读者选择分开保存；本地未加载该数据或奖励模型。

## 篇章与论证关系的身份

[RSTFinder固定版入口](https://github.com/EducationalTestingService/rstfinder/blob/08c64535377f7b78d4888178189e2346928fd5a6/rstfinder/rst_parse.py)将句法、篇章分段和关系解析分开，允许复用已给出的中间输入；[rstWeb固定版导出](https://github.com/amir-zeldes/rstWeb/blob/a0b3b8686516b720fe652fd8f1650802ac7d9cfa/modules/formats/db2rst.py)保存节点、关系与信号。这些静态路径提供表示和人工检查的线索，本地未运行解析器、标注界面或验证中文精度。

[学术论证挖掘综述](https://aclanthology.org/2021.sdp-1.7/)讨论论证单元、关系识别、隐含前提及跨段依赖；[DiscourseGraphs概念草案](https://github.com/DiscourseGraphs/schemas/blob/19403e9e28d505dbce6cd2af5868eb27af6e3e36/conceptual-schema-draft.md)区分问题、主张、经验观察和来源，其[支持关系原型](https://github.com/DiscourseGraphs/schemas/blob/19403e9e28d505dbce6cd2af5868eb27af6e3e36/atproto-lexicon/supports.json)使关系本身可记录出处、理由并被质疑。我们据此在[关系检查](relation-checks.md)中分开篇章作用、原文断言与核验依据；这是本地编辑规则，不是已复现的论证挖掘系统。政策原句作为规范依据时，不冒充科学实验的经验性Evidence。

[GCDT论文](https://aclanthology.org/2022.aacl-short.47/)、[中文标注指南](https://github.com/logan-siyao-peng/GCDT/blob/6846a7e21a3a91f29e1376fe4a0f27c4810f2f51/Chinese_RST_Annotation_Guideline.pdf)及同项目训练集一文的局部标注，说明中文EDU可按句法切分，`same-unit`可接回被插入内容打断的表达；本地只核相关章节和已显示标签，未做盲标或测标注能力。该家族与IsaNLP所报中文GCDT成绩有数据关联，不能作为独立效果复现。

[IsaNLP固定版分派入口](https://github.com/tchewik/isanlp_rst/blob/cc8789f44c1341c3e7752b472634d75e81b62518/isanlp_rst/parser.py)区分模型版本；[UniRST实现](https://github.com/tchewik/isanlp_rst/blob/cc8789f44c1341c3e7752b472634d75e81b62518/isanlp_rst/universal_parser/predictor.py)依配置选择关系集，已给EDU的路径关闭预测分段并检查输出叶子对应。其输入拼接会增加空格，因此位置仍需对照实际输入。[指标表](https://github.com/tchewik/isanlp_rst/blob/cc8789f44c1341c3e7752b472634d75e81b62518/UniRST_Metrics.md)分别报告含分段预测与给定标准分段的结果；这些作者报告和静态路径不等于本地中文写作效果。具体输入单位处理见[语料与画像](corpus-profile.md)。

## 人工反馈与标注来源

[Argilla固定版Response说明](https://github.com/argilla-io/argilla/blob/5338519accb13ae422f8bf9c0642651c249c49af/argilla/docs/reference/argilla/records/responses.md)区分回答与建议，也允许程序写入或导入回答；[SDK构造与状态](https://github.com/argilla-io/argilla/blob/5338519accb13ae422f8bf9c0642651c249c49af/argilla/src/argilla/responses.py)的用户ID不能独自证明真实人评。[Label Studio预标注说明](https://github.com/HumanSignal/label-studio/blob/c013134ad91f1cdbba3b7ac5ca3a5eacaf942884/docs/source/guide/predictions.md)描述预测在特定设置下复制为标注；[所查模型字段](https://github.com/HumanSignal/label-studio/blob/c013134ad91f1cdbba3b7ac5ca3a5eacaf942884/label_studio/tasks/models.py)可记录预测来源、创建或更新者及跳过状态。这些静态资料支持追溯标注来源，未验证部署、权限配置、实际导出或使用效果。

[On Releasing Annotator-Level Labels and Information in Datasets](https://aclanthology.org/2021.law-1.14/)分析主观分类任务中聚合与个人观点的差异，建议保留匿名标注者层级标签及分配说明；不是中文写作偏好实验，也不证明所有分歧都同样正确。我们在[Harness](harness.md)中分开原始回答、建议、订正与汇总，并核实际重叠评审。本地仅重新整理P001、P010和H003已有记录的来源，未新增读者结果或重新计算方法优势。

## 批评与派生标准

[EvalAgent v2附录A.2/A.3](https://arxiv.org/html/2504.15219v2)描述任务提出者自评及将批评改写成标准；[固定数据卡](https://huggingface.co/datasets/wadhma/evalagent/blob/a017d824851665901f92adf193d18b61f1a8d1b7/README.md)声明九列，未单列原始回答、逐条批评与回答者。不能用标准文本恢复原稿的通过或失败判断。

本地另核未显式固定版本的Viewer首批20行，从其中8条Ask-then-Critique按指令哈希选3条；仅作来源与适用性分析，未取得原批评或新增人评。固定Parquet已存但未解析全库；不把Viewer快照冒充已与它逐行核同。按[Harness](harness.md#原始回答模型建议与汇总分开)保存原判断与派生标准的区别。

## 共写过程与指令编辑

[CoAuthor论文](https://cs.stanford.edu/~minalee/pdf/chi2022-coauthor.pdf)将从列表选中建议定义为接受，保留请求、选中和编辑过程；这不是对写法或事实的认可分数。本地只核相关设计及方法、[后续开源界面的记录逻辑](https://github.com/minalee-research/coauthor-interface/blob/6a0e859e59593078048f5d0c0c1d208fa2112e57/frontend/js/logging.js)，另看一条公开日志的局部事件。该日志有“插入”事件同时执行删除，且选中之后的一次替换位于新插入片段之前；未全文重放或计算最终作者贡献。现行界面实现不自动等同原研究的全部采集环境。对应处理见[语料与画像](corpus-profile.md)。

[CoEdIT](https://aclanthology.org/2023.findings-emnlp.350/)由编辑意图、指令模板与平行改写对构造训练数据，微调编辑模型；[mEdIT](https://aclanthology.org/2024.naacl-long.56/)扩展到含中文的七种语言，区分指令与正文语言。其[样例格式及说明](https://github.com/vipulraheja/medit/blob/1dfc097ae91f3ce41cfa7d4d405680926ddecb82/README.md)不把跨语言指令等同正文翻译，[所查训练格式函数](https://github.com/vipulraheja/medit/blob/1dfc097ae91f3ce41cfa7d4d405680926ddecb82/train/medit_trainer.py)拼接prompt与tgt。两者属关联路线，公开数据范围也与论文训练混合不同；本地未下载这些训练集、权重或运行模型。它们提供指令编辑的模型路线，不证明当前机制卡已完成参数蒸馏、个性化学习或中文长文效果。

## 写作轨迹与动作选择

[ScholaWrite v5](https://arxiv.org/html/2502.02904v5)扩展了ManuScript相关的写作过程路线；事后标注参考连续修改，下一意图预测只看当前稿，真实后续不一定唯一正确。所核随机条目切分不能冒充跨作者或跨论文验证。这里借其任务区分，不导入固定标签比例或循环次数。

[固定GPT入口](https://github.com/minnesotanlp/scholawrite/blob/1ee32c45bfed9df8806536c9dd821438305c5161/gpt4o/iterative_writing.py)包含未知标签回退；[Llama聚合循环](https://github.com/minnesotanlp/scholawrite/blob/1ee32c45bfed9df8806536c9dd821438305c5161/scholawrite_finetune/llama8b_scholawrite_finetune/iterative_writing.py)按标签切换增加聚合步数，同标签仍可多次生成。均为静态观察，未运行、下载数据行或复现效果。处理原则见[迭代协议](iteration.md#历史动作与下一步提案分开)。

## 声音画像与内嵌材料

[Writing DNA固定工作流](https://github.com/zhangyanglong55-lab/-skill/blob/ffedce769576a6a72e56b42771cd7e6de30c6dc7/写作蒸馏器.skill.md)分层整理写法；[Voice Builder固定入口](https://github.com/charlie947/social-media-skills/blob/8cefb5b6d03757885faa6918bd8bfaef202a83db/skills/voice-builder/SKILL.md)分作者信息与写法，并提醒借来样本和缺席观察的身份。这些是指令设计，固定篇数和标点偏好不当普遍效果证据。

[zdyya Writer相关指令](https://github.com/zdyya/writer-skill/blob/dd100aaf4bb4c028bbda6b11184d232c4c0a0737/SKILL.md)区分材料角色及示例提示词的用途。本地借此补充内嵌材料按各自作用检查，未导入其默认读者、口语配额、素材使用率门槛或角色运行。原项目没有为本地增加训练结果、独立评审或读者证据。

## 叙事分支与一致性

[WhatELSE v1](https://arxiv.org/html/2502.18641v1)将样例、大纲和分支联动，按动作更新世界状态。这里借其表示分工，不把虚构生成许可迁到真实材料。原研究简单域与参与者设置不证明本地长文效果。[Lost in Stories](https://aclanthology.org/2026.findings-acl.410.pdf)用片段配对和引文解释矛盾，其另行注入错误验证也有特定范围。

[固定解析与状态代码](https://github.com/Picrew/ConStory-Bench/blob/3f4195adda94d977ad9bd56f58ec51eaf1a1cd93/constory/judge.py)可把解析未取得的子项填空，完成状态按请求成功累计；[所核CED/GRR循环](https://github.com/Picrew/ConStory-Bench/blob/3f4195adda94d977ad9bd56f58ec51eaf1a1cd93/constory/metrics.py)按含exact_quote的列计数，未在这两段循环筛评价状态。均为静态观察，非复现论文结果。使用时继续遵循[关系检查](relation-checks.md)的证据与核验范围要求。

## 范例策略与迁移落点

[Narrix v1](https://arxiv.org/html/2604.07643v1)把策略、解释和原文线索用于局部组合，再对照源例与新稿的实现。其失败分析提醒：标签看似合理或线索确实存在，仍可能不支持所称作用。这里借用可定位的对照，不把格式约束当语义保证。

其短时微故事研究比较整套交互设计；不能推出当前纯文本流程的独立收益或长期学习效果。本地未运行系统或取得实现代码。按[迁移指南](transfer.md)保留当前任务、事实与虚构范围，用实际文字核落点；教学示例不增加案例或读者成绩。

## 关键帧与材料依赖

[Narrative Keyframing v1](https://arxiv.org/html/2608.10337v1)关联剧情、人物状态、生成视角及最终文本。模型视角中的“证据”服务于虚构人物呈现，不等于真实经历来源。其评价设置和作者谱系与Narrix分别记录，不能移作本地效果。

这里借中间表示的可追溯思路，另设计受影响内容的版本复核；不是已实现或经原论文验证的自动依赖引擎。按[迭代协议](iteration.md)沿实际引用核当前正文与判断，保留历史比较的原输入。本地没有取得实现代码或运行系统。

## 模型评价的提问对象

[Text Style Transfer Evaluation Using Large Language Models](https://aclanthology.org/2024.lrec-main.1373.pdf)在英语Yelp短句上研究多提示词评分，并复用[Mir等2019](https://aclanthology.org/N19-1049/)的人工记录。[官方附件](https://aclanthology.org/attachments/2024.lrec-main.1373.OptionalSupplementaryMaterial.zip)中三条内容模板的提问句出现S2与S2措辞，其中一条后续量尺仍提到输入与改写文。入口按模板填入两段文本；本地只作静态核读，未测模型如何理解或重算论文结果。

由此补充[Harness](harness.md)的实际提问核对及逐次汇总来源记录；这项本地流程修改尚无效果结果。多提示词不自动构成独立读者，论文短句相关性也不证明中文长稿选版可靠。

## 评稿顺序与派生指标

[Judging the Judges](https://aclanthology.org/2025.ijcnlp-long.18.pdf)区分同序重复的稳定、换位后的胜者一致和位置偏向；基于MTBench/DevBench开展事后分析。其胜率汇总把不一致系列折算为平局，质量差也由该批胜率派生。本地仅核相关方法和限制，未运行作者实现或重算结果。

这里补充[Harness](harness.md)的选项身份映射和原状态记录。汇总中的平局可能来自不同原状态，不能直接写成读者认为两稿同样可用。派生质量指标与一致性可能共享计算关系，关联分析需注明来源；这项本地修改尚无实际选稿效果证据。

## 反馈历史与评价输入

[Feedback Descent v2](https://arxiv.org/pdf/2511.07919v2)用成对偏好和原因提出新候选；其主要实验是SVG、提示优化和分子编码。正文写持续加入反馈，同页算法却在候选获选后重置历史；本地未取得实现核定实际运行政策，不把其中任一种直接当用户反馈处理规则。

这里另设计[迭代协议](iteration.md)中的档案/实际输入区分，临时搜索状态的变化不取消有效用户要求。[SwarmAgentic](https://aclanthology.org/2025.emnlp-main.93.pdf)还提供写作系统搜索线索；[固定评价代码](https://github.com/YaoZ720/SwarmAgenticCode/blob/d7346ed6c56cecdfb8244c7c4b5276a983010b91/creative_writing/eval.py)的五次评分只传入正文评连贯性，反馈提示取最后一次评分字典，返回分为均值。均为静态核读，未证明论文数值受何种影响或当前写作效果；连贯分也不替代任务条件核验。

## 流程搜索与贡献归属

[Meta-Harness v1](https://arxiv.org/pdf/2603.28052v1)让提案者按需读取历次代码、分数与轨迹；这不等于每次把全档案塞进提示。其文字分类、数学和代码任务不直接证明中文写作收益。[固定分类示例Skill](https://github.com/stanford-iris-lab/meta-harness/blob/8123ccabe2b19fa1123090b2e5f1bacc20963ce8/reference_examples/text_classification/.claude/skills/meta-harness/SKILL.md)的固定三候选、禁止提前停止等约束仅属该实验，不导入日常写作。公开测试资料仍可读取，操作分工不能称为访问隔离。

[RRSI v3](https://arxiv.org/pdf/2609.24972v3)限制每次联合修改，并在选版前筛查特定任务逻辑；用成绩、成本和新颖性等条件筛选候选。论文D.2明确联合修改继承候选整体测量，不能由组件记录推出独立贡献。D.3及[固定选择实现](https://github.com/google-research/rrsi/blob/be50316e1db05914068a973f322770ef08ed7ba1/rrsi/selection.py)还允许噪声范围内结合成本和结构新颖性判断，不能概括成每次获选都显著涨分。模型审查与裁剪目标也不保证杜绝过拟合。

这里补充[迭代协议](iteration.md)中的联合变化与候选结局区分；未把它的噪声阈值、修改数量或评分权重用作中文写作门槛，也未运行这两套系统或证明本地改造有效。

## 候选响应与分支选择

[Harness Forge固定Skill](https://github.com/001TMF/harness-forge/blob/303270310ba206dad9056fbdbeda9d888d7d3f86/skills/meta-harness/SKILL.md)把流程优化封装成原生工具编排；它是Meta-Harness的第三方实现线索，本轮未安装或运行。其[评分代码](https://github.com/001TMF/harness-forge/blob/303270310ba206dad9056fbdbeda9d888d7d3f86/examples/memory-summary/inner_loop.py)确实使用候选新生成的摘要，但[字段评分](https://github.com/001TMF/harness-forge/blob/303270310ba206dad9056fbdbeda9d888d7d3f86/examples/memory-summary/corpus.py)只做字符串命中；不能当语义忠实度或中文自然度。其method说明提出把可能冻结的质量分改作底线；本地另作逻辑限定：若该分根本不随候选改变，作为底线也不能发现新候选的质量损失。

[Mixture of Self-Improving Branches v1](https://arxiv.org/pdf/2609.37834v1)按开发记录更新分支任务子集和提案Skill，再用开发数据构建选择器。新题执行前不看该题各分支输出或正确反馈；论文另报事后成功并集，不等同实际选择成绩。所核为论文相关方法、评价与附录，未取得可核作者实现或运行；数学与代码结果不直接推广到中文写作。

这里补[Harness](harness.md)的实际评分对象及选择时点检查；没有导入固定候选数、代理分数阈值、无条件持续搜索或额外模型调用要求。

## 写作动作的身份

[写作动作与完整示例](writing-actions.md)把已有公开文本观察、研究启发和本地编辑提案整理为按需候选，来源类别逐卡说明。首批八张卡、三个示例没有构成八项独立验证：解释稿复用P008的公开事实家族，另外两组是明确虚构的教学设定。第二十五轮增加WA09及第四个虚构流程示例，同样没有新增生成试验。写作动作须回到新参考取得实际锚点，不能仅按库中的名称反推原作者意图。示例自查修过重复与范围表达，尚无独立写作者或读者效果结果。

[Writing for Readers](https://github.com/Mark-Life/agent-skills/blob/087ec25bee864118b0cccf11b4ad086766c25fc6/skills/communication/writing-for-readers/SKILL.md)与[Editorial Line](https://github.com/brycehamrick/editorial-skills/blob/4043b9625b5751f5b8c65de6bf08ce6ce65ae88a/skills/editorial-line/SKILL.md)提供称呼稳定、句间接续和有位置的编辑诊断线索。前者的[归因说明](https://github.com/Mark-Life/agent-skills/blob/087ec25bee864118b0cccf11b4ad086766c25fc6/skills/communication/writing-for-readers/ATTRIBUTION.md)说明部分统计来自少量英语文章；本地未重算，未将其压缩比例、缩写频率或句长门槛用于中文验收。[fiction-writing-prose](https://github.com/alt-code-ai/agent/blob/8693ecd0e1e320f7063be13e6c2ec8dffac82f6b/skills/fiction-writing-prose/SKILL.md)的场景、概述和感知选择只作小说技巧候选；其书籍归因未逐项回原著核实，不当普遍效果证据。真实回忆保留材料支持的直接感受，不能为了展示而另造动作。

## 组合指标的校准范围

[B06：Evaluating Text Style Transfer Evaluation](https://aclanthology.org/2025.naacl-srw.41/)是在情感迁移和去毒任务上做的英/印地/孟加拉语评价实验；先前来源简称“综述”已纠正。其组合方法利用目标数据的人类标签选指标、拟合权重，作者明确称为oracle。这里迁移的是记录校准数据与最终评价重叠的要求，未运行或证明中文效果。附录表10/11对同一输入对使用相反的任务方向，已核出版社第430页；这仅证明公开示例差异，不能推定实际调用或全部结果有错。作者链接仓库固定[4a8773ee](https://github.com/souro/tst_evaluation/tree/4a8773ee403b3fe6e806e6567d5a77952fbee908)完整树只有README、LICENSE、.gitignore三个文件，尚无法核查评分实现。
