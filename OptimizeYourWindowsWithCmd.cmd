@cls
@echo off

fsutil>nul
if errorlevel 1 (
  echo 请以管理员权限运行本脚本！
  echo PS：右键击本脚本，并点击“以管理员身份运行（A）”。
  pause>nul
  exit
)
