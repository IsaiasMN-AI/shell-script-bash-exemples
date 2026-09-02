#!/bin/bash

if [[ -z "$1" || -z "$2" ]]; then
    echo "Correct format: $0 <ip_address> <port>"
    echo "Exemple: $0 172.16.10.10 80"
else
    ping -c 1 "$1" > /dev/null 2>&1
    if [ "$?" -eq 0 ]; then
        echo "IP alcançável. Testando porta $2..."
        sleep 1
        nc -z -w 2 "$1" "$2" > /dev/null 2>&1
        if [ "$?" -eq 0 ]; then
            echo "Porta em uso!"
        else
            echo "Porta livre!"
        fi
    else
        echo "IP inalcançável!!! (Ping falhou)."
    fi
fi