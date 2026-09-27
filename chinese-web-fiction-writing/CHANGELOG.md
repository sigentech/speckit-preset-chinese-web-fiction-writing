# Changelog

All notable changes to the Chinese Web Fiction Writing preset will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [1.0.1] - 2026-09-27

### Fixed

- `preset.yml`: renamed installer script provides entries (`install-webnovel-skill.ps1` → `install-webnovel-skill-ps1`, `install-webnovel-skill.sh` → `install-webnovel-skill-sh`) to comply with specify's name validation (lowercase alphanumeric with hyphens only) — the dotted names blocked `specify preset add --from <zip>` with a validation error
- README: one-click install URL now uses `releases/latest/download/...` so it always points at the newest release asset

### Added

- Global glossary rule (craft-rules § VII): every specialized term (names, places, concepts, skills, items, factions, traits) must be registered in `glossary.md`; non-English projects must record bilingual entries (original-language form + canonical English equivalent) for manuscript-wide consistency and translation-ready output. Enforced via glossary template bilingual fields, `speckit.glossary` bilingual add flow, and the new VG-006 missing-English-equivalent check
- Root `README.md` / `README_CN.md` promoted to full bilingual project docs: 35-command reference grouped by lifecycle phase, Mermaid full-lifecycle flowchart, from-zero one-shot setup guide

---

## [1.0.0] - 2026-09-26

Initial release. Based on [speckit-preset-fiction-book-writing](https://github.com/adaumann/speckit-preset-fiction-book-writing) v1.9.1 (MIT).

### Added

- `speckit.webnovel-craft` command — Chinese web novel (网文) craft router
- `skills/speckit-webnovel-craft/` skill tree: router + 7 subskills (packaging, opening, pacing, outline, characters, chapter, pitfalls) + full craft manual 《网文爆款写作实操手册》
- 中文网文项目扩展 sections in `speckit.specify`, `speckit.plan`, `speckit.implement`, `speckit.polish`, `speckit.help`
- `install-webnovel-skill` scripts (PowerShell + bash) to install the skill tree into `.trae/skills/`
