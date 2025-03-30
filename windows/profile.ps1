# 全部都放在 $PROFILE.CurrentUserAllHosts 文件里面就 ok

Set-Alias -Name l -Value Get-ChildItem

if (Test-Path $env:ChocolateyInstall\helpers\chocolateyProfile.psm1) {
    Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
}

# conda config --set auto_activate_base false
# conda config --set changeps1 false
#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
function Use-Conda {
    param (
        [string] $Activate
    )
    
    $CondaExe = "C:\Users\admin\scoop\apps\miniconda3\current\Scripts\conda.exe"
    If (Test-Path $CondaExe) {
        (& $CondaExe "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
        
        if ($Activate) {
            conda activate $Activate
        }
    }
}
#endregion

Invoke-Expression (&starship init powershell)
