# Installs the speckit-webnovel-craft skill tree into .trae/skills/ so the agent can auto-invoke it.
# Run once after `specify preset add`. Safe to re-run (overwrites).
$ErrorActionPreference = 'Stop'

$ScriptDir   = Split-Path -Parent $MyInvocation.MyCommand.Path          # .specify/presets/<id>/scripts/powershell
$PresetDir   = Split-Path -Parent (Split-Path -Parent $ScriptDir)       # .specify/presets/<id>
$ProjectRoot = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $PresetDir))

$Source = Join-Path $PresetDir "skills\speckit-webnovel-craft"
$Target = Join-Path $ProjectRoot ".trae\skills\speckit-webnovel-craft"

if (-not (Test-Path $Source)) { Write-Error "Skill tree not found: $Source"; exit 1 }
New-Item -ItemType Directory -Force -Path (Split-Path -Parent $Target) | Out-Null
Copy-Item -Recurse -Force $Source $Target
Write-Host "Installed speckit-webnovel-craft skill tree -> $Target"
