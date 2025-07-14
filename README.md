# Linux SS Server 搭建

## 下载
```
sudo apt update
sudo apt install shadowsocks-libev -y
```

## 改配置
/etc/shadowsocks-libev/config.json
```
{
    "server": "0.0.0.0",
    "server_port": xxxx,
    "password": "xxxx",
    "timeout": 300,
    "method": "aes-128-ctr",
    "fast_open": false,
    "mode": "tcp_and_udp",
    "logfile": "/var/log/shadowsocks.log",
    "loglevel": "info"
}
```

## 启动服务
```
sudo systemctl restart shadowsocks-libev
sudo systemctl enable shadowsocks-libev

sudo ufw allow 9999/tcp
sudo ufw allow 9999/udp

sudo touch /var/log/shadowsocks.log
sudo chown nobody:nogroup /var/log/shadowsocks.log
sudo chmod 664 /var/log/shadowsocks.log
```
记得去服务器厂商控制台给上面的端口开防火墙

## Client配置
参考self.yaml
第18行换成自己的

## 完成
检查服务状态：
check_ss_status.sh
live_check_ss_status.sh