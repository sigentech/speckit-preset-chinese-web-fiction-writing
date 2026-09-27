# Chinese Web Fiction Writing — Spec Kit Preset

中文长篇网文（平台连载向）的 Spec Kit 预设。在 [fiction-book-writing](https://github.com/adaumann/speckit-preset-fiction-book-writing) v1.9.1 的完整小说工作流之上，增加了一套**中文网文商业写法技能树**（`speckit-webnovel-craft`）：门面工程、黄金三章、爽点节奏、三层大纲与升级体系、人物系统、章节微操、十大死法诊断，并附 1.2 万字调研手册《网文爆款写作实操手册》。

A [Spec Kit](https://github.com/github/spec-kit) preset for **Chinese serialized web fiction** (中文网文). It bundles the full fiction-book-writing workflow (multi-POV, plot structures, style modes, KDP export) and adds a webnovel craft skill tree distilled from platform playbooks (番茄/起点): packaging (书名/简介/章标), golden three-chapter opening (黄金三章), satisfaction-point pacing (爽点密度), three-layer outline with progression system (升级体系), character system, chapter-level craft, and rookie-pitfall diagnosis (新人十大死法).

---

## 预设内容 | Contents

```
chinese-web-fiction-writing/   ← 可被 specify preset add 安装的预设目录
├── preset.yml                 — 预设清单
├── commands/                  — 36 个 AI 斜杠命令（35 个小说工作流 + speckit.webnovel-craft）
├── templates/                 — 21 个故事文档模板（人物、世界观、时间线等）
├── scripts/                   — 导出脚本（DOCX/EPUB/LaTeX）+ webnovel 技能安装脚本
└── skills/
    └── speckit-webnovel-craft/    — 网文技法技能树
        ├── SKILL.md               — 路由层（按场景分发）
        ├── subskills/             — 7 个二级技能
        │   ├── webnovel-packaging   书名/简介/封面方向/章标
        │   ├── webnovel-opening     黄金三章 + 十条自检表
        │   ├── webnovel-pacing      爽点密度/糖葫芦串/期待感/反转/高潮
        │   ├── webnovel-outline     三层大纲/升级体系/卷纲模板/卡文
        │   ├── webnovel-characters  主角三锚点/金手指/反派层级/配角反应
        │   ├── webnovel-chapter     单章结构/章末钩子/文笔微操
        │   └── webnovel-pitfalls    十大死法诊断 + 核心公式速查卡
        └── ref/
            └── 网文爆款写作实操手册.md  — 完整方法论（含选题、签约、运营、30 天计划）
```

## 安装 | Installation

需要 [Spec Kit](https://github.com/github/spec-kit) >= 0.5.0（`uv tool install specify-cli`）。

**一键安装（推荐）**：

```bash
specify preset add --from https://github.com/sigentech/speckit-preset-chinese-web-fiction-writing/releases/download/v1.0.0/chinese-web-fiction-writing.zip
```

**本地开发模式**：

```bash
specify preset add --dev /path/to/speckit-preset-chinese-web-fiction-writing/chinese-web-fiction-writing
```

**安装后执行一次**（把网文技能树装入 `.trae/skills/`，让 agent 可自动调用）：

```powershell
# Windows (PowerShell)
.specify/presets/chinese-web-fiction-writing/scripts/powershell/install-webnovel-skill.ps1
```

```bash
# macOS / Linux
bash .specify/presets/chinese-web-fiction-writing/scripts/bash/install-webnovel-skill.sh
```

> 即使不执行此脚本，`/speckit-webnovel-craft` 命令也会自动回退到预设内置的技能树副本。

## 快速开始 | Quick Start

在 agent 对话中依次调用（与标准 speckit 流程一致）：

```
/speckit-constitution 创建我的故事圣经（Story Bible）
/speckit-specify 我要写一本修仙+资本逻辑的番茄风长篇网文
/speckit-plan
/speckit-tasks
/speckit-implement
```

网文技法随时可用（开书前、连载期、改稿、诊断）：

```
/speckit-webnovel-craft 帮我的书写 5 个书名和 3 版简介
/speckit-webnovel-craft 审查前三章，按十条自检表给结论
/speckit-webnovel-craft 最近追读掉了，诊断原因
```

当项目为中文网文时，`speckit.specify / plan / implement / polish / help` 五个命令会自动叠加网文技法清单（书名简介公式、黄金三章自检、爽点密度、单章结构、中文可读性）。

## 与上游的关系 | Relationship to upstream

- 基于 [adaumann/speckit-preset-fiction-book-writing](https://github.com/adaumann/speckit-preset-fiction-book-writing) **v1.9.1**（MIT），保留其全部命令、模板与导出能力；完整命令参考见 [上游 README](https://github.com/adaumann/speckit-preset-fiction-book-writing/blob/main/fiction-book-writing/README.md)。
- 新增：`commands/speckit.webnovel-craft.md`、`skills/speckit-webnovel-craft/` 技能树、5 个命令的中文网文扩展段、2 个技能安装脚本。
- 工作流分工：**speckit 管工程流程**（specify → plan → tasks → implement → continuity → polish），**webnovel-craft 管网文商业写法**（门面、开篇、爽点、大纲、人物、单章、避坑）。

## License

MIT — 见 [LICENSE](LICENSE)。上游项目 github/spec-kit 与 speckit-preset-fiction-book-writing 同为 MIT。
