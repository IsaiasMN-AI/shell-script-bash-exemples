#!/bin/bash

# --sort=-%mem --> faz ordenar de forma decrescente por uso de memória.
# head -n 2 --> faz mostrar até a linha 2.
# tail -n 1 --> faz mostrar até a linha 1 de cima para baixo.
process_memory=$(ps aux --sort=-%mem | head -n 2 | tail -n 1 | 
awk '{print "Maior uso de memória: " $11 " | Usando: " $6}')

echo "$process_memory"