#!/bin/bash

# Captura de pacotes especificamente na interface enp0s3.
sudo tcpdump -i enp0s3

# -n --> Evitar a tradução de IPs para nomes.
sudo tcpdump -i enp0s3 -n 

# -c --> Limitar a quantidade de pacotes.
sudo tcpdump -i eth0 -c 100