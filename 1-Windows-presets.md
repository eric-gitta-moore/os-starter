# Windows Presets

如无必要，勿增实体

## 必备软件
- 火绒、搜狗输入法、clash verge、chocolatey、chocolateygui、Windows 11 Classic Context Menu
- utools、FastGestures、powertoys（choco）、Ctrl2Cap（choco）
- windterm（choco）、python310（choco）、git（choco）
- vagrant（choco）、VMware workstation、virtualbox（choco）、WSL

## 必要设置
- 关闭防火墙、UAC
- 时钟显秒
- 休眠时间
- 卓越性能
- 显示语言英文，行政语言简体中文，删除注册表日文韩文
```
出处：https://zhuanlan.zhihu.com/p/502139239
1. 备份注册表 Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts
2. 删除 Microsoft JhengHei （繁中）开头的3个键、Malgun（韩文）开头的3个键和 Yu Gothic（日文） 开头的4个键
3. 重启
```

## 其他

[Chocolatey Software | Packages](https://community.chocolatey.org/packages)

WSL 配置一条龙：https://james-curtis.github.io/2023/ubuntu-setup-summary/
