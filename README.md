#### 管理地址和凭据
所有三个版本的管理地址均为 192.168.2.1，默认用户名是 root，默认密码为空，方便用户统一管理。

#### 内核和固件来源
Lede R24 使用内核 6.1，固件来源是 Lede 项目；OpenWrt 23.05 和 24.10 使用更新的内核（5.4.255 和 5.4.284），均基于“237大佬”的 OpenWrt 源码编译，24.10 版本可能提供更多性能优化。

#### 支持的机型
Lede R24 支持约17种机型，可能包括较老的设备，如 abt_asr3000、cetron_ct3003 等；OpenWrt 23.05 支持17种机型，24.10 支持20种，新增了 huasifei_wh3000-emmc、cmcc_rax3000m-emmc-usboffload 和 cmcc_rax3000m-usboffload。

---

#### 配置对比

| **属性**           | **Lede 17.01** | **OpenWrt 23.05** | **OpenWrt 24.10** |
|--------------------|---------------|------------------|------------------|
| **管理地址**       | 192.168.2.1    | 192.168.2.1       | 192.168.2.1       |
| **默认用户名**     | root          | root             | root             |
| **默认密码**       | (empty)       | (empty)          | (empty)          |
| **固件来源**       | Lede 项目     | OpenWrt 项目，基于“237大佬”23.05源码 | OpenWrt 项目，基于“237大佬”24.10源码 |
| **内核版本**       | 4.4.x (4.4.140) | 5.4.255          | 5.4.284          |
| **支持机型数量**   | ~17           | 17               | 20               |
| **支持的机型**     | 可能包括：abt_asr3000, cetron_ct3003, cmcc_a10, cmcc_rax3000m-emmc, h3c_nx30pro, imou_lc-hx3001, jcg_q30, konka_komi-a31, livinet_zr-3020, mt7981-360-t7-108M, mt7981-clt-r30b1, mt7981-clt-r30b1-112M | 1. abt_asr3000<br>2. cetron_ct3003<br>3. cmcc_a10<br>4. cmcc_rax3000m-emmc<br>5. cmcc_rax3000m<br>6. h3c_nx30pro<br>7. imou_lc-hx3001<br>8. jcg_q30<br>9. konka_komi-a31<br>10. livinet_zr-3020<br>11. mt7981-360-t7-108M<br>12. mt7981-clt-r30b1<br>13. mt7981-clt-r30b1-112M<br>14. xiaomi_mi-router-ax3000t<br>15. xiaomi_mi-router-ax3000t-stock<br>16. xiaomi_mi-router-wr30u-112m<br>17. xiaomi_mi-router-wr30u-stock | 1. huasifei_wh3000-emmc（新增）<br>2. abt_asr3000<br>3. cetron_ct3003<br>4. cmcc_a10<br>5. cmcc_rax3000m-emmc<br>6. cmcc_rax3000m<br>7. cmcc_rax3000m-emmc-usboffload（新增）<br>8. cmcc_rax3000m-usboffload（新增）<br>9. h3c_nx30pro<br>10. imou_lc-hx3001<br>11. jcg_q30<br>12. konka_komi-a31<br>13. livinet_zr-3020<br>14. mt7981-360-t7-108M<br>15. mt7981-clt-r30b1<br>16. mt7981-clt-r30b1-112M<br>17. xiaomi_mi-router-ax3000t<br>18. xiaomi_mi-router-ax3000t-stock<br>19. xiaomi_mi-router-wr30u-112m<br>20. xiaomi_mi-router-wr30u-stock |
| **独有机型**       | 无明确信息   | 无               | 1. huasifei_wh3000-emmc<br>2. cmcc_rax3000m-emmc-usboffload<br>3. cmcc_rax3000m-usboffload |


