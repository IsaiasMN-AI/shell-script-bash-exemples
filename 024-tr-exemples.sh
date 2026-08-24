#!/bin/bash

read frase

echo "$frase" | tr -t '()' '[]'