    #!/bin/bash
    set -u
    set -e

    echo "[*] Executing ETHERSTATS"
    EPWD="$(pwd)"

    _TIME=$(date +%Y%m%d%H%M%S)


    if [[ ! -d "./logs" ]];then
        echo "Creating logs directory"
        mkdir logs
    fi

    if [[ ! -d "./eth-netstats" ]]; then
        git clone https://github.com/cubedro/eth-netstats
        cd eth-netstats
        npm install
        sudo npm install -g grunt-cli
        grunt
    else 
        cd eth-netstats
    fi


    echo "$(pwd)"
    nohup env WS_SECRET=asdf npm start >> "${EPWD}"/logs/netstat_"${_TIME}".log & echo "Verify if ${EPWD}/logs/ have new files."
    echo "New's file name : netstat_${_TIME}"
    set +u
    set +e
