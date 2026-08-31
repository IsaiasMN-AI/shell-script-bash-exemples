#!/bin/bash

# -c 4 --> repete 4 vezes.
# -i 1000 --> manda 1000 bytes de dados mais 8 do cabeçalho.
# -I enp0s3 --> seleciona a interface enp0s3 para realizar o trabalho.
ping -c 4 -i 1000 -I enp0s3 8.8.8.8