Set-Alias -Name l -Value Get-ChildItem
Set-Alias -Name which -Value gcm

# 需要自行写入到 profile 文件里面，具体路径 敲命令回车会显示: $PROFILE
if (Test-Path $env:ChocolateyInstall\helpers\chocolateyProfile.psm1) {
    Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
}

oh-my-posh init pwsh --config https://github.com/JanDeDobbeleer/oh-my-posh/raw/main/themes/powerlevel10k_rainbow.omp.json | Invoke-Expression

function Get-DirName {
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$Path
    )
    return Split-Path -Path $Path -Parent
}

Set-Alias -Name dirname -Value Get-DirName
