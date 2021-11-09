# k8s

## settings

```shell
# 关闭防火墙
systemctl stop firewalld
systemctl disable firewalld

# 禁用Selinux
apt install selinux-utils
setenforce 0

# 禁用swap
swapoff -a
#  !!! 同时把/etc/fstab包含swap那行记录删掉!!!
```

## kubelet kubeadm kubectl

```shell
apt-get update && apt-get install -y apt-transport-https

curl https://mirrors.aliyun.com/kubernetes/apt/doc/apt-key.gpg | apt-key add - 

cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://mirrors.aliyun.com/kubernetes/apt/ kubernetes-xenial main
EOF

apt-get update
apt-get install -y kubelet kubeadm kubectl
```

## cluster

```
kubeadm init \
--pod-network-cidr=10.244.0.0/16 \
--apiserver-advertise-address=192.168.85.120 \
--kubernetes-version=v1.19.10 \
--ignore-preflight-errors=Swap \
--image-repository registry.aliyuncs.com/google_containers
```

## easy deploy

[https://github.com/ameizi/vagrant-kubernetes-cluster](https://github.com/ameizi/vagrant-kubernetes-cluster)