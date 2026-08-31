#!/bin/bash

while true; do
    load_average_1min=$(uptime | awk -F "load average:" '{print $2}' | awk '{print $1}' | tr -d ',.')
    if [ "$load_average_1min" -gt 100 ]; then
        notify-send -u critical -i warning "WARNING: CPU is overwhelmed!!!"
        sleep 120
    fi
    sleep 5
done
