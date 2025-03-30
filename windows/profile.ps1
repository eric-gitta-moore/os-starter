# 全部都放在 $PROFILE.CurrentUserAllHosts 文件里面就 ok

# alias refreshenv
Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1

#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
function CondaInit {
    (& "C:\Users\admin\scoop\apps\miniconda3\current\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
}
#endregion

# 执行下面，不然 conda 的 env 会加载 starship 前面
# conda config --set changeps1 false
Invoke-Expression (&starship init powershell)

# 必须要在 starship 后面，不然不生效
Invoke-Expression (& { (lua C:\Users\admin\scoop\apps\z.lua\current\z.lua --init powershell echo once enhanced) -join "`n" })

# alias
Set-Alias -Name l -Value Get-ChildItem
function gitc { 
    git config user.email "EricGittaMoore@duck.com"; git config user.name "Eric Moore"
}
