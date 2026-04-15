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
  echo "未找到 Axure RP 11.app，请将应用路径作为参数传入。"
  echo "示例：bash scripts/install_macos.sh \"/Applications/Axure RP 11.app\""
  exit 1
fi

TARGET_FILE="$TARGET_APP/Contents/MacOS/lang/default"

if [[ ! -f "$TARGET_FILE" ]]; then
  echo "目标语言文件不存在：$TARGET_FILE"
  exit 1
fi

python3 "$VALIDATOR"
cp "$SOURCE_FILE" "$TARGET_FILE"

echo "安装完成："
echo "$TARGET_FILE"
echo "请完全退出 Axure RP 11 后重新打开。"
