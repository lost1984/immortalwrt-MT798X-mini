
---

# MT798X 固件炼丹炉：一键成砖大师 (24.10)

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/ccaicjoy/https://github.com/ccaicjoy/immortalwrt-MT798X-mini/build.yml?branch=main&label=Build%20Status)
![GitHub Release](https://img.shields.io/github/v/release/ccaicjoy/https://github.com/ccaicjoy/immortalwrt-MT798X-mini?label=Latest%20Release)
![License](https://img.shields.io/github/license/ccaicjoy/https://github.com/ccaicjoy/immortalwrt-MT798X-mini?label=License)

## 项目简介

**MT798X 固件炼丹炉** 是一个基于 GitHub Actions 的自动化工作流，用于编译 MT798X 平台的 OpenWrt 固件（版本 24.10）。本项目旨在为 MT798X 设备用户提供一键编译固件的能力，生成适用于多种机型的 `sysupgrade.bin` 和 `factory.bin` 文件。

⚠️ **警告**：刷机有风险，可能导致设备变砖，请谨慎操作！本项目不对刷机失败或设备损坏负责。

## 功能特点

- **支持 OpenWrt 24.10**：基于 `padavanonly/immortalwrt-mt798x-24.10` 源码，内核版本 5.4.284。
- **多机型支持**：支持多种 MT798X 平台设备（详见下方支持机型列表）。
- **自动化编译**：通过 GitHub Actions 实现一键编译，生成固件并发布到 GitHub Releases。
- **WebDAV 上传**：支持将固件上传到私有 WebDAV 服务器（需配置）。
- **简洁高效**：工作流经过优化，移除冗余步骤，确保编译过程高效稳定。

## 支持的机型

以下是当前支持的 MT798X 机型列表：

- `abt_asr3000`
- `cetron_ct3003`
- `cmcc_a10`
- `cmcc_rax3000m-emmc`
- `cmcc_rax3000m`
- `h3c_nx30pro`
- `huasifei_wh3000-emmc`
- `imou_lc-hx3001`
- `jcg_q30`
- `konka_komi-a31`
- `livinet_zr-3020`
- `mt7981-360-t7-108M`
- `mt7981-clt-r30b1`
- `mt7981-clt-r30b1-112M`
- `xiaomi_mi-router-ax3000t`
- `xiaomi_mi-router-ax3000t-stock`
- `xiaomi_mi-router-wr30u-112m`
- `xiaomi_mi-router-wr30u-stock`
- `cmcc_rax3000m-emmc-usboffload`
- `cmcc_rax3000m-usboffload`

**默认机型**：`cmcc_rax3000m`

如果您需要支持其他机型，请提交 Issue 或 Pull Request。

## 使用方法

### 1. 触发工作流
1. 打开本仓库的 **Actions** 页面。
2. 选择 **MT798X固件炼丹炉：一键成砖大师 (24.10)** 工作流。
3. 点击 **Run workflow**。
4. 在弹出的表单中选择目标机型（`device`），然后点击 **Run workflow** 按钮。

### 2. 下载固件
- 工作流运行完成后，固件会自动发布到 **Releases** 页面。
- 每个 Release 包含以下文件：
  - `sysupgrade.bin`：用于系统升级。
  - `factory.bin`：用于恢复出厂设置。
- 点击 Release 名称，下载所需固件。

### 3. 刷机
- **管理地址**：`192.168.2.1`
- **默认用户名**：`root`
- **默认密码**：空（无密码）

#### 刷机建议
1. **备份原固件**：刷机前请备份设备当前固件，以防万一。
2. **选择正确文件**：
   - 使用 `sysupgrade.bin` 进行系统升级。
   - 使用 `factory.bin` 恢复出厂设置。
3. **检查管理地址和密码**：刷机后访问 `192.168.2.1`，使用默认用户名和密码登录。
4. **故障排查**：如果刷机失败或设备变砖，请尝试恢复原固件，或在 Issues 中反馈（附上日志）。

## 配置 WebDAV 上传（可选）

如果您希望将固件上传到私有 WebDAV 服务器，请在仓库的 **Settings > Secrets and variables > Actions** 中添加以下 Secrets：

- `WEBDAV_URL`：WebDAV 服务器地址（例如 `https://your-webdav-server.com/path`）。
- `WEBDAV_USER`：WebDAV 用户名。
- `WEBDAV_PASSWORD`：WebDAV 密码。

固件将上传到 `WEBDAV_URL/24.10/<device>/` 目录下。

## 开发与贡献

### 源码来源
- 本项目基于 [padavanonly/immortalwrt-mt798x-24.10](https://github.com/padavanonly/immortalwrt-mt798x-24.10) 源码，感谢 padavanonly 的开源贡献！

### 添加新机型
1. 编辑 `.github/workflows/build.yml` 文件。
2. 在 `on.workflow_dispatch.inputs.device.options` 中添加新机型。
3. 确保 `2410.config` 文件支持该机型。
4. 提交 Pull Request。

### 自定义配置
- **自定义 Feeds**：编辑 `scripts/diy-part1.sh` 文件。
- **自定义脚本**：编辑 `scripts/diy-part2.sh` 文件。
- **配置文件**：编辑 `2410.config` 文件。

## 常见问题

### 1. 为什么编译失败？
- **磁盘空间不足**：工作流会检查磁盘空间，确保至少有 10GB 可用空间。
- **网络问题**：可能由于网络不稳定导致源码克隆或软件包下载失败，工作流已添加重试机制。
- **配置错误**：检查 `2410.config` 文件是否支持目标机型。

### 2. 设备变砖了怎么办？
- 尝试使用 `factory.bin` 恢复出厂设置。
- 恢复备份的原固件。
- 在 Issues 中反馈问题，提供详细日志。

### 3. 如何查看编译日志？
- 在 **Actions** 页面点击对应工作流运行，查看详细日志。

## 许可证

本项目采用 [MIT 许可证](LICENSE)。使用本项目生成的固件时，请遵守相关源码的许可证要求。

## 致谢

- 感谢 [padavanonly](https://github.com/padavanonly) 提供的 `immortalwrt-mt798x-24.10` 源码。
- 感谢 GitHub Actions 提供免费的 CI/CD 服务。

---

### 说明

1. **动态徽章**：
   - `README` 中添加了 GitHub Actions 状态、最新 Release 和许可证徽章，需将 `<your-username>` 和 `https://github.com/ccaicjoy/immortalwrt-MT798X-mini` 替换为您的 GitHub 用户名和仓库名。
   - 如果不需要这些徽章，可以移除。

2. **结构清晰**：
   - 分为项目简介、功能特点、支持机型、使用方法、配置 WebDAV、开发与贡献、常见问题等部分，便于用户快速了解和使用。

3. **刷机建议**：
   - 提供详细的刷机步骤和故障排查建议，降低用户操作风险。

4. **贡献指南**：
   - 提供添加新机型和自定义配置的方法，鼓励社区参与。

如果您需要进一步调整（例如添加更多内容、修改风格），请告诉我！
