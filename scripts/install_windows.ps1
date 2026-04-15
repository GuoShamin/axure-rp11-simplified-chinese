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
    throw "Axure RP 11 installation directory was not found. Please pass -AxureRoot explicitly."
}

$TargetFile = Join-Path $AxureRoot "lang\\default"

if (!(Test-Path $TargetFile)) {
    throw "Target language file not found: $TargetFile"
}

Copy-Item $SourceFile $TargetFile -Force

Write-Host "Installation completed: $TargetFile"
Write-Host "Please fully quit Axure RP 11 and reopen it."
