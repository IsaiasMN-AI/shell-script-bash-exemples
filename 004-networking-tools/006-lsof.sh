#!/bin/bash

# Descobrir exatamente qual processo está segurando a porta 8080.
sudo lsof -i :8080

# Restringe a busca para o TCP.
sudo lsof -i tcp:8080
