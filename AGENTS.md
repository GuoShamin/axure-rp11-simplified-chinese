# Repository Guidelines

## 项目目标

这个仓库只做一件事：维护 `Axure RP 11` 的简体中文语言文件，并保证它可以被稳定替换进 Axure 的 `lang/default` 位置中使用。

## 关键文件

- `lang/default`：核心语言文件，UTF-16 编码，无后缀名
- `docs/install-guide-zh-CN.md`：给最终用户看的安装文档
- `README.md`：仓库首页说明
- `CHANGELOG.md`：版本记录
- `scripts/validate_lang.py`：结构校验脚本
- `scripts/build_release.sh`：打包脚本

## 编辑规则

1. 不要把 `lang/default` 改成 UTF-8、UTF-8 with BOM、GBK 或其他编码。
2. 不要给 `lang/default` 添加 `.txt`、`.json`、`.xml` 等后缀。
3. 修改翻译时，必须保留：
   - 原始占位符，如 `{0}`、`{1}`
   - 原始链接标签结构，如 `<a>...</a>`
   - 原始转义内容，如 `\n`、`\r\n`
4. 如果英文源文是 `component`，优先译为“组件”；如果英文源文是 `master`，再视上下文决定是否保留“母版”。
5. 不要往 UI 文案中插入署名、网址、推广文案或额外提示。

## 建议工作流

1. 修改 `lang/default`
2. 运行：

```bash
python3 scripts/validate_lang.py
```

3. 如果需要发版，运行：

```bash
bash scripts/build_release.sh
```

4. 更新 `CHANGELOG.md`
5. 提交并发布 GitHub Release

## 校验要求

每次修改语言文件后，至少确认下面两件事：

- 占位符数量和顺序没有被破坏
- `<a>` 与 `</a>` 标签数量仍然匹配

## 发布约定

- 版本号目前采用 `v主版本.次版本`
- Release 产物默认放在 `dist/`
- 推荐把 `dist/` 中的 zip 包和 `SHA256SUMS.txt` 上传到 GitHub Release

## 不要做的事

- 不要提交 Axure 应用本体
- 不要提交系统缓存文件
- 不要在仓库里塞入无关截图、下载器缓存或浏览器导出目录
