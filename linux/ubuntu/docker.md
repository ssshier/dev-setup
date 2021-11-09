# docker

```shell
# step 1: 安装必要的一些系统工具
apt-get update
apt-get -y install apt-transport-https ca-certificates curl software-properties-common

# step 2: 安装GPG证书
curl -fsSL https://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -

# Step 3: 写入软件源信息
add-apt-repository "deb [arch=amd64] https://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"

# Step 4: 更新并安装Docker-CE
apt-get -y update
apt-get -y install docker-ce

# Step 5: 启动
systemctl enable docker
systemctl start docker
systemctl status docker
```

```
cat >  /etc/docker/daemon.json << EOF
{
    "registry-mirrors": ["https://alzgoonw.mirror.aliyuncs.com"],
    "live-restore": true
}
EOF
systemctl daemon-reload
systemctl restart docker
```