#!/bin/bash

echo "Digite o tamanho da senha desejada (número inteiro):"
read tamanho_senha

if [[ ! $tamanho_senha =~ ^[0-9]+$ ]]; then
  echo "Por favor, insira um número inteiro positivo."
  exit 1
fi

caracteres="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

senha=""
for ((i = 0; i < tamanho_senha; i++)); do
  random_byte=$(head -c 1 /dev/urandom | od -An -t u1)
  indice=$((random_byte % ${#caracteres}))
  senha="${senha}${caracteres:indice:1}"
done

echo "Senha aleatória gerada: $senha"
