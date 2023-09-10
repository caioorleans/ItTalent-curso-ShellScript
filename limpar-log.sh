#!/bin/bash

diretorio_logs="/var/log"

if [ ! -d "$diretorio_logs" ]; then
  echo "O diretório '$diretorio_logs' não existe."
  exit 1
fi

find "$diretorio_logs" -name "*.log" -type f -mtime +7 -exec rm {} \;

echo "Arquivos .log com mais de 7 dias de atividade foram removidos."
