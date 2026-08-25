#!/bin/bash

disk_stats_generator() {
    date=$(date "+%d/%m/%Y %H:%M:%S")
    disk_stats=$(df -h | grep /dev/sda2)

    echo "disk: $disk_stats"
}

disk_stats_generator