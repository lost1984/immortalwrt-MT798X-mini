#!/bin/bash
#
# 版权所有 (c) 2019-2020 P3TERX <https://p3terx.com>
#
# 这是一个自由软件，根据 MIT 许可证授权。
# 详细信息请参见 /LICENSE。
#
# https://github.com/P3TERX/Actions-OpenWrt
# 文件名: diy-part2.sh
# 描述: OpenWrt 自定义脚本部分2 (更新源后)
# 确保 luci-app-usb-printer 从配置中移除
sed -i '/CONFIG_PACKAGE_luci-app-usb-printer/d' .config
echo "# CONFIG_PACKAGE_luci-app-usb-printer is not set" >> .config
echo "Disabled luci-app-usb-printer in .config."

# 如果 luci-app-usb-printer 的源代码已存在，删除它
if [ -d "package/luci/applications/luci-app-usb-printer" ]; then
    rm -rf package/luci/applications/luci-app-usb-printer
    echo "Removed luci-app-usb-printer source from package directory."
fi

# 更新配置以应用更改
make defconfig > /dev/null 2>&1
echo "luci-app-usb-printer has been excluded from the firmware."

# 修改默认 IP
sed -i 's/192.168.6.1/192.168.2.1/g' package/base-files/files/bin/config_generate
