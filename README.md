# Axure RP 11 简体中文语言包

> 你可以将下面这个仓库链接复制给你的 agent，其会自动完成一切。

```text
https://github.com/GuoShamin/axure-rp11-simplified-chinese
```

这是一个面向 Axure RP 11 的非官方简体中文语言包仓库，包含清理后的 `lang/default` 文件，以及适合 agent 接手的安装、校验和打包能力。

README 撰写者：Codex（基于 GPT-5）  
当前仓库维护与汉化包整理修订：Evin

## 语言版本

- 中文默认入口：当前页面
- 英文说明：[README.en.md](./README.en.md)

## 项目说明

这个仓库提供的是一份面向 Axure RP 11 的简体中文界面语言文件，适合希望把 Axure 界面切换为中文的用户使用。

和常见社区流传版本相比，这一版重点做了这些整理：

- 移除了原包中的作者植入、外链宣传和插入式提示
- 修复了部分格式异常、坏链接标签和兼容性风险
- 统一了部分 RP 11 术语表达
- 替换了一批不自然、低质量或明显错误的中文文案

## 仓库结构

- `lang/default`：Axure RP 11 简体中文语言文件
- `README.en.md`：英文 README
- `AGENTS.md`：中文代理接手说明
- `AGENTS.en.md`：英文代理接手说明
- `CHANGELOG.md`：版本记录
- `docs/install-guide-zh-CN.md`：中文安装指南
- `docs/install-guide.md`：英文安装指南
- `scripts/validate_lang.py`：结构校验脚本
- `scripts/build_release.sh`：打包脚本
- `scripts/install_macos.sh`：macOS 安装脚本
- `scripts/install_windows.ps1`：Windows 安装脚本

## 适用范围

- Axure RP 11
- macOS
- Windows

说明：这是非官方语言包，与 Axure 官方无从属关系。

## Agent 优先使用方式

这个仓库已经尽量做成“把仓库链接直接给 agent，agent 就能接手完成配置”的形态。

一个合格的 agent 在接手后应当能够：

1. 阅读 `AGENTS.md`
2. 校验 `lang/default` 的结构完整性
3. 自动识别或接收 Axure 安装路径
4. 将 `lang/default` 安装到正确位置
5. 在需要时完成打包与发布

如果你是让 AI agent 或自动化流程来使用这个仓库，建议优先看 [AGENTS.md](./AGENTS.md)。如果 agent 更适合英文上下文，也可以看 [AGENTS.en.md](./AGENTS.en.md)。

## 快速开始

### 让 Agent 直接安装

macOS：

```bash
bash scripts/install_macos.sh
```

Windows PowerShell：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install_windows.ps1
```

### 手动安装

1. 完全退出 Axure RP 11。
2. 找到 Axure 的 `lang` 目录。
3. 用本仓库中的 `lang/default` 替换原文件。
4. 重新打开 Axure RP 11。

详细文档：

- 中文：[docs/install-guide-zh-CN.md](./docs/install-guide-zh-CN.md)
- 英文：[docs/install-guide.md](./docs/install-guide.md)

## 本地校验

```bash
python3 scripts/validate_lang.py
```

## 本地打包

```bash
bash scripts/build_release.sh
```

## Release 下载

如果你不想手动整理文件，可以直接在 GitHub Releases 页面下载打包好的版本文件。

## 注意事项

- Axure 更新后，语言文件可能会被覆盖，需要重新安装一次。
- 不同大版本之间不要混用语言文件。
- `lang/default` 是 UTF-16 文件，不要随意改编码或添加后缀名。
- 如果希望 agent 自动安装，优先让它执行仓库内提供的安装脚本。

## 免责声明

- 本仓库仅用于学习、交流和个人使用场景。
- `Axure`、`Axure RP` 及相关商标归其各自权利人所有。
- 如果你更在意稳定性或合规性，请优先关注 Axure 官方发布渠道。
