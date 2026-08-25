#!/bin/bash

# Procura por qualquer coisa que termine com .log a partir do contexto atual
find_file=$(find . -name "*.log")

echo "$find_file"