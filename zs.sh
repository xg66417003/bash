#!/bin/bash
yum install -y socat &&
yum install wget -y &&
curl https://get.acme.sh | sh &&
source ~/.bashrc &&
bash ~/.acme.sh/acme.sh --issue -d 111.cloudddns.icu --alpn -k ec-256 &&
mkdir /etc/trojan-go &&
acme.sh --ecc --installcert -d 111.cloudddns.icu --key-file /etc/trojan-go/private.key  --fullchain-file /etc/trojan-go/fullchain.cer
echo "安装完成"
