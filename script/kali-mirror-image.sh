#!/bin/bash

echo -e "\033[36m========================================\033[0m"
echo -e "\033[32m       Kali Linux 智能一键换源脚本      \033[0m"
echo -e "\033[36m========================================\033[0m"
echo "  1. 清华大学源 (最稳定，强烈推荐)"
echo "  2. 阿里云源   (国内速度最快)"
echo "  3. 中科大源   (老牌稳定)"
echo "  4. 腾讯云源   (适合南方网络)"
echo "  5. 华为云源   (备选源)"
echo "  6. 恢复 Kali 官方源"
echo -e "\033[36m========================================\033[0m"

read -p "请输入对应数字 (1-6) 并回车: " choice

case $choice in
    1) url="https://mirrors.tuna.tsinghua.edu.cn/kali"; name="清华大学源" ;;
    2) url="https://mirrors.aliyun.com/kali"; name="阿里云源" ;;
    3) url="https://mirrors.ustc.edu.cn/kali"; name="中科大源" ;;
    4) url="https://mirrors.cloud.tencent.com/kali"; name="腾讯云源" ;;
    5) url="https://repo.huaweicloud.com/kali"; name="华为云源" ;;
    6) url="http://http.kali.org/kali"; name="Kali 官方源" ;;
    *) echo -e "\033[31m输入错误，已退出。\033[0m"; exit 1 ;;
esac

echo -e "\n\033[33m[1/3] 正在备份原配置文件...\033[0m"
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
echo "备份成功：/etc/apt/sources.list.bak"

echo -e "\n\033[33m[2/3] 正在写入新镜像源...\033[0m"
echo "deb $url kali-rolling main contrib non-free non-free-firmware" | sudo tee /etc/apt/sources.list > /dev/null
echo "成功切换至: $name ($url)"

echo -e "\n\033[33m[3/3] 正在更新软件列表...\033[0m"
sudo apt update

echo -e "\n\033[32m🎉 换源并更新列表成功！\033[0m"
read -p "是否需要立即升级系统所有软件？(耗时较长) [y/N]: " upgrade_choice
if [[ "$upgrade_choice" == "y" || "$upgrade_choice" == "Y" ]]; then
    sudo apt upgrade -y && echo -e "\n \033[32m🎉 系统升级完成！\033[0m"
else
    echo "已跳过升级，您可以随时输入 sudo apt upgrade 进行手动升级。"
fi
