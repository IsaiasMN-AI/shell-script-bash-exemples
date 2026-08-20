#!/bin/bash

errors=$(cat ./000-trash/logs/docker.logs | grep "ERROR")
errors_count=$(cat ./000-trash/logs/docker.logs | grep "ERROR" | wc -l)

echo "$errors"
echo "Counter: $errors_count"
