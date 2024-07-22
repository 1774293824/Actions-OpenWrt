# Modify default IP（修改wan口IP）
sed -i 's/192.168.1.1/192.168.68.1/g' package/base-files/files/bin/config_generate

# Modify default theme（设置默认主题）
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname（设置设备名称）
sed -i 's/OpenWrt/QWrt/g' package/base-files/files/bin/config_generate
