#!/bin/bash

ip route

# Mostra a rota para o default gateway.
ip route show default

# Mostra qual rota, interface e IP de origem o sistema usará para chegar a um destino específico.
ip route get 8.8.8.8
