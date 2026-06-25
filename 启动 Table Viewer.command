#!/bin/bash
cd "$(dirname "$0")"
echo "Table Viewer 本地服务"
echo ""
echo "浏览器打开："
echo "  http://127.0.0.1:8000/index.html"
echo ""
echo "请保持此窗口打开。按 Ctrl+C 可停止服务。"
echo ""
if command -v python3 >/dev/null 2>&1; then
  python3 -m http.server 8000 --bind 127.0.0.1
elif command -v python >/dev/null 2>&1; then
  python -m http.server 8000 --bind 127.0.0.1
else
  echo "未找到 Python。请先安装 Python 3：https://www.python.org/downloads/"
  read -r -p "按回车键关闭…"
fi
