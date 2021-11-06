#!/bin/bash


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
```
EOF

netplan apply