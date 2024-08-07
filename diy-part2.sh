# Modify default IP（修改wan口IP） 本地编译时在文件的第150行左右
sed -i 's/192.168.1.1/192.168.68.1/g' package/base-files/files/bin/config_generate

# Modify default theme（设置默认主题）
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname（设置设备名称）本地编译时在文件的第298行左右
sed -i 's/OpenWrt/QWrt/g' package/base-files/files/bin/config_generate

# 设置wan口上网方式为PPPOE
sed -i 's/2:-dhcp/2:-pppoe/g' package/base-files/files/lib/functions/uci-defaults.sh

# 设置PPPOE上网的账号和密码
sed -i 's/username='"'"'username'"'"'/username='"'"'403'"'"'/g; s/password='"'"'password'"'"'/password='"'"'8888'"'"'/g' ./package/base-files/files/bin/config_generate
