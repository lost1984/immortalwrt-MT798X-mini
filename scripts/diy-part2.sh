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
#

# 修改默认 IP
sed -i 's/192.168.6.1/192.168.2.1/g' package/base-files/files/bin/config_generate
