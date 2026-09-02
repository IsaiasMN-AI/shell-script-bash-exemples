#!/bin/bash

dig google.com

# Retorna somente o IP resolvido.
dig +short google.com

# Força o uso de um servidor DNS específico.
dig @8.8.8.8 google.com

# Consultar um tipo de registro específico.
dig mx google.com