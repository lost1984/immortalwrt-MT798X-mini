

---

# MT798X 固件炼丹炉：一键成砖大师 (24.10) 🧙‍♂️🔥

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/ccaicjoy/https://github.com/ccaicjoy/immortalwrt-MT798X-mini/build.yml?branch=main&label=炼丹状态&style=flat-square)
![GitHub Release](https://img.shields.io/github/v/release/ccaicjoy/https://github.com/ccaicjoy/immortalwrt-MT798X-mini?label=最新杰作&style=flat-square)
![License](https://img.shields.io/github/license/ccaicjoy/https://github.com/ccaicjoy/immortalwrt-MT798X-mini?label=炼丹许可&style=flat-square)

## 欢迎体验炼丹魔法！🎩

**MT798X 固件炼丹炉** 不是普通的项目，它是一座魔法工坊，专为 MT798X 平台的路由器炼制 OpenWrt 24.10 固件！只需轻轻一点，GitHub Actions 就会化身炼丹大师，为你炼出 `sysupgrade.bin` 和 `factory.bin`，让你的路由器焕然一新——或者，嗯，变成一块砖？🧱

⚠️ **炼丹有风险，变砖需谨慎！** 如果你的路由器变成了“艺术品”，别怪我，可能是它自己想退休了！😜

## 炼丹炉的魔法亮点 ✨

- **24.10 版本专属**：基于 `padavanonly/immortalwrt-mt798x-24.10` 源码，内核 5.4.284，最新最潮！
- **多机型适配**：支持一大堆 MT798X 设备，总有一款适合你（详见下方“炼丹对象”）。
- **一键炼丹**：GitHub Actions 自动炼制，省时省力，炼完直接丢到 Releases 给你！
- **WebDAV 传送门**：可以把固件传送到你的私人 WebDAV 宝库（要自己配置哦）。
- **高效不拖拉**：我已经把没用的步骤都踢掉了，炼丹过程快到飞起！

## 炼丹对象（支持的机型）🎯

以下是炼丹炉能处理的 MT798X 机型，挑一个你喜欢的吧：

- `abt_asr3000`（这家伙很低调）
- `cetron_ct3003`（名字听起来就很酷）
- `cmcc_a10`（CMCC 家族的小可爱）
- `cmcc_rax3000m-emmc`（大内存选手）
- `cmcc_rax3000m`（CMCC 家族的明星）
- `h3c_nx30pro`（H3C 的骄傲）
- `huasifei_wh3000-emmc`（华斯菲的新宠）
- `imou_lc-hx3001`（IMOU 的神秘选手）
- `jcg_q30`（JCG 的小清新）
- `konka_komi-a31`（康佳也来凑热闹）
- `livinet_zr-3020`（名字很科幻）
- `mt7981-360-t7-108M`（360 的硬核玩家）
- `mt7981-clt-r30b1`（CLT 系列的代表）
- `mt7981-clt-r30b1-112M`（内存更大一点）
- `xiaomi_mi-router-ax3000t`（小米的高性价比之选）
- `xiaomi_mi-router-ax3000t-stock`（小米的原装风味）
- `xiaomi_mi-router-wr30u-112m`（小米 WR30U 升级版）
- `xiaomi_mi-router-wr30u-stock`（小米 WR30U 原装版）
- `cmcc_rax3000m-emmc-usboffload`（CMCC 的 USB 加速版）
- `cmcc_rax3000m-usboffload`（CMCC 的另一款加速神器）

**默认炼丹对象**：`cmcc_rax3000m`（人气王，非它莫属！）

想炼其他机型？快来 Issues 告诉我，我帮你加！😉

## 炼丹指南：如何开炉？🔥

### 1. 点火启动炼丹炉
1. 冲进本仓库的 **Actions** 页面。
2. 找到 **MT798X固件炼丹炉：一键成砖大师 (24.10)**。
3. 点击 **Run workflow**，就像点燃炼丹炉的引线！
4. 选一个机型（`device`），然后点 **Run workflow**，等着看魔法吧！

### 2. 领取你的炼丹成果
- 炼丹完成后，成果会自动出现在 **Releases** 页面。
- 每炉丹药包含：
  - `sysupgrade.bin`：升级你的路由器，焕然一新！
  - `factory.bin`：让路由器回到“出厂”状态。
- 点击 Release 名称，下载你的专属“丹药”！

### 3. 服用丹药（刷机）
- **炼丹炉地址**：`192.168.2.1`
- **炼丹师用户名**：`root`
- **炼丹秘钥**：空（是的，没密码，够大胆吧？）

#### 炼丹小贴士（刷机建议）
1. **备份你的旧丹药**：刷机前先备份路由器的原固件，万一变砖还能救命！
2. **选对丹药**：
   - `sysupgrade.bin`：给路由器“升级修为”。
   - `factory.bin`：让路由器“返老还童”。
3. **检查炼丹炉**：刷完后访问 `192.168.2.1`，用 `root` 登录，看看效果如何。
4. **变砖了怎么办**：别慌！用 `factory.bin` 试试，或者恢复原固件。如果还不行，来 Issues 找我哭诉（记得带上日志哦）。

## 开启传送门：WebDAV 上传（可选）🚪

想把炼好的丹药传送到你的私人宝库？在仓库的 **Settings > Secrets and variables > Actions** 中设置以下魔法咒语：

- `WEBDAV_URL`：你的传送门地址（比如 `https://your-webdav-server.com/path`）。
- `WEBDAV_USER`：传送门守卫的名字。
- `WEBDAV_PASSWORD`：守卫的口令。

丹药会自动传送到 `WEBDAV_URL/24.10/<device>/` 目录，方便你随时取用！

## 炼丹秘籍：开发与贡献 📜

### 炼丹原料
- 本炉用的是 [padavanonly/immortalwrt-mt798x-24.10](https://github.com/padavanonly/immortalwrt-mt798x-24.10) 的原料，感谢 padavanonly 提供的顶级药材！

### 想加新机型？
1. 打开 `.github/workflows/build.yml`。
2. 在 `on.workflow_dispatch.inputs.device.options` 里加个新机型。
3. 确保 `2410.config` 支持这个机型（别炼出毒丹哦）。
4. 提交 Pull Request，我来帮你点炉！

### 调制独家丹方
- **加点料（自定义 Feeds）**：改改 `scripts/diy-part1.sh`。
- **调调味（自定义脚本）**：玩玩 `scripts/diy-part2.sh`。
- **换个配方（配置文件）**：调整 `2410.config`。

## 炼丹常见问题 🤔

### 1. 为什么炼丹失败了？
- **炉子太小**：磁盘空间不够（需要 10GB），工作流会提前警告你。
- **原料没到**：可能是网络问题，原料（源码或软件包）没下载下来，我加了重试机制，应该能帮你。
- **配方不对**：检查 `2410.config` 是不是支持你的机型。

### 2. 路由器变成砖了怎么办？
- 别急，试试 `factory.bin` 回炉重造。
- 拿出你备份的原固件，救命要紧！
- 还是不行？来 Issues 找我，我帮你想想办法（带上日志，别让我猜！）。

### 3. 炼丹日志在哪里看？
- 去 **Actions** 页面，点开对应的炼丹记录，里面有详细的“炼丹日记”。

## 炼丹许可 📜

本炼丹炉采用 [MIT 许可证](LICENSE)。炼出来的丹药请遵守原料（源码）的许可要求，别惹上“仙界法律”哦！

## 特别鸣谢 🙏

- 感谢 [padavanonly](https://github.com/padavanonly) 提供的高级炼丹原料！
- 感谢 GitHub Actions 提供的免费炼丹场地！

---

**快来点炉炼丹吧，MT798X 的魔法在召唤你！** 🪄  
（如果炼出砖头，记得回来找我聊聊“艺术品”的故事！😄）

---
