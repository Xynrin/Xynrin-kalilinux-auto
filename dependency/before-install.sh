#!/bin/bash

# 更新软件源并安装必备工具
sudo apt update -y && sudo apt install git curl wget vim nano -y

# 获取当前时间
use_time=$(date +%Y-%m-%d-%H-%M-%S)

# 定义日志目录和日志文件路径
LOG_DIR="$HOME/Xynrin-kalilinux-auto/logs"
LOG_FILE="$LOG_DIR/before-install.log"


# 写入成功日志
echo "[$use_time] [SUCCEED] Installed dependencies: git curl wget vim nano" >> "$LOG_FILE"