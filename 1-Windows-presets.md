# Windows Presets

如无必要，勿增实体

## 必备软件
- 火绒、Process Lasso
- chocolatey、Scoop
- utools、FastGestures、powertoys、Ctrl2Cap、AutoHotKey (垃圾鼠标改侧键必备)、autoruns 查开机自启的、Geek
- ~~QuickLook~~ (PowerToys 也有了)、OpenHashTab
- 网络调试
  - NETworkManager
  - tcpview64.exe

## 必要设置
- **Windows11 轻松设置** 禁用不该存在的东西
- ~~卓越性能~~，改用 Process Lasso 提供的 `Bitsum Highest Performance`
- ~~显示语言英文，行政语言简体中文，[删除注册表日文韩文](https://zhuanlan.zhihu.com/p/502139239)~~
- 关闭 Windows Defender
- 卸载 MSPCManager (微软电脑管家)
- 删除 Microsoft Copilot
- 文本服务和输入语言 - 改掉 Ctrl+Space 热键占用
- 微软拼音禁用 ctrl+space，关闭繁体切换，再删除微软拼音
- gpedit 配置 win+r `使用管理员权限创建此任务`

## runtime 补丁
- 微软常用运行库合集 - 果核剥壳
- 微软.NET离线运行库合集 - 果核剥壳
- VisualCppRedist(运行库合集)  - 果核剥壳

## 其他
- [DCI-P3 广色域屏 Webkit-logo-P3 测试图](https://v2ex.com/t/622454#r_16034770)

### WSL
- WSL 配置一条龙：https://eric-gitta-moore.github.io/2023/ubuntu-setup-summary/
- [hyper-v 随机保留端口号剔除](https://juejin.cn/post/7214854106179321911)
- [禁止 Zone.Identifier](https://github.com/microsoft/WSL/issues/7456#issuecomment-1172877312)

### Office
- [Office Tool Plus](https://otp.landian.vip/zh-cn/)
- 激活
  - [HEU_KMS_Activator](https://github.com/zbezj/HEU_KMS_Activator/releases)
  - [Microsoft-Activation-Scripts](https://github.com/massgravel/Microsoft-Activation-Scripts)

### Adobe
- [GenP Wiki](https://www.reddit.com/r/GenP/wiki/index/)
- [破解方式有哪些](https://www.reddit.com/r/GenP/wiki/patchmethods/)


## pwsh 入门
- 确保 choco、scoop 已经安装
- 安装/更新 winget 到最新版
  - [参考](https://github.com/microsoft/winget-cli/discussions/4100)
- 升级到 pwsh7
  - [参考](https://learn.microsoft.com/zh-cn/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.4#winget)
- [Nerd Fonts Installer](https://github.com/ryanoasis/nerd-fonts)
- ~~oh-my-posh + powerlevel10k_rainbow~~ (说实话有点卡)
- starship
- Sysinternals Suit
  - `winget install Microsoft.Sysinternals`
- [profile.ps1](./windows/profile.ps1) 参考
  - pwsh Module pwsh-syntax-highlighting

其他必备 command
- [Windows 下的 GNU/Linux 命令行工具](https://www.fournoas.com/posts/gnu-and-linux-command-line-tools-for-windows)
  - [页面备份](https://web.archive.org/web/20250329181455/https://www.fournoas.com/posts/gnu-and-linux-command-line-tools-for-windows/)
- scoop: exiftool
- scoop: gsudo
- scoop: fvm
- scoop: mkcert
- scoop: tcping
- scoop: httping
- scoop: tre-command
- scoop: fastfetch
- scoop: lua
- scoop: z.lua
