#!/bin/bash

for i in {1..3}; do
    ping -c 1 8.8.8.8 > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Network connection: OK"
    fi
done