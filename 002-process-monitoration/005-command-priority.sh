#!/bin/bash

# Executa o script 020-backup-tar.sh com prioridade 10.
# Prioridade máxima: -20.
# Prioridade mínima: 19.
# nice -n <priority> <command/script>
nice -n 10 ./../001-simple-text-manipulation/020-backup-tar.sh

# Altera a prioridade de um processo já em execução.
# renice -n <priority> -p <PID>
renice -n 15 -p 4500
