---
description: Chinese web novel (网文) craft router — packaging (title/blurb/chapter titles), golden three-chapter opening, satisfaction-point (爽点) pacing, three-layer outline with progression system, character system, chapter-level craft, and rookie-pitfall diagnosis. Routes to the speckit-webnovel-craft skill tree. Use for Chinese serialized web fiction projects alongside the standard speckit workflow. Not for non-webnovel genres.
---

## User Input

```text
$ARGUMENTS
```

You **MUST** consider the user input before proceeding (if not empty).

## Outline
### Goal

为中文长篇网文（平台连载向）提供创作技法支持。本命令是路由层：判断任务场景，加载 `.trae/skills/speckit-webnovel-craft/` 技能树中对应的二级技能与参考手册，产出可直接使用的公式、模板与清单。

与标准 speckit 工作流的关系：**互补**。speckit 管工程流程（specify → plan → tasks → implement → continuity → polish），本命令管网文商业写法（门面、黄金三章、爽点密度、升级体系、章末钩子、避坑诊断）。写中文连载网文时两者配合使用；写实体书/英文小说时只使用标准 speckit 工作流。

## Command

When the `speckit.webnovel-craft` command is run, the LLM should:

1. **Read** the user input (`$ARGUMENTS`) and classify the scenario: 门面（书名/简介/章标）、开篇（黄金三章）、爽点与节奏、大纲与升级体系、人物、单章写法、避坑诊断，或开书前/连载期/数据出问题。
2. **Load** the router skill `.trae/skills/speckit-webnovel-craft/SKILL.md` and follow its routing table to load the matching subskill(s) under `.trae/skills/speckit-webnovel-craft/subskills/`. If the skill tree is not installed under `.trae/skills/` yet (install script not run), fall back to the copy bundled in this preset: `.specify/presets/chinese-web-fiction-writing/skills/speckit-webnovel-craft/SKILL.md`:
   - `webnovel-packaging` — 书名、简介、封面方向、章标
   - `webnovel-opening` — 黄金三章与十条自检表
   - `webnovel-pacing` — 爽点密度、糖葫芦串、期待感、反转与高潮
   - `webnovel-outline` — 三层大纲、升级体系、卷纲模板、卡文
   - `webnovel-characters` — 主角三锚点、金手指、反派层级、配角反应
   - `webnovel-chapter` — 单章结构、章末钩子、文笔微操
   - `webnovel-pitfalls` — 十大死法诊断与核心公式速查卡
3. **Consult** the full manual `.trae/skills/speckit-webnovel-craft/ref/网文爆款写作实操手册.md` when checklists are insufficient or the scenario is not covered by any subskill (选题扫榜、平台签约、更新运营、数据复盘、30 天计划 → 手册第一/二/三/十/十二章).
4. **Report**: which subskill(s) were applied, which manual chapters were read, and the resulting formulas/checklists/actions — always as concrete, actionable output (「死法 + 证据 + 改法」for diagnosis; 「公式 + 产出 + 自检表」for creation).
5. **Combine freely**: one task may chain multiple subskills (e.g. 写前三章 = opening + chapter + pacing). Follow the dependency order defined in the router skill: 结构 → 开篇与门面 → 单章与节奏.
