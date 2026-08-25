#!/bin/bash

filter_logs=$(grep -iE "error|warn" ./000-trash/logs/spring.log | 
              awk '{print "[" $1 " - " $2 "]" " -> " $4}')

echo "$filter_logs"