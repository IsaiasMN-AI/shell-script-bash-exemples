#!/bin/bash

frase="Linux_Ubuntu_22.04_LTS"
allowed="drwxr-xr-x"

# ========================================================= #

# Pegar apenas a terceira letra.
echo "$frase" | cut -c 3

# ========================================================= #

# Pegar da primera até a quinta letra.
echo "$frase" | cut -c 1-5

# ========================================================= #

# Pegar da segunda até a quarta letra.
echo "$allowed" | cut -c 2-4

# ========================================================= #

# O delimitador passa a ser _ então a palavra Ubuntu será o segundo elemento.
echo "$frase" | cut -d '_' -f 2

# ========================================================= #

# Pegar do segundo elemento em diante.
echo "$frase" | cut -d '_' -f 2-

# ========================================================= #

# Retirar apenas o quinto elemento.
echo "$frase" | cut -c 5 --complement

# ========================================================= #

# Retirar apenas o segundo elemento.
echo "$frase" | cut -d "_" -f 2 --complement