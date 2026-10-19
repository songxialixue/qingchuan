# 轻传工作目录

- 本项目后续只在 `7_qingchuan` 开发。以前的项目目录是只读完整备份，不修改、不删除，也不把旧产物当作当前构建输出。
- 保留既有功能、界面、交互、0.31 版本、应用身份和用户数据；不要因迁移重新设计或大范围重构。
- 构建使用相对项目路径；机器 SDK/JDK 由 `.local/build.json` 或环境变量配置。原签名及 DPAPI 文件属于必要私有依赖，不是缓存，不打印凭据、不放入源码分发包。
- Windows：`scripts/build-windows.ps1`，启动 `Start-Qingchuan.cmd`；Android：`scripts/build-android.ps1`。实际验证需 USB 实体手机，覆盖安装只用 `adb install -r`，不得清除用户数据。
- 构建日志、测试数据和新产物放在 `artifacts`；不把编译通过等同于功能实测通过。未经本轮要求不额外生成安装包。
