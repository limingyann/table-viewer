@echo off
setlocal
cd /d "%~dp0"
echo Table Viewer local server
echo.
echo Open this URL in your browser:
echo http://127.0.0.1:8000/index.html
echo.
echo Keep this window open while using Table Viewer.
echo Press Ctrl+C to stop the server.
echo.
python -m http.server 8000 --bind 127.0.0.1
