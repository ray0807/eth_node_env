# 以太坊节点运行环境

#### 使用方式

* ./startDockerEthNode.sh

```
#同步后可以直接运行
docker run -d  --name eth_node -p 22345:12345 -p 22346:12346 -v $(pwd):/eth  ray0523/eth_node_env  /bin/bash -c 'sh ./DBBlockChainInit.sh && sh ./DBBlockChainStart.sh '

#自定义创世区块，把创世区块放在当前目录下
docker run -d  --name eth_node -p 22345:12345 -p 22346:12346 -v $(pwd):/eth  ray0523/eth_node_env  /bin/bash -c 'geth  --datadir block   --identity "DouBi" --rpc --rpcport 12345 --rpccorsdomain "*"  --port 12346 --networkid 523 init genesis.json && geth --datadir block  --identity "DouBi" --rpcapi "db,eth,net,web3,personal,admin,miner"  --rpc --rpcport 12345 --rpccorsdomain "*"  --port 12346 --networkid 523 --rpcaddr 0.0.0.0 '

#使用默认创世区块
docker run -d  --name eth_node1 -p 32345:12345 -p 32346:12346   ray0523/eth_node_env  /bin/bash -c 'geth  --datadir block   --identity "DouBi" --rpc --rpcport 12345 --rpccorsdomain "*"  --port 12346 --networkid 523 init /eth/genesis.json && geth --datadir block  --identity "DouBi" --rpcapi "db,eth,net,web3,personal,admin,miner"  --rpc --rpcport 12345 --rpccorsdomain "*"  --port 12346 --networkid 523 --rpcaddr 0.0.0.0 '
```