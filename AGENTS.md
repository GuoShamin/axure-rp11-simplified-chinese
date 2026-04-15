# 仓库协作规范

## 项目目标

这个仓库只做一件事：维护 Axure RP 11 的非官方简体中文语言文件，并保证它易于安装、校验、打包，以及被 agent 接手。

## Agent 快速开始

如果用户把这个仓库链接直接交给 agent，agent 默认应按下面顺序处理：

1. 阅读本文件
2. 运行 `python3 scripts/validate_lang.py`
3. 如果用户目标是安装：
   - macOS：优先执行 `bash scripts/install_macos.sh`
   - Windows：优先执行 `powershell -ExecutionPolicy Bypass -File .\scripts\install_windows.ps1`
4. 如果用户目标是打包发版：
   - 运行 `bash scripts/build_release.sh`
   - 上传 `dist/` 下的产物到 GitHub Releases

除非自动探测失败，否则不要默认让用户手动去找 `lang/default` 目标路径。

## 关键文件

- `lang/default`：核心 UTF-16 语言文件，无后缀
- `README.md`：中文默认首页
- `README.en.md`：英文首页
- `docs/install-guide-zh-CN.md`：中文安装指南
- `docs/install-guide.md`：英文安装指南
- `CHANGELOG.md`：版本记录
- `scripts/validate_lang.py`：结构校验脚本
- `scripts/build_release.sh`：打包脚本
- `scripts/install_macos.sh`：macOS 安装脚本
- `scripts/install_windows.ps1`：Windows 安装脚本

## 编辑规则

1. 不要把 `lang/default` 改成 UTF-8、UTF-8 with BOM、GBK 或其他编码。
2. 不要给 `lang/default` 添加 `.txt`、`.json`、`.xml` 等后缀。
3. 修改翻译时，必须保留：
   - 原始占位符，如 `{0}`、`{1}`
   - 原始链接标签结构，如 `<a>...</a>`
   - 原始转义内容，如 `\n`、`\r\n`
4. 如果英文源文是 `component`，优先按 RP 11 的“组件”概念处理，不要随意回退成旧版术语。
5. 不要往 UI 文案中插入署名、网址、推广文案或额外提示。

## 推荐工作流

1. 修改 `lang/default`
2. 运行：

```bash
python3 scripts/validate_lang.py
```

3. 如果需要打包：

```bash
bash scripts/build_release.sh
```

4. 更新 `CHANGELOG.md`
5. 按需发布或更新 GitHub Release

## 安装工作流

### macOS

优先使用：

```bash
bash scripts/install_macos.sh
```

可选显式路径：

```bash
bash scripts/install_macos.sh "/Applications/Axure RP 11.app"
```

### Windows

优先使用：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install_windows.ps1
```

可选显式路径：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install_windows.ps1 -AxureRoot "C:\Program Files (x86)\Axure\Axure RP 11"
```

## 校验要求

每次改动语言文件后，至少确认：

- 占位符数量和顺序没有被破坏
- `<a>` 与 `</a>` 标签数量依然匹配

## 发布约定

- 使用 `v<major>.<minor>` 风格标签
- 打包产物放在 `dist/`
- 将 zip 包和 `SHA256SUMS.txt` 上传到 GitHub Releases

## 不要做的事

- 不要提交 Axure 应用本体
- 不要提交系统垃圾文件或缓存导出目录
- 除非安装脚本无法完成任务，否则不要默认让用户手动复制文件
