#!/bin/bash
# 检查 shadowsocks-libev 服务状态，并带有时间戳

timestamp=$(date "+%Y-%m-%d %H:%M:%S")
status=$(systemctl is-active shadowsocks-libev)

echo "[$timestamp] Shadowsocks-libev 服务状态: $status"

if [ "$status" = "active" ]; then
    echo "[$timestamp] 服务正在运行。"
else
    echo "[$timestamp] 服务未运行，请检查配置或日志。"
fi

echo "[$timestamp] 详细状态信息："
systemctl status shadowsocks-libev --no-pager 