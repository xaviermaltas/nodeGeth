#!/bin/bash
set -u
set -e

#--ethstats test:asdf@127.0.0.1:3000
NETID=9354
NODE_IP="127.0.0.1"
NODE_PORT=22000
IPC="ipc: 'pblkchain/geth.ipc'"
startNodeAction="a"


startNodeFunction(){
    NETID=$1
    NODE_IP=$2
    NODE_PORT=$3

    startNodeAction="geth --port 22000 --networkid 9354 --nodiscover --allow-insecure-unlock --datadir=./pblkchain --maxpeers=0  --rpc --rpcport 8543 --rpcaddr 127.0.0.1 --rpccorsdomain "'*'" --rpcapi "'db,eth,net,web3,personal,miner,admin'" "
    # echo "$startNodeAction"
}

echo "[*] Starting a network with a single node"

# Starting the node
startNodeFunction $NETID $NODE_IP $NODE_PORT
attachAction="geth attach http://127.0.0.1:8543"


tab=" --tab"
instructionsStart+=($tab -e "bash -c '${startNodeAction}; bash'")
instructionsAttach+=($tab -e "bash -c '${attachAction}; bash'")



# echo "${instructionsStart[@]}"
# gnome-terminal "${instructionsStart[@]}"
gnome-terminal --tab -e "${startNodeAction}"

sleep 5

# echo "${instructionsAttach[@]}"
gnome-terminal "${instructionsAttach[@]}"

# geth --port 22000 --networkid 9354 --nodiscover --datadir=./pblkchain --maxpeers=0  --rpc --rpcport 8543 --rpcaddr 127.0.0.1 --rpccorsdomain "*" --rpcapi "db,eth,net,web3,personal,miner,admin" 

set +u
set +e
