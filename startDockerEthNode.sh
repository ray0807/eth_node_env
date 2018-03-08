docker run -d  --name eth_node -p 22345:12345 -p 22346:12346 -v $(pwd):/eth  xmtj/eth_node_env  /bin/bash -c 'sh ./DBBlockChainInit.sh && sh ./DBBlockChainStart.sh '
