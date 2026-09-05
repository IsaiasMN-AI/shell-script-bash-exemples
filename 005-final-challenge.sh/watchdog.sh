#!/bin/bash

if [[ -z "$1" || -z "$2" || "$1" = "-h" || "$1" = "--help" ]]; then
    echo "HOW TO USE!"
    echo "$0 <port> <project_path>"
    exit 1
fi

port=$1
workdir=$2

cd "$workdir"

upped_container_checker() {
    containers=$(docker compose ps --services | tr -d ' ')
    if [ -z "$containers" ]; then
        exit 1
    fi
}

upped_container_checker

#log_message () {
    

#}

#while true; do

#done