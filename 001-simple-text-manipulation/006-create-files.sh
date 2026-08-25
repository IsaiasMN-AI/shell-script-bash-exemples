#!/bin/bash

num_files=(1 2 3 4 5)

cd 000-trash
mkdir create-files
cd create-files

# Para usar todos os elementos da array é necessário informar
# Nesse caso usa-se ${array_name[*]}
# Se quiser puxar apenas alguns elementos considere usar a sintaxe
# ${array_name[posição_do_elemento]} --> ${array_name[2]}
# ${array_name[@]:posição_inicial:quantidade} --> ${array_name[@]:2:3}
for num in ${num_files[*]}; do
    touch "file_$num"
    echo "file_$num was created."
done