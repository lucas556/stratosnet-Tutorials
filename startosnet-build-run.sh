#!/bin/bash

# 测试网教程 https://github.com/stratosnet/stratos-chain-testnet/wiki/Stratos-chain-testnet-%E6%B5%8B%E8%AF%95%E7%BD%91%E8%AF%B4%E6%98%8E
apt-get update

sudo apt install wget git supervisor ntpdate nfs-common -y

# golang
wget -c https://studygolang.com/dl/golang/go1.16.4.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local

export PATH=$PATH:/usr/local/go/bin

# 编译
git clone https://github.com/stratosnet/stratos-chain.git
cd stratos-chain
make build && make install

# 下载二进制
wget https://github.com/stratosnet/stratos-chain/releases/download/v0.5.0/stchaincli
wget https://github.com/stratosnet/stratos-chain/releases/download/v0.5.0/stchaind
chmod +x stchaincli stchaind

# 获取genesis和 config 文件
wget https://raw.githubusercontent.com/stratosnet/stratos-chain-testnet/main/genesis.json
wget https://raw.githubusercontent.com/stratosnet/stratos-chain-testnet/main/config.toml

mv config.toml config/
mv genesis.json config/

# 在 config.toml 中更改您的节点名称（如果您不想成为validator，则可选）
# 使用您喜欢的名字来命名节点
# moniker = "节点名称"

# 启动节点
# ./stchaind init --home ./  "<node name you prefer>"

./stchaind start --home ./ 2>&1 >> chain.log &
