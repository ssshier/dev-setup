# Init

## change root passwd

```shell
sudo passwd root
```

## enable root login

```shell
apt install openssh-server
sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
systemctl restart sshd
```

## set static ip

```shell
echo <<EOF > /etc/netplan/00-installer-config.yaml
# This is the network config written by 'subiquity'
network:
  ethernets:
    ens33:
      addresses: [192.168.85.100/24]
      dhcp4: no
      optional: true
      gateway4: 192.168.85.2
      nameservers:
          addresses: [8.8.8.8, 8.8.4.4]
  version: 2
EOF

netplan apply
```

### k8s

```shell
# master
echo <<EOF > /etc/netplan/00-installer-config.yaml
# This is the network config written by 'subiquity'
network:
  ethernets:
    ens33:
      addresses: [192.168.85.110/24]
      dhcp4: no
      optional: true
      gateway4: 192.168.85.2
      nameservers:
          addresses: [8.8.8.8, 8.8.4.4]
  version: 2
EOF

netplan apply


# slave1
echo <<EOF > /etc/netplan/00-installer-config.yaml
# This is the network config written by 'subiquity'
network:
  ethernets:
    ens33:
      addresses: [192.168.85.111/24]
      dhcp4: no
      optional: true
      gateway4: 192.168.85.2
      nameservers:
          addresses: [8.8.8.8, 8.8.4.4]
  version: 2
EOF

netplan apply
```

## install net-tools

```
apt install net-tools
```