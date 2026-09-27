---
name: speckit-webnovel-craft
description: 网文写作技法总入口，路由到7个二级技能（门面/开篇/爽点节奏/大纲/人物/单章/避坑）。当用户写小说、写网文、起书名、写简介、做大纲、写开篇、写章节、排爽点、做人设、改稿、诊断扑街或任何长篇网文创作任务时首先调用，按场景分发。不用于非网文体裁。
---

# 网文写作技法总入口（路由层）

本技能不直接产出内容，只做一件事：**判断当前任务属于哪个场景，然后调用对应的二级技能**。二级技能才会加载具体的公式、模板与清单。

## 路由表：按场景进入二级技能

| 用户意图 / 触发词 | 调用技能 |
|---|---|
| 起书名、写简介、封面方向、章标命名、门面审查 | `subskills/webnovel-packaging` |
| 写开篇、改前三章、黄金三章、开头留存差、签约被拒（开头方向） | `subskills/webnovel-opening` |
| 排爽点、剧情拖沓、追读差、反转设计、高潮设计、期待感、断章卡点 | `subskills/webnovel-pacing` |
| 做大纲、细纲、卷纲、升级体系、力量体系、地图规划、剧情跑偏、卡文 | `subskills/webnovel-outline` |
| 做人设、主角代入感、金手指设计、反派设计、配角扁平 | `subskills/webnovel-characters` |
| 写单章、改稿、章末钩子、文笔闷、对话平淡、句子节奏 | `subskills/webnovel-chapter` |
| 扑街诊断、数据差自查、被拒签、开书前体检、十大死法 | `subskills/webnovel-pitfalls`（它会再分诊到上述专项） |

## 按写作阶段的调用顺序

**开书前**（依次调用）：
1. `subskills/webnovel-outline` — 定总纲锚点、升级体系、卷纲
2. `subskills/webnovel-characters` — 主角三锚点、金手指、反派层级
3. `subskills/webnovel-packaging` — 书名、简介、章标风格
4. `subskills/webnovel-opening` — 写前三章并过十条自检表

**连载期**（按日/按周调用）：
- 每日写正文：`subskills/webnovel-chapter`（单章结构+章末钩子）
- 排布剧情单元与爽点：`subskills/webnovel-pacing`（糖葫芦串+密度公式）
- 卡文或补细纲：`subskills/webnovel-outline`

**出问题时**（诊断入口）：
- 一律先调 `subskills/webnovel-pitfalls`，按「死法 + 证据 + 改法」三段式定位，再下钻到对应专项技能执行修改。

## 调用规则

1. 收到网文创作任务后，先判断场景，**可一次任务内多次调用不同二级技能**（例：写前三章 = `subskills/webnovel-opening` + `subskills/webnovel-chapter` + `subskills/webnovel-pacing`）。
2. 组合调用时按依赖顺序：先结构（outline/characters）→ 再开篇与门面（opening/packaging）→ 后单章与节奏（chapter/pacing）。
3. 不确定归属时，默认进 `subskills/webnovel-pitfalls` 的诊断流程做分诊。
4. 二级技能之间已互相引用（如 pitfalls 会指回专项），跟随其指引即可，不要重复加载已生效的技能。

## 参考手册（完整版方法论）

本技能树的完整调研依据：[ref/网文爆款写作实操手册.md](ref/网文爆款写作实操手册.md)（约 1.2 万字，含全部案例、数据细节与出处）。二级技能只含公式与清单，**当清单不够用、需要完整案例、数据或上下文时，Read 手册对应章节**。

以下场景二级技能未覆盖，遇到时**直接 Read 手册对应章节**后再回答：

| 场景 | 手册章节 |
|---|---|
| 行业认知、读者留存曲线、算法推荐逻辑 | 一、底层认知 |
| 选平台、签约流程、全勤与收入结构 | 二、平台选择与商业化路径 |
| 选题、扫榜、题材风向、提炼核心梗 | 三、选题定位 |
| 更新策略、签约节点动作、数据复盘 SOP、卡文应对 | 十、连载运营与数据复盘 |
| 开书前检查清单、每日写作 SOP、30 天开书计划 | 十二、落地执行系统 |
