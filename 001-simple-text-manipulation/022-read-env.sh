#!/bin/bash

# O ^ antes de DB_PASSWORD significa que ele deve começar exatamente daquela forma.
DB_PASSWORD=$(grep "^DB_PASSWORD=" ~/shell_script_bash_exemples/000-trash/env/.env | 
          awk -F "=" '{print $2}')

echo "$DB_PASSWORD"