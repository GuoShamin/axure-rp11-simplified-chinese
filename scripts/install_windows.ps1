param(
    [string]$AxureRoot = ""
)

$ErrorActionPreference = "Stop"

$RootDir = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$SourceFile = Join-Path $RootDir "lang\\default"

if ([string]::IsNullOrWhiteSpace($AxureRoot)) {
    $Candidates = @(
        "C:\\Program Files (x86)\\Axure\\Axure RP 11",
        "C:\\Program Files\\Axure\\Axure RP 11"
    )

    foreach ($Candidate in $Candidates) {
        if (Test-Path $Candidate) {
            $AxureRoot = $Candidate
            break
        }
    }
}

if ([string]::IsNullOrWhiteSpace($AxureRoot)) {
    throw "未找到 Axure RP 11 安装目录，请使用 -AxureRoot 显式传入。"
}

$TargetFile = Join-Path $AxureRoot "lang\\default"

if (!(Test-Path $TargetFile)) {
    throw "目标语言文件不存在：$TargetFile"
}

Copy-Item $SourceFile $TargetFile -Force

Write-Host "安装完成：$TargetFile"
Write-Host "请完全退出 Axure RP 11 后重新打开。"
