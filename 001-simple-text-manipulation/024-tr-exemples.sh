#!/bin/bash

frase="Shell Script (Bash)"
frase2="shell script 2(bash) 14879"
frase3="Shell    Script  (Bash)"
path="C:\Users\13279\Documents\Telefonia_Diagramas"

# ========================================================= #

# Troca ( por [.
# Troca ) por ].
echo "$frase" | tr '()' '[]'

# ========================================================= #

# Troca qualquer letra minúscula por maiúscula.
echo "$frase" | tr 'a-z' 'A-Z'

# ========================================================= #

# Troca espaços por _.
echo "$frase" | tr ' ' '_'

# ========================================================= #

# Deleta espaços, e parenteses.
echo "$frase" | tr -d ' ()'

# ========================================================= #

# Deleta números do 1 ao 9.
echo "$frase2" | tr -d '0-9'

# ========================================================= #

# Deleta números do 1 ao 9 com excessão do 8.
# Os dois fazem a mesma coisa (somente no caso dessa frase).
echo "$frase2" | tr -d '0-7' | tr -d '9'
echo "$frase2" | tr -cd ' 8A-Za-z()\n'

# ========================================================= #

# Troca barra invertida (Windows) para barra (Linux).
echo "$path" | tr '\\' '/'

# ========================================================= #

# Tira caracteres repetidos, inclusive espaços para transforma-los e um só.
echo "$frase3" | tr -s ' '

# ========================================================= #

# Troca espaços por \n (\n é indicação de quebra de linha).
echo "$frase" | tr ' ' '\n'