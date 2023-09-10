#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Uso: $0 <arquivo_de_texto>"
  exit 1
fi

arquivo="$1"

if [ ! -f "$arquivo" ]; then
  echo "O arquivo '$arquivo' não existe."
  exit 1
fi

num_palavras=$(wc -w < "$arquivo")

echo "O arquivo '$arquivo' contém $num_palavras palavras."
