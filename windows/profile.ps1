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


Invoke-Expression (&starship init powershell)
