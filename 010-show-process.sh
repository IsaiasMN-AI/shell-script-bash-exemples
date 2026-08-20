#!/bin/bash

echo "Witch process do you looking for?" 
read process

running=$(ps aux | grep "$process" | grep -v "grep" | wc -l)

if [ $? -eq 0 ]; then
    echo "The process $process is running."
    echo "Counter: $running"
else
    echo "There is no process named $process."
fi