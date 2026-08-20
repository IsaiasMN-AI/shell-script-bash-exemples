#!/bin/bash

echo "Witch process do you looking for?" 
read process

# ps aux --> comando para puxar os processos
# grep "$process" --> faz mostrar apenas as linha contém a palavra chave
# grep -v "grep" --> ignora as linha que contém a palavra chave "grep"
# wc -l --> transforma o output no número de linhas 
running=$(ps aux | grep "$process" | grep -v "grep" | wc -l)

if [ $? -eq 0 ]; then
    echo "The process $process is running."
    echo "Counter: $running"
else
    echo "There is no process named $process."
fi