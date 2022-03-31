## Stratos chain testnet 测试网说明
```
测试网教程 https://github.com/stratosnet/stratos-chain-testnet/wiki/Stratos-chain-testnet-%E6%B5%8B%E8%AF%95%E7%BD%91%E8%AF%B4%E6%98%8E
```

## stratos config 连接
```
### Comma separated list of seed nodes to connect to
seeds = "90c18307c235c456ebdc127b98de503b30994599@54.189.208.239:26656,a97214289b659dca9db98963959bde117851b485@52.194.30.100:26656"

### Comma separated list of nodes to keep persistent connections to
persistent_peers = "d3d3526cea4b509624f4353b10eef3f6e7677a19@18.116.249.76:26656"
```

## Stratosnet build
```
# 编译
git clone https://github.com/stratosnet/stratos-chain.git
cd stratos-chain
make build && make install
```
## Stratosnet Download

```
# 下载二进制
wget https://github.com/stratosnet/stratos-chain/releases/download/v0.5.0/stchaincli
wget https://github.com/stratosnet/stratos-chain/releases/download/v0.5.0/stchaind
chmod +x stchaincli stchaind
```


## 获取genesis和 config 文件
```
wget https://raw.githubusercontent.com/stratosnet/stratos-chain-testnet/main/genesis.json
wget https://raw.githubusercontent.com/stratosnet/stratos-chain-testnet/main/config.toml

mv config.toml config/
mv genesis.json config/
```
```
在 config.toml 中更改您的节点名称（如果您不想成为validator，则可选）
使用您喜欢的名字来命名节点
moniker = "节点名称"
```
## 启动节点
```
./stchaind init --home ./  "<node name you prefer>"

./stchaind start --home ./ 2>&1 >> chain.log &
```
