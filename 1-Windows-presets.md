# Windows Presets

如无必要，勿增实体

## 必备软件
- 火绒、Process Lasso
- chocolatey、Scoop、Windows 11 Classic Context Menu
- utools、FastGestures、powertoys、Ctrl2Cap、AutoHotKey (垃圾鼠标改侧键必备)、autoruns 查开机自启的、Geek
- conda、git、7zip、bandizip
- ~~vagrant、VMware workstation、virtualbox、WSL~~
- ~~QuickLook~~ (PowerToys 可以替代了)、OpenHashTab
- 网络调试
  - NETworkManager

## 必要设置
- ~~卓越性能~~，改用 Process Lasso 提供的 `Bitsum Highest Performance`
- ~~显示语言英文，行政语言简体中文，[删除注册表日文韩文](https://zhuanlan.zhihu.com/p/502139239)~~
- Defender Control 关闭 Windows Defender (不然编译 golang 会被防病毒卡死)
- 卸载 MSPCManager (微软电脑管家)，编译时候扫文件抢了 CPU
- 删除 Microsoft Copilot
- 文本服务和输入语言 - 改掉 Ctrl+Space 热键占用
- 微软拼音禁用 ctrl+space，关闭繁体切换，再删除微软拼音

## 其他
- [Chocolatey Software | Packages](https://community.chocolatey.org/packages)

### WSL
- WSL 配置一条龙：https://eric-gitta-moore.github.io/2023/ubuntu-setup-summary/
- [hyper-v 随机保留端口号剔除](https://juejin.cn/post/7214854106179321911)
- [禁止 Zone.Identifier](https://github.com/microsoft/WSL/issues/7456#issuecomment-1172877312)

### Office
- [Office Tool Plus](https://otp.landian.vip/zh-cn/)
- 激活
  - [Windows / Office 激活](https://github.com/zbezj/HEU_KMS_Activator/releases)
  - https://github.com/massgravel/Microsoft-Activation-Scripts

### Adobe
- [GenP Wiki](https://www.reddit.com/r/GenP/wiki/index/)
- [破解方式有哪些](https://www.reddit.com/r/GenP/wiki/patchmethods/)

## 吐槽
- 说 windows 也可以开发的试试，不改代码跑一下这个。只能在 git-bash、MSYS2 之类的 POSIX shell 运行
  - https://github.com/VisActor/VRender/blob/b9dbbe081171bdfcf2677f6e6c4dbe01fee51c99/tools/bundler/package.json#L18
  - 也可以配置，就是太麻烦了。以前也喜欢折腾，但是如果换电脑比较频繁，感觉还是耗不起这个时间，罢了用 WSL2
    - [MSYS2 和 mintty 打造 Windows 下 Linux 工具体验](https://creaink.github.io/post/Computer/Windows/win-msys2.html)
