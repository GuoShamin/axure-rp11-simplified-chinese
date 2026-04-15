# Axure RP 11 Simplified Chinese

Axure RP 11 的非官方简体中文语言包，包含清理后的 `lang/default` 文件、安装教程，以及面向代理协作的维护说明与校验脚本。

README 撰写者：Codex（基于 GPT-5）  
当前仓库维护与汉化包整理修订：Evin

## 项目说明

这个仓库提供的是一份面向 Axure RP 11 的简体中文界面语言文件，适合希望把 Axure 界面切换为中文的用户使用。

和常见社区流传版本相比，这一版重点做了这些整理：

- 移除了原包中的作者植入、外链宣传和插入式提示
- 修复了部分格式异常、坏链接标签和明显兼容性问题
- 统一了部分 RP 11 术语表达
- 替换了一批不自然、错译或明显低质量的中文文案

## 仓库结构

- `lang/default`：Axure RP 11 简体中文语言文件
- `docs/install-guide-zh-CN.md`：安装与替换教程
- `AGENTS.md`：面向代理协作者的仓库操作说明
- `CHANGELOG.md`：版本变更记录
- `scripts/validate_lang.py`：语言文件结构校验脚本
- `scripts/build_release.sh`：Release 打包脚本

## 适用范围

- Axure RP 11
- macOS
- Windows

说明：
这是非官方汉化包，与 Axure 官方无从属关系。

## 快速安装

1. 完全退出 Axure RP 11。
2. 找到 Axure 的语言目录。
3. 用本仓库中的 `lang/default` 替换原文件。
4. 重新打开 Axure RP 11。

详细步骤请看：[安装教程](./docs/install-guide-zh-CN.md)

## Release 下载

如果你不想手动整理文件，可以直接在 GitHub Releases 页面下载打包好的版本文件。

## 面向代理协作

这个仓库已经尽量做成 agent-friendly：

- 根目录提供 `AGENTS.md`，说明关键文件、约束和发布流程
- 提供 `scripts/validate_lang.py` 用于校验占位符和链接标签是否被改坏
- 提供 `scripts/build_release.sh` 用于标准化打包产物

如果你是让 AI agent 或自动化脚本维护这个仓库，建议先阅读 [AGENTS.md](./AGENTS.md)。

## 本地校验

```bash
python3 scripts/validate_lang.py
```

## 本地打包

```bash
bash scripts/build_release.sh
```

## 注意事项

- Axure 更新后，语言文件可能会被覆盖，需要重新替换一次。
- 不同大版本之间不要混用语言文件。
- `lang/default` 是 UTF-16 文件，不要随意改编码或添加后缀名。
- 这是对社区版本做清理与修订后的非官方包，建议在替换前自行确认当前 Axure 版本。

## 免责声明

- 本仓库仅用于学习、交流和个人使用场景。
- `Axure`、`Axure RP` 及相关商标归其各自权利人所有。
- 如果你更在意稳定性或合规性，请优先关注 Axure 官方发布渠道。
