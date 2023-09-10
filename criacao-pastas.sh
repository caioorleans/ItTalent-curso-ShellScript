#!/bin/bash

for i in {1..10}; do
  nome_diretorio="diretorio_$i"  
  
  if [ -d "$nome_diretorio" ]; then
    echo "O diretório '$nome_diretorio' já existe."
  else
    mkdir "$nome_diretorio"
    echo "Diretório '$nome_diretorio' criado com sucesso."
  fi
done
