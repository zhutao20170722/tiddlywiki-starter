#!/bin/bash
# 进入脚本所在目录
cd "$(dirname "$0")"

# 启动 Node.js 版 TiddlyWiki
npm run serve

# 自动在浏览器打开（可选）
open "http://localhost:8080"
