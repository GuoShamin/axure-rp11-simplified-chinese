# Axure RP 11 简体中文安装教程

本文适用于本仓库中的 `lang/default` 文件。

## macOS 安装步骤

1. 完全退出 `Axure RP 11`。
2. 打开“应用程序”目录，找到 `Axure RP 11.app`。
3. 右键应用，选择“显示包内容”。
4. 进入目录：

```text
/Applications/Axure RP 11.app/Contents/MacOS/lang/
```

5. 将本仓库中的 `lang/default` 复制到上面的目录中。
6. 当系统提示替换时，选择替换原文件。
7. 重新打开 `Axure RP 11`，界面应切换为简体中文。

## Windows 安装步骤

1. 完全退出 `Axure RP 11`。
2. 打开 Axure 安装目录，常见路径类似：

```text
C:\Program Files (x86)\Axure\Axure RP 11\lang\
```

3. 将本仓库中的 `lang/default` 复制到该目录。
4. 替换原有 `default` 文件。
5. 重新打开 `Axure RP 11`。

## 更新后失效怎么办

如果 Axure 进行了版本更新，安装程序可能会覆盖原有语言文件。遇到这种情况时，只需要重新执行一次替换操作即可。

## 常见问题

### 1. 替换后没有生效

- 确认 Axure 已经彻底退出后再替换
- 确认替换的是目标安装目录下的 `lang/default`
- 重新启动 Axure 后再观察界面变化

### 2. 替换后出现异常

- 先恢复原始 `default` 文件
- 确认你使用的是 `Axure RP 11`
- 如果是更新后首次替换，建议先打开一次 Axure 再重新覆盖

### 3. macOS 找不到目录

请确认你进入的是应用包内部，而不是普通文件夹。正确方式是对 `Axure RP 11.app` 使用“显示包内容”。

## 文件说明

- 文件名：`default`
- 编码：UTF-16
- 位置：`lang` 目录内

不要自行给它添加 `.txt`、`.json` 或其他后缀名，否则 Axure 可能无法识别。
