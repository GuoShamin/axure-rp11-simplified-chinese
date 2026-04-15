# Repository Guidelines

## Project Goal

This repository has one job: maintain an unofficial Simplified Chinese language file for Axure RP 11 and keep it easy to install, validate, package, and hand off to an agent.

## Agent Quick Start

If a user gives this repository URL directly to an agent, the agent should follow this order by default:

1. read this file or the Chinese `AGENTS.md`
2. run `python3 scripts/validate_lang.py`
3. if the user wants installation:
   - macOS: prefer `bash scripts/install_macos.sh`
   - Windows: prefer `powershell -ExecutionPolicy Bypass -File .\scripts\install_windows.ps1`
4. if the user wants release packaging:
   - run `bash scripts/build_release.sh`
   - upload assets from `dist/` to GitHub Releases

Do not default to asking the user to manually find the `lang/default` target unless auto-detection fails.

## Key Files

- `lang/default`: core UTF-16 language file with no extension
- `README.md`: Chinese default repository homepage
- `README.en.md`: English repository homepage
- `docs/install-guide-zh-CN.md`: Chinese installation guide
- `docs/install-guide.md`: English installation guide
- `CHANGELOG.md`: version history
- `scripts/validate_lang.py`: structure validator
- `scripts/build_release.sh`: packaging script
- `scripts/install_macos.sh`: macOS installer
- `scripts/install_windows.ps1`: Windows installer

## Editing Rules

1. Do not re-encode `lang/default` to UTF-8, UTF-8 with BOM, GBK, or anything else.
2. Do not rename `lang/default` to `.txt`, `.json`, `.xml`, or any other extension.
3. When editing translations, preserve:
   - placeholders like `{0}`, `{1}`
   - anchor tag structure like `<a>...</a>`
   - escaped sequences like `\n`, `\r\n`
4. If the English source says `component`, prefer translating it as the RP 11 component concept rather than falling back to older RP terminology.
5. Do not inject signatures, URLs, promo text, or unrelated notices into UI strings.

## Recommended Workflow

1. edit `lang/default`
2. run:

```bash
python3 scripts/validate_lang.py
```

3. if a package is needed, run:

```bash
bash scripts/build_release.sh
```

4. update `CHANGELOG.md`
5. publish or update a GitHub Release if appropriate

## Install Workflows

### macOS

Preferred:

```bash
bash scripts/install_macos.sh
```

Optional explicit path:

```bash
bash scripts/install_macos.sh "/Applications/Axure RP 11.app"
```

### Windows

Preferred:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install_windows.ps1
```

Optional explicit path:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install_windows.ps1 -AxureRoot "C:\Program Files (x86)\Axure\Axure RP 11"
```

## Validation Requirements

Every language-file change should at least preserve:

- placeholder count and order
- matching `<a>` and `</a>` tags

## Release Conventions

- Use `v<major>.<minor>` tags
- Put packaged artifacts in `dist/`
- Upload the zip package and `SHA256SUMS.txt` to GitHub Releases

## Do Not

- do not commit the Axure application bundle itself
- do not commit OS junk files or cache exports
- do not ask users to manually copy files unless the installer scripts cannot complete the task
