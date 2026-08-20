#!/bin/bash

for i in {1..3}; do
    # A saída padrão é jogada fora em /dev/null
    # Em seguida 2>&1 significa que a saída de erro será direcionada para a saída padrão
    # Ou seja, tanto a saída padrão quanto a de erro serão jogadas fora em /dev/null
    ping -c 1 8.8.8.8 > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Network connection: OK"
    fi
done