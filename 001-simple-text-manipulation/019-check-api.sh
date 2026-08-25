#!/bin/bash

URL="http://172.16.39.61/api/produtos"
# curl -i para incluir headers mostrando o status (200, 404, etc).
# curl -s para silenciar o stderr, ficando somente com a linha desejada.
# grep -iE para ignorar case e habilitar multiplos padrões.
check_api=$(curl -is "$URL" | grep -iE "http|https" | awk '{print $2}')

if [ "${check_api:0:1}" = "2" ]; then
    echo "API Online"
else
    echo "API Offline"
fi
