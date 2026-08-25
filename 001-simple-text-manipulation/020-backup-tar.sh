#!/bin/bash

date=$(date "+%Y-%m-%d")

cd ~/scripts-bash/000-trash/backup-project 2> /dev/null || { echo "Path not found!"; exit 1; }
tar -czvf projeto-final-backup"$date".tar.gz ~/projeto-final-docker-curso-senac > /dev/null 2>&1
