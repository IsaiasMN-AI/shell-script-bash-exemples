#!/bin/bash

# Procura pela palavra ERROR em todos os diretórios e arquivos a partir do seu contexto.
find_docker_logs=$(grep -r "ERROR" . | grep -v "grep")

echo "$find_docker_logs"