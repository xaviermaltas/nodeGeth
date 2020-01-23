#!/bin/bash 
echo " "
echo "Regenesis of the node"

echo "Directory : $(pwd)"

cd pblkchain/

if [ -d "geth/" ];then
	cd geth/
	[ -d chaindata/ ] && echo "Deleting Chain Data Directory" && rm -rf chaindata/
	[ -d lightchaindata/ ] && echo "Deleting Light Chain Data Directory" && rm -rf lightchaindata/
	[ -d nodes/ ] && echo "Deleting Nodes Directory" && rm -rf nodes/
	[ -e LOCK ] && echo "Deleting LOCK" && rm -r LOCK
	[ -e transactions.rlp ] && echo "Deleting transactions.rlp" && rm -r transactions.rlp

fi

cd ..
cd ..

# geth --datadir=./pblkchain init genesisBlockFile.json
geth --datadir=./pblkchain init genesis.json