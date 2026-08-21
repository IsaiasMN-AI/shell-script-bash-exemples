#!/bin/bash

python_process=$(ps aux | grep -i "python" | grep -v "grep" | awk '{print "PID: "$2}')

echo "===== Python process running ====="
echo "$python_process"