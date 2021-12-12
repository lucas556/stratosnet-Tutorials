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
