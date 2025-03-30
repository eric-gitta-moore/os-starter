# 全部都放在 $PROFILE.CurrentUserAllHosts 文件里面就 ok

Set-Alias -Name l -Value Get-ChildItem

if (Test-Path $env:ChocolateyInstall\helpers\chocolateyProfile.psm1) {
    Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
}


#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
If (Test-Path "C:\Users\admin\scoop\apps\miniconda3\current\Scripts\conda.exe") {
    (& "C:\Users\admin\scoop\apps\miniconda3\current\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
}
#endregion


# 顺序不能乱，需要在 conda 之后，不然出现两个 (base)
oh-my-posh init pwsh --config $HOME\Documents\PowerShell\powerlevel10k_rainbow.omp.json | Invoke-Expression

