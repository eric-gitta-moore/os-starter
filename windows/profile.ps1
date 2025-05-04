# 全部都放在 $PROFILE.CurrentUserAllHosts 文件里面就 ok

# alias refreshenv
Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
Import-Module syntax-highlighting

#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
function CondaInit { (& "$HOME\scoop\apps\miniconda3\current\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ? { $_ } | Invoke-Expression }
#endregion
$env:PYTHONUTF8=1 # 修复 codna 报错 UnicodeEncodeError

# 执行下面，不然 conda 的 env 会加载 starship 前面
# conda config --set changeps1 false  
Invoke-Expression (&starship init powershell)

# 必须要在 starship 后面，不然不生效
Invoke-Expression (& { (lua $HOME\scoop\apps\z.lua\current\z.lua --init powershell echo once enhanced) -join "`n" })

# fnm
fnm env --use-on-cd | Out-String | Invoke-Expression
# fvm
$env:PATH = "$HOME\scoop\apps\fvm\current\default\bin;" + $env:PATH
# rustup
$env:PATH = "$HOME\scoop\apps\rustup\current\.cargo\bin;" + $env:PATH
$env:CARGO_HOME = "$HOME\scoop\apps\rustup\current\.cargo"
# gobin
$env:PATH = "$HOME\go\bin;" + $env:PATH


# alias
Set-Alias -Name l -Value Get-ChildItem
function cd~ { Set-Location ~ }
function cd.. { Set-Location .. }
Set-Alias -Name ~ -Value cd~
Set-Alias -Name .. -Value cd..

function gitc { git config user.email "EricGittaMoore@duck.com"; git config user.name "Eric Moore" }
# https://stackoverflow.com/questions/29266622/how-to-run-exe-with-without-elevated-privileges-from-powershell
function isAdministrator { echo $(if ((new-object System.Security.Principal.WindowsPrincipal([System.Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)) { "Yes we are running elevated." } else { "No this is a normal user session." }) }
function toGeneralUser { runas /trustlevel:0x20000 pwsh }

