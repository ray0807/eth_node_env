# 配置基础容器 docker-eth-node
FROM ubuntu:latest
MAINTAINER wanglei wanglei@xiaomingtaiji.com

# 安装自定义package
RUN apt-get update -y && apt-get install -y software-properties-common  && add-apt-repository -y ppa:ethereum/ethereum && apt-get update -y && apt-get install -y ethereum

WORKDIR /eth/

# docker build -t xmtj/eth_node_env .


