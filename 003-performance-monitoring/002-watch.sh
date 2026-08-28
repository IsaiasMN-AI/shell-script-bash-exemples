#!/bin/bash

if [[ -z "$1" || -z "$2" ]]; then
    echo "Argument is missing!"
    echo "Correct: $0 <number_of_times> <interval>"
    echo "Ex: $0 5 2"
else
    tput smcup # Abre uma tela alternativa.
    tput civis # Ocultar o cursor.
    number_of_times=$1
    for ((i=1; i<=number_of_times; i++)); do 
        if [ $i -eq 1 ]; then
            vmstat -s > vmstat.log # -s para tabela na vertical.
            iostat -xm > iostat.log # -x versão estendida. -m para deixar em MB/s
            df -h > df.log # -h para deixar mais legível.
            du -sh /var/log > du.log
        fi

        tput cup 0 0 # Volta ao topo. Linha 0 e Coluna 0 respectivamente.
        tput ed # Apaga o cursor até o fim da tela.

        vmstat
        sleep "$2"
    done
    tput cnorm # Restaura o cursor.
    tput rmcup # Fecha a tela alternativa e devolve o terminal original intacto.
fi