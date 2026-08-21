#!/bin/bash

if [ -z "$2" ]; then
    echo "Try: $0 <host> <port>"
    exit 1
fi

host=$1
port=$2

nc -z -w 2 "$host" "$port" > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "Port is opened."
else
    echo "Port is closed"
fi
