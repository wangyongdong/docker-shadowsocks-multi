echo "============================================="
echo " You can connect to this ShadowSocks Server: "
cat /etc/shadowsocks.json
echo " Please remeber the password!"
echo "============================================="

ssserver -c /etc/shadowsocks.json
