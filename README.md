# Table Viewer · 台球题目编辑器

在线打开即可使用，无需安装 Python。

## 在线使用（推荐）

**https://limingyann.github.io/table-viewer/**

用 Chrome 或 Edge 打开。打开后自动加载题目与桌台背景，无需点「目录」。

## 本地使用

```bash
cd delivery/table-viewer
python3 -m http.server 8765 --bind 127.0.0.1
# 浏览器打开 http://127.0.0.1:8765/
```

Mac 也可双击 `打开 Table Viewer.command`；Windows 双击 `打开 Table Viewer.bat`。

## 保存说明

- **在线链接**：编辑后点「保存」会下载 JSON 到「下载」文件夹
- **本地 + 选目录**：点「目录」授权后，可写回 `courses/` 文件夹（Chrome/Edge）

## GitHub 仓库

https://github.com/limingyann/table-viewer
