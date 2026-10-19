@echo off
if not exist "%~dp0artifacts\windows\TransferLab.Windows.exe" (
  echo Please build first: powershell -NoProfile -ExecutionPolicy RemoteSigned -File scripts\build-windows.ps1
  pause
  exit /b 1
)
start "" "%~dp0artifacts\windows\TransferLab.Windows.exe"
