#!/bin/bash

errors=$(cat ./000-trash/logs/docker.logs | grep -i "ERROR")
errors_count=$(cat ./000-trash/logs/docker.logs | grep -i "ERROR" | wc -l)

echo "$errors"
echo "Counter: $errors_count"
