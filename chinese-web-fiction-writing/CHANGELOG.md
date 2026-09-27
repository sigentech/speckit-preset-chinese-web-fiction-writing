# Changelog

All notable changes to the Chinese Web Fiction Writing preset will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [1.0.0] - 2026-09-26

Initial release. Based on [speckit-preset-fiction-book-writing](https://github.com/adaumann/speckit-preset-fiction-book-writing) v1.9.1 (MIT).

### Added

- `speckit.webnovel-craft` command — Chinese web novel (网文) craft router
- `skills/speckit-webnovel-craft/` skill tree: router + 7 subskills (packaging, opening, pacing, outline, characters, chapter, pitfalls) + full craft manual 《网文爆款写作实操手册》
- 中文网文项目扩展 sections in `speckit.specify`, `speckit.plan`, `speckit.implement`, `speckit.polish`, `speckit.help`
- `install-webnovel-skill` scripts (PowerShell + bash) to install the skill tree into `.trae/skills/`
