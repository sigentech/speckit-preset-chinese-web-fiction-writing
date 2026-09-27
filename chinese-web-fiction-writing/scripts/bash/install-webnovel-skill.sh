#!/usr/bin/env bash
# Installs the speckit-webnovel-craft skill tree into .trae/skills/ so the agent can auto-invoke it.
# Run once after `specify preset add`. Safe to re-run (overwrites).
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"   # .specify/presets/<id>/scripts/bash
PRESET_DIR="$(dirname "$(dirname "$SCRIPT_DIR")")"           # .specify/presets/<id>
PROJECT_ROOT="$(dirname "$(dirname "$(dirname "$PRESET_DIR")")")"

SOURCE="$PRESET_DIR/skills/speckit-webnovel-craft"
TARGET="$PROJECT_ROOT/.trae/skills/speckit-webnovel-craft"

[ -d "$SOURCE" ] || { echo "Skill tree not found: $SOURCE" >&2; exit 1; }
mkdir -p "$(dirname "$TARGET")"
rm -rf "$TARGET"
cp -R "$SOURCE" "$TARGET"
echo "Installed speckit-webnovel-craft skill tree -> $TARGET"
