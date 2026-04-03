# Xynrin-kalilinux-auto

这是一个关于Kali Linux的自动化项目，通过一键脚本配置，提供快速的Kali环境和易用性。

## 项目简介

本项目的核心目标是为用户提供快速搭建和配置Kali Linux环境的方式。通过自动化脚本，简化安装和设置过程，让用户能够轻松获得一个功能完整的Kali环境。

## 功能特性

- **一键安装**: 使用 `install.sh` 脚本快速安装Kali Linux相关组件。
- **镜像配置**: 包含Kali镜像脚本 (`script/kali-mirror-image.sh`) 用于配置镜像源。
- **依赖管理**: `dependency/before-install.sh` 处理安装前的依赖。
- **版本更新**: 支持版本更新记录 (`update-version/`)。
- **配置管理**: 通过 `config.json` 管理项目配置。

## 快速使用
```
zsh <(curl -sL https://raw.githubusercontent.com/Xynrin/Xynrin-kalilinux-auto/refs/heads/main/install.sh)
```

## 使用方法

- 查看设计文档：`docks/design.md`
- 查看版本信息：`docks/about-version.md`
- 更新版本：参考 `update-version/` 目录

## 许可证

本项目采用 GNU General Public License v3.0 许可证。详情请见 [LICENSE](LICENSE) 文件。

## 贡献

欢迎提交 Issue 和 Pull Request 来改进本项目。

## 联系

如有问题，请通过 GitHub Issues 联系。
