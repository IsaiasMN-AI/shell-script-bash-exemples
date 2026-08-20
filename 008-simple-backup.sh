#!/bin/bash

if [ -z "$1" ]; then
    echo "Please try like this: $0 <file_name>"
    exit 1
fi

file_name=$1
cp "./000-trash/create-files/${file_name}" "./000-trash/simple-backup/${file_name}.bak"