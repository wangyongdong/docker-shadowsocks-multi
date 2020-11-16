# dockerfiles-shadowsocks-multi

基于 ubuntu14.04 的 shadowsocks 的 Docker 镜像，支持多用户配置，chacha20加密模式

# 部署说明

## 2.获取镜像

- `docker pull wangyongdong/docker-shadowsocks-multi`

## 3.配置 `./shadowsocks.json` 文件，用于挂载到容器的 `/etc/shadowsocks.json` 文件
```
{
"server":"0.0.0.0",
"local_address": "127.0.0.1",
"local_port":1080,
"port_password":{
  "11123": "23pass",
  "11124": "24pass"
},
"timeout":300,
"method":"chacha20",
"fast_open": false
}
```

## 4.运行容器

- `docker run --name ss -d -p 11123-11124:11123-11124 --restart=always -v /etc/shadowsocks.json:/etc/shadowsocks.json docker.io/wangyongdong/docker-shadowsocks-multi`

## 5.查看运行状态

- `docker ps -a` STATUS 状态为 up 则启动成功

## 配置说明

- `docker run --name ss -d -p 11123-11124:11123-11124 --restart=always -v /etc/shadowsocks.json:/etc/shadowsocks.json docker.io/wangyongdong/docker-shadowsocks-multi`

- --name 服务名
- -d 后台运行
- -p 端口（端口配置需和 `/etc/shadowsocks.json` 里的一致） 
- -v 文件挂载
-  --restart=always 重新启动
