#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE_FILE="$ROOT_DIR/lang/default"
VALIDATOR="$ROOT_DIR/scripts/validate_lang.py"

detect_axure_app() {
  local candidates=(
    "/Applications/Axure RP 11.app"
    "$HOME/Applications/Axure RP 11.app"
  )

  for candidate in "${candidates[@]}"; do
    if [[ -d "$candidate" ]]; then
      echo "$candidate"
      return 0
    fi
  done

  return 1
}

TARGET_APP="${1:-}"
if [[ -z "$TARGET_APP" ]]; then
  TARGET_APP="$(detect_axure_app || true)"
fi

if [[ -z "$TARGET_APP" ]]; then
  echo "Axure RP 11.app was not found. Please pass the app path explicitly."
  echo "Example: bash scripts/install_macos.sh \"/Applications/Axure RP 11.app\""
  exit 1
fi

TARGET_FILE="$TARGET_APP/Contents/MacOS/lang/default"

if [[ ! -f "$TARGET_FILE" ]]; then
  echo "Target language file not found: $TARGET_FILE"
  exit 1
fi

python3 "$VALIDATOR"
cp "$SOURCE_FILE" "$TARGET_FILE"

echo "Installation completed:"
echo "$TARGET_FILE"
echo "Please fully quit Axure RP 11 and reopen it."
