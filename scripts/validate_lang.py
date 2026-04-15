#!/usr/bin/env python3
from __future__ import annotations

import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LANG_FILE = ROOT / "lang" / "default"


def main() -> int:
    text = LANG_FILE.read_text(encoding="utf-16")
    issues: list[str] = []

    for line_no, line in enumerate(text.splitlines(), start=1):
        if not line.startswith('"') or "::" not in line:
            continue

        src, dst = line.split("::", 1)
        src_placeholders = re.findall(r"\{\d+\}", src)
        dst_placeholders = re.findall(r"\{\d+\}", dst)
        if src_placeholders != dst_placeholders:
            issues.append(
                f"line {line_no}: placeholder mismatch: {src_placeholders} != {dst_placeholders}"
            )

        if src.count("<a>") != dst.count("<a>") or src.count("</a>") != dst.count("</a>"):
            issues.append(f"line {line_no}: anchor tag mismatch")

    if issues:
        print("Validation failed:")
        for issue in issues:
            print(f"- {issue}")
        return 1

    print(f"Validation passed: {LANG_FILE}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
