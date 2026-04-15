#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIST_DIR="$ROOT_DIR/dist"
VERSION="${1:-v1.1}"
PACKAGE_NAME="axure-rp11-simplified-chinese-${VERSION}"
PACKAGE_DIR="$DIST_DIR/$PACKAGE_NAME"
ZIP_PATH="$DIST_DIR/${PACKAGE_NAME}.zip"

rm -rf "$PACKAGE_DIR" "$ZIP_PATH"
mkdir -p "$PACKAGE_DIR/lang" "$PACKAGE_DIR/docs"

cp "$ROOT_DIR/lang/default" "$PACKAGE_DIR/lang/default"
cp "$ROOT_DIR/README.md" "$PACKAGE_DIR/README.md"
cp "$ROOT_DIR/docs/install-guide-zh-CN.md" "$PACKAGE_DIR/docs/install-guide-zh-CN.md"

(
  cd "$DIST_DIR"
  zip -qr "${PACKAGE_NAME}.zip" "$PACKAGE_NAME"
  shasum -a 256 "${PACKAGE_NAME}.zip" > SHA256SUMS.txt
)

echo "Built release package:"
echo "$ZIP_PATH"
