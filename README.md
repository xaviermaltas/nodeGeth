# Node Geth

>Requirments -> Ubuntu and Geth installed.


## New Geth account

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

## Lift up a clean node

If you do not have a Geth Account, create a new one following these steps --> ***New Geth account***

_Terminal 1_ --> Clean database and Geth execution

```
./reGenesis.sh
```

```
./start_simplyNode.sh
```

_Terminal 2_ --> Start Netstat

```
./start_ethstats.sh
```

After start the Ether Netstat, open a browser with the following URL: 
```
http://localhost:3000
```

Here you'll see a panel with all the parameters of the network.

_Terminal 3_  --> Dapp execution

Deploy Contracts and Bring Up Web App.
Follow one of these. Check your directory.

[[The-election Project Deployment (/the-election)]] OR [[Dapp Execution (/app)]]
