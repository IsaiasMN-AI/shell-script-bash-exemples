#!/bin/bash

# watch -n 2 "command"
# -n 2 --> Atualiza a cada 2 segundos.
watch -n 2 "ps aux | grep "docker" | grep -v "grep""