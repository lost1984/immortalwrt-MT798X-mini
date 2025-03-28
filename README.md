### OpenWrt 23.05 与 24.10 支持的机型及配置对比

| **属性**           | **OpenWrt 23.05**                                      | **OpenWrt 24.10**                                      |
|--------------------|-------------------------------------------------------|-------------------------------------------------------|
| **管理地址**       | 192.168.2.1                                           | 192.168.2.1                                           |
| **默认用户名**     | root                                                  | root                                                  |
| **默认密码**       | 留空（无密码）                                        | 留空（无密码）                                        |
| **固件来源**       | 基于“237大佬”的 OpenWrt 23.05 源码编译               | 基于“237大佬”的 OpenWrt 24.10 源码编译               |
| **内核版本**       | 5.4.255                                               | 5.4.284                                               |
| **支持机型数量**   | 17                                                    | 20                                                    |
| **支持的机型**     | 1. abt_asr3000<br>2. cetron_ct3003<br>3. cmcc_a10<br>4. cmcc_rax3000m-emmc<br>5. cmcc_rax3000m<br>6. h3c_nx30pro<br>7. imou_lc-hx3001<br>8. jcg_q30<br>9. konka_komi-a31<br>10. livinet_zr-3020<br>11. mt7981-360-t7-108M<br>12. mt7981-clt-r30b1<br>13. mt7981-clt-r30b1-112M<br>14. xiaomi_mi-router-ax3000t<br>15. xiaomi_mi-router-ax3000t-stock<br>16. xiaomi_mi-router-wr30u-112m<br>17. xiaomi_mi-router-wr30u-stock | 1. huasifei_wh3000-emmc（新增）<br>2. abt_asr3000<br>3. cetron_ct3003<br>4. cmcc_a10<br>5. cmcc_rax3000m-emmc<br>6. cmcc_rax3000m<br>7. cmcc_rax3000m-emmc-usboffload（新增）<br>8. cmcc_rax3000m-usboffload（新增）<br>9. h3c_nx30pro<br>10. imou_lc-hx3001<br>11. jcg_q30<br>12. konka_komi-a31<br>13. livinet_zr-3020<br>14. mt7981-360-t7-108M<br>15. mt7981-clt-r30b1<br>16. mt7981-clt-r30b1-112M<br>17. xiaomi_mi-router-ax3000t<br>18. xiaomi_mi-router-ax3000t-stock<br>19. xiaomi_mi-router-wr30u-112m<br>20. xiaomi_mi-router-wr30u-stock |
| **独有机型**       | 无                                                    | 1. huasifei_wh3000-emmc<br>2. cmcc_rax3000m-emmc-usboffload<br>3. cmcc_rax3000m-usboffload |

---

### 详细说明

#### OpenWrt 23.05
- **概述**: 基于“237大佬”的 OpenWrt 23.05 源码编译，内核版本为 5.4.255，支持 17 款 MT7981 平台的机型。
- **特点**: 提供稳定的固件支持，适用于多种常见路由器型号，未包含 `usboffload` 功能的机型。
- **使用方式**: 通过管理地址 `192.168.2.1` 访问，默认用户名为 `root`，密码留空。

#### OpenWrt 24.10
- **概述**: 基于“237大佬”的 OpenWrt 24.10 源码编译，内核版本升级至 5.4.284，支持 20 款 MT7981 平台的机型。
- **特点**: 在 23.05 的基础上新增了 3 款机型（`huasifei_wh3000-emmc`, `cmcc_rax3000m-emmc-usboffload`, `cmcc_rax3000m-usboffload`），提供更广泛的设备支持和可能的性能优化。
- **使用方式**: 同样通过管理地址 `192.168.2.1` 访问，默认用户名为 `root`，密码留空。

---

### 版本对比
- **内核升级**: 从 23.05 的 5.4.255 升级到 24.10 的 5.4.284，可能带来 bug 修复和性能改进。
- **机型扩展**: 24.10 比 23.05 多支持 3 款机型，尤其是增加了带 `usboffload` 功能的型号。
- **一致性**: 两版本的管理地址、用户名和密码配置保持一致，方便用户迁移。
