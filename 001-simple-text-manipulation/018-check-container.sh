#!/bin/bash

cd ~/projeto-final-docker-curso-senac
check_container_db=$(docker compose ps --services | grep "mysql")

if [ "$check_container_db" = "mysql" ]; then
    echo "MySQL Database Container is running."
else
    echo "MySQL isn't running."
    echo "Check the service name."
    echo "Database service must be named mysql."
fi
