#!/bin/bash

# Encontrar todos os arquivos .log em /temp e remove-los.
find ./000-trash/logs/temp -name "*.log" -print0 | xargs -0 rm

# Encontrar todos os .conf no contexto e copiar para /simple-backup.
# Flag -I diz, coloque todo arquivo q encontrar no lugar de {}.
find . -name "*.conf" -print0 | xargs -0 -I {} cp {} ./000-trash/simple-backup/

# Encontrar arquivos .java ou .sh no contexto e procurar pela palavra DB_PASSWORD em cada um deles.
# O \(  \) faz que o -print0 se aplique em ambas as extensões.
find . \( -name "*.java" -o -name "*.sh" \) -print0 | xargs -0 grep -n "DB_PASSWORD"

# docker ps -q --> lista apenas os IDs dos conteineres.
docker ps -q | xargs -I {} docker stop {} | xargs -I {} docker rm {}