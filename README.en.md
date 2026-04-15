# Axure RP 11 Simplified Chinese

> You can copy the repository link below to your agent, and it will handle everything automatically.

```text
https://github.com/GuoShamin/axure-rp11-simplified-chinese
```

An unofficial Simplified Chinese language pack for Axure RP 11, packaged with agent-friendly installation, validation, and release tooling.

Written by Codex (powered by GPT-5)  
Package maintenance and cleanup revision by Evin

## Language Versions

- Chinese (default): [README.md](./README.md)
- English: current page

## Overview

This repository provides a cleaned and revised `lang/default` file for Axure RP 11, intended for users who want a Simplified Chinese interface while keeping installation and maintenance easy for both humans and agents.

Compared with commonly circulated community packages, this repository focuses on:

- removing embedded signatures, promo links, and injected notices
- fixing formatting issues, broken anchor tags, and compatibility risks
- normalizing RP 11 terminology where appropriate
- replacing awkward, low-quality, or obviously incorrect translations

## Repository Structure

- `lang/default`: the core Axure RP 11 language file
- `README.md`: Chinese default repository homepage
- `AGENTS.md`: Chinese agent handoff guide
- `AGENTS.en.md`: English agent handoff guide
- `CHANGELOG.md`: version history
- `docs/install-guide-zh-CN.md`: Chinese installation guide
- `docs/install-guide.md`: English installation guide
- `scripts/validate_lang.py`: structure validation script
- `scripts/build_release.sh`: release packaging script
- `scripts/install_macos.sh`: macOS installer
- `scripts/install_windows.ps1`: Windows installer

## Supported Platforms

- Axure RP 11
- macOS
- Windows

This is an unofficial package and is not affiliated with Axure.

## Agent-First Usage

This repository is intentionally structured so that a user can hand the repository link to an agent and let the agent complete the setup flow.

A capable agent should be able to:

1. read `AGENTS.md` or `AGENTS.en.md`
2. validate `lang/default`
3. detect or accept the Axure install path
4. install the language file into the correct location
5. build release artifacts when needed

## Quick Start

### Agent-Driven Install

macOS:

```bash
bash scripts/install_macos.sh
```

Windows PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install_windows.ps1
```

### Manual Install

1. Fully quit Axure RP 11.
2. Locate Axure's `lang` directory.
3. Replace the existing `lang/default` file with the one from this repository.
4. Restart Axure RP 11.

Detailed instructions:

- Chinese: [docs/install-guide-zh-CN.md](./docs/install-guide-zh-CN.md)
- English: [docs/install-guide.md](./docs/install-guide.md)

## Validation

```bash
python3 scripts/validate_lang.py
```

## Build a Release Package

```bash
bash scripts/build_release.sh
```

## Releases

If you prefer a downloadable package instead of cloning the repository, use the GitHub Releases page.

## Notes

- Axure updates may overwrite the language file, so you may need to reinstall it after an update.
- Do not mix language files across major Axure versions.
- `lang/default` is a UTF-16 file and should not be renamed or re-encoded casually.
- If you want an agent to perform the installation, prefer the provided install scripts instead of manual copy steps.

## Disclaimer

- This repository is provided for learning, discussion, and personal use.
- `Axure` and `Axure RP` are trademarks of their respective owners.
- If you need the most stable or compliant path, prioritize official Axure distribution channels.
