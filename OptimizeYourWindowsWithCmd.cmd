:: Windows cmd 读取本文件，假设其字符集是ANSI。
::所以如果你发现运行看起来怪怪的，请确保使用正确的字符集
@cls
@echo off

REM fsutil>nul
REM if errorlevel 1 (
  REM echo 请以管理员权限运行本脚本！
  REM echo PS：右键击本脚本，并点击“以管理员身份运行（A）”。
  REM pause>nul
  REM exit
REM )

::启用迟延变量扩展
setlocal enabledelayedexpansion

::此部分是清理我觉得不需要的Windows服务。
::Windows下管理服务的工具是sc
for /f "eol=#" %%I in (server.txt) do (
  sc query %%I
  REM if errorlevel 1 (
    REM echo 服务%%I不存在。
    REM goto continue
  REM )
  sc stop %%I
  REM if errorlevel 1 (
    REM echo 停止服务%%I失败！
    REM goto continue
  REM )
  sc delete %%I
  REM if errorlevel 1 (
    REM echo 删除服务%%I失败！
    REM goto continue
  REM )
)

pause