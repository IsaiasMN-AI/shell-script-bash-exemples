#!/bin/bash

# Mata o processo mas ele espera terminar de processar suas tarefas.
kill -15 4500

# Força a morte do processo.
kill -9 4500

# Mata todos os processos chamados sleep.
pkill sleep