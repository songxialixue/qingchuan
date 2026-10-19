# 轻传 0.32.1

Windows 与 Android 的局域网文件传输、设备聊天、授权共享和协同工具。正式程序是原生 WinForms / Android 实现；`design/qingchuan` 是同步保留的交互设计。
1. 设备连接：局域网发现、扫码配对、多设备连接、P2P极速直连、可信设备管理。
2. 文件互传：文件、文件夹、图片、文字双向传输，支持拖拽、暂停续传、失败重试及历史记录。
3. 共享文件夹：跨设备浏览、上传下载，支持只读、读写、完全控制权限。
4. 协同工具：触控板、遥控电脑、手机投屏与控制、实物展台、白板、扩展屏。
5. 截图工具：截图标注、贴图、离线OCR、二维码识别、发送到设备。
6. 设置管理：自动接收、设备授权、后台运行、接收目录及记录管理。

## 从这里开始

- Windows 和 Android 从本目录构建；旧项目仅作为只读备份。
- Windows 双击 `Start-Qingchuan.cmd`，运行 `artifacts/windows/TransferLab.Windows.exe`；保留同目录 DLL 和 Components，开发运行使用本机 .NET 8 Desktop Runtime。
- Android 新构建位于 `artifacts/android/Qingchuan.apk`，使用原有签名，包名仍为 `lab.transfer.app`，版本码 42、版本名 0.32.1。覆盖安装保留原有数据。
- 开发与构建见 [development.md](docs/development.md)，本轮验证状态见 [release-0.32.1.md](docs/release-0.32.1.md)。正式产物与独立源码包位于 `artifacts/release/0.32.1`，是否可发布以验证状态为准。

## 项目组成

`src/windows` 包含 UI、传输核心、连接模块、临时扩展显示器 C++ 桥接及测试；`src/android` 包含 Java 协议核心、正式应用及资源；`tests/android-ui` 是独立签名的实体机测试工程。

`scripts` 为构建、驱动准备和验证脚本；`third_party` 保存离线依赖、原始许可证、ADB 和已签名显示驱动；`tools/inno` 是安装程序编译工具。`design/references` 保留历轮用户提供的参考图片。

Windows 设置、聊天和身份继续使用原应用数据目录；Android 沿用原私有目录、AndroidKeyStore、接收目录与已有 SAF 授权。移动项目不迁移或重置用户数据。清空历史仍只清记录。

扩展屏只在用户主动进入并获手机授权后建立，创建和释放轻传自己的临时显示器。安装程序仅准备签名驱动，不创建常驻显示器，也不修改已有物理显示器配置。无线、USB 与快捷入口共用现有会话实现。

## 源码包

Windows 包包含全部 Windows 源码、C++ 桥接、离线 NuGet 包、驱动、ADB、安装工具和测试所需 Java 协议代码。Android 包包含完整 Java 应用、协议、资源、测试和 ZXing 依赖。两包均保留 Design。

源码包不含缓存、日志、产物或私有签名凭据。独立开发机仍需安装相应 SDK；Android 正式覆盖升级必须使用原签名密钥。当前工作副本 `.local` 中保留原密钥与当前用户 DPAPI 加密配置，不应公开分发该目录。
