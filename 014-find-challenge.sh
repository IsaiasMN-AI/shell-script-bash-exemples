#!/bin/bash

errors=$(grep -i "error" ./000-trash/logs/app.log)
login_fail=$(grep -ic "failed login" ./000-trash/logs/app.log)
database_without_timeout_logs=$(grep -i "database" ./000-trash/logs/app.log | grep -v "timeout")

echo "$errors"
echo "$login_fail"
echo "$database_without_timeout_logs"