@echo off
chcp 65001 >nul
cd /d "%~dp0"
set PORT=8765
title Table Viewer
echo.
echo 正在启动 Table Viewer，请稍候...
echo.

set PY_CMD=
where py >nul 2>&1 && set PY_CMD=py
if not defined PY_CMD where python >nul 2>&1 && set PY_CMD=python
if not defined PY_CMD where python3 >nul 2>&1 && set PY_CMD=python3

if defined PY_CMD (
  start "" "http://127.0.0.1:%PORT%/index.html"
  echo 浏览器将自动打开。若未打开，请手动访问:
  echo   http://127.0.0.1:%PORT%/index.html
  echo.
  echo 请保持此窗口打开。关闭窗口即停止服务。
  echo.
  %PY_CMD% -m http.server %PORT% --bind 127.0.0.1
) else (
  echo 未检测到 Python，改为直接打开 index.html ...
  start "" "%~dp0index.html"
  echo.
  echo 若页面空白，请安装 Python 后重新双击本文件。
  echo 下载: https://www.python.org/downloads/
  pause
)
