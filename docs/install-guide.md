# Axure RP 11 Installation Guide

This guide applies to the `lang/default` file shipped in this repository.

## Agent-Driven Install

If you are using an agent, prefer the repository scripts instead of manual copy steps.

macOS:

```bash
bash scripts/install_macos.sh
```

Windows PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install_windows.ps1
```

## macOS Manual Install

1. Fully quit `Axure RP 11`.
2. Open the `Applications` folder and locate `Axure RP 11.app`.
3. Right-click the app and choose `Show Package Contents`.
4. Open this directory:

```text
/Applications/Axure RP 11.app/Contents/MacOS/lang/
```

5. Copy this repository's `lang/default` into that folder.
6. Replace the existing `default` file when prompted.
7. Reopen `Axure RP 11`.

## Windows Manual Install

1. Fully quit `Axure RP 11`.
2. Open the Axure installation directory. A common path is:

```text
C:\Program Files (x86)\Axure\Axure RP 11\lang\
```

3. Copy this repository's `lang/default` into that folder.
4. Replace the existing `default` file.
5. Reopen `Axure RP 11`.

## What To Do After Axure Updates

Axure updates may overwrite the language file. If that happens, rerun the installer script or replace the file again.

## Troubleshooting

### The interface did not change

- confirm Axure was fully closed before replacement
- confirm you replaced the `lang/default` inside the real Axure install directory
- restart Axure after the replacement

### The replacement caused issues

- restore the original `default` file if needed
- verify that you are using `Axure RP 11`
- if this is the first replacement after an Axure update, launch Axure once and try again

### macOS package path not found

Make sure you are opening the app bundle contents, not a regular folder. Use `Show Package Contents` on `Axure RP 11.app`.

## File Details

- file name: `default`
- encoding: UTF-16
- location: inside the `lang` directory

Do not add `.txt`, `.json`, or any other extension to the file.
