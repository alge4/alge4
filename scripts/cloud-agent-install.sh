#!/usr/bin/env bash
# Idempotent Cloud Agent bootstrap for alge4 (logo design).
set -euo pipefail

python3 -c 'import sys; assert sys.version_info >= (3, 10), sys.version'

SKILL=".cursor/skills/logo-design"
if [[ ! -f "$SKILL/SKILL.md" ]]; then
  # Allow default-branch builds before the skill PR is merged.
  echo "logo-design skill not in this checkout yet; Python OK - skipping skill checks"
  exit 0
fi

# Confirm Chrome (or another backend) can render SVG to PNG for the skill tools.
python3 "$SKILL/scripts/render_png.py" --which

# Quick library + audit sanity checks (stdlib only; no network).
python3 "$SKILL/scripts/search_library.py" --type abstract --limit 1 --format paths >/dev/null
python3 "$SKILL/scripts/svg_audit.py" "$SKILL/assets/library/svg/vercel.svg" >/dev/null

echo "logo-design skill ready"
