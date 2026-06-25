#!/bin/bash
cd "$(dirname "$0")"
PORT=8765
echo ""
echo "正在启动 Table Viewer，请稍候..."
echo ""

if command -v python3 >/dev/null 2>&1; then
  python3 -m http.server "$PORT" --bind 127.0.0.1 &
elif command -v python >/dev/null 2>&1; then
  python -m http.server "$PORT" --bind 127.0.0.1 &
else
  echo "未找到 Python，改为直接打开 index.html"
  open "index.html"
  read -r -p "按回车键关闭…"
  exit 1
fi

sleep 1
open "http://127.0.0.1:$PORT/index.html"
echo ""
echo "浏览器已打开。请保持此窗口打开，关闭即停止服务。"
echo "若未自动打开，请访问: http://127.0.0.1:$PORT/index.html"
wait
