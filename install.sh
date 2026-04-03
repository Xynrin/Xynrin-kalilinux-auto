#!/bin/bash
# this script is used to auto configuration your kali linux.
# Author: Xynrin
# LICENSE: GPL-V3


# 全局配置
code_name="Xynrin-kalilinux-auto"
github_name="Xynrin"                                                                                                                                      # github用户名
github_master="main"                                                                                                                                      # 仓库分支，默认为main
git_clone_github_url="https://github.com/${github_name}/${code_name}.git"                                                                # 克隆仓库的URL
BASE_URL="https://raw.githubusercontent.com/${github_name}/${code_name}/${github_master}"                                                # 代码仓库的基础URL，用于后续下载脚本和依赖



# 克隆仓库
git clone ${git_clone_github_url} ~/${code_name} && echo "克隆仓库成功: ${git_clone_github_url}" || { echo "克隆仓库失败: ${git_clone_github_url}"; exit 1; }
cd ~/${code_name} 


# 自动执行换源脚本和安装依赖脚本
echo "1" | bash  script/kali-mirror-image.sh && bash  dependency/before-install.sh
