#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

require_command() {
  local command_name="$1"
  local install_hint="$2"

  if ! command -v "$command_name" >/dev/null 2>&1; then
    printf 'Missing required command: %s\n' "$command_name" >&2
    printf '%s\n' "$install_hint" >&2
    exit 1
  fi
}

run_marp() {
  if command -v marp >/dev/null 2>&1; then
    marp "$@"
    return
  fi

  require_command "npx" "Install Node.js/npm, then rerun this script."
  npx @marp-team/marp-cli "$@"
}

require_command "pandoc" "Install with: brew install pandoc"
require_command "wkhtmltopdf" "Install wkhtmltopdf, then rerun this script."

printf 'Generating notes_sheet.pdf...\n'
notes_args=(
  notes_sheet.md
  --standalone
  --pdf-engine=wkhtmltopdf
  -o notes_sheet.pdf
)

if [[ -f scripts/pandoc.css ]]; then
  notes_args+=(--css scripts/pandoc.css)
else
  printf 'Skipping notes CSS: scripts/pandoc.css not found.\n'
fi

pandoc "${notes_args[@]}"

printf 'Generating presentation.pdf...\n'
run_marp presentation.md --pdf --allow-local-files -o presentation.pdf

printf 'Generating index.html...\n'
run_marp presentation.md --html --allow-local-files -o index.html

printf 'Done.\n'
