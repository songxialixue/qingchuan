# 轻传 0.32.1 开发入口

唯一工作目录：`C:\Users\LYS\Desktop\7_qingchuan`。原项目只作为备份，不从原目录构建或启动。

- Windows：双击 `Start-Qingchuan.cmd`，运行本目录重新编译的 `artifacts/windows/TransferLab.Windows.exe`，保留完整同目录 DLL 和 Components。
- Android：本目录 `artifacts/android/Qingchuan.apk`，使用原签名覆盖安装，保留应用数据和授权。
- Design：双击 `Start-Qingchuan-Design.cmd`。
- 首次构建：`powershell -NoProfile -ExecutionPolicy RemoteSigned -File scripts/build-windows.ps1`；Android 对应 `scripts/build-android.ps1`。
- 配置及原签名位于私有 `.local`，机器 SDK/JDK 配置由 `scripts/Build.Common.ps1` 读取；依赖使用项目内 `third_party`。不要公开分发 `.local`，不要更换签名或清空应用数据。

详细命令见 [开发说明](docs/development.md)。本轮准备 0.32.1，运行 `scripts/build-release.ps1` 生成 `artifacts/release/0.32.1` 下的安装程序和源码包。功能及发布验证状态见 [release-0.32.1.md](docs/release-0.32.1.md)，构建成功不代表功能验证通过。
