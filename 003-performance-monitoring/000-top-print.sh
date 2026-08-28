#!/bin/bash

date_time=$(date "+%Y-%m-%d-%H-%M")

# -b --> sem interação.
# -n 1 --> atualiza uma vez e sai.
# -o %MEM --> ordena por uso de memória.
top -b -n 1 -o %MEM > top$date_time.log

# -E g --> mostra a memória em Gigabytes.
# -e m --> mostra a memória em Megabytes das tasks.
top -E g -e m -b -n 1 -o %MEM > topGB_MB$date_time.log
