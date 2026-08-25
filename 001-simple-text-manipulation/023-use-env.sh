#!/bin/bash

DB_PASSWORD=$(grep "^DB_PASSWORD=" ~/shell_script_bash_exemples/000-trash/env/.env | 
              awk -F "=" '{print $2}')

# sed 's/OLD_WORD/NEW_WORD/g' file_name
# A flag -i faz a saída do comando ser injetada no arquivo, sem ela, ele só joga a saída no terminal.
sed -i "s/PASS_HERE/$DB_PASSWORD/g" ~/shell_script_bash_exemples/000-trash/env/application.properties

