# Node Geth

>Requirments -> Ubuntu and Geth installed.


### New Geth account

1 - Creació d'una compte, en cas de no tenir-ne cap, amb la que posteriorment treballarem a la xarxa. ( /network )

```
geth --datadir pblkchain account new
```
1.a - Posar l'adreça de la compte creada al fitxer genesis.json per tal de que aquesta tingui saldo per poder delpoyar dins la xarxa.


```
"alloc": {
"yourAddress" : { "balance" : "1000000000000000000"}
}
```

## Lift up a network with a node

If you do not have a Geth Account, create a new one following these steps --> ''New Geth account''

''Terminal1''  --> Geth execution

```
geth --port 3000 --networkid 9354 --nodiscover --datadir=./pblkchain --maxpeers=0  --rpc --rpcport 8543 --rpcaddr 127.0.0.1 --rpccorsdomain "*" --rpcapi "db,eth,net,web3,personal,miner,admin"
```

''Terminal2''  --> Attach

```
geth attach http://127.0.0.1:8543
```

''Terminal3''  --> Dapp execution

Deploy Contracts and Bring Up Web App.
Follow one of these. Check your directory.

[[The-election Project Deployment (/the-election)]] OR [[Dapp Execution (/app)]]
