#!/bin/bash

# $0 --> recebe o nome do script: ./008-simple-backup.sh
# $1 --> recebe o parâmetro que é passado ao executar o script
#        ex: ./008-simple-backup.sh file_1
#        o $1 recebe o valor file_1

if [ -z "$1" ]; then
    echo "Please try like this: $0 <file_name>"
    exit 1
fi

file_name=$1
cp "./000-trash/create-files/${file_name}" "./000-trash/simple-backup/${file_name}.bak"