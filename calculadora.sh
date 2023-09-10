#!/bin/bash

add() {
  resultado=$(echo "$1 + $2" | bc)
  echo "Resultado: $resultado"
}

subtract() {
  resultado=$(echo "$1 - $2" | bc)
  echo "Resultado: $resultado"
}

multiply() {
  resultado=$(echo "$1 * $2" | bc)
  echo "Resultado: $resultado"
}

divide() {
  if [ "$2" -eq 0 ]; then
    echo "Erro: Divisão por zero!"
  else
    resultado=$(echo "scale=2; $1 / $2" | bc)
    echo "Resultado: $resultado"
  fi
}

while true; do
  echo "Calculadora"
  echo "Escolha uma operação:"
  echo "1. Adição (+)"
  echo "2. Subtração (-)"
  echo "3. Multiplicação (*)"
  echo "4. Divisão (/)"
  echo "5. Sair"
  read -p "Opção: " escolha

  case $escolha in
    1)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      add "$num1" "$num2"
      ;;
    2)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      subtract "$num1" "$num2"
      ;;
    3)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      multiply "$num1" "$num2"
      ;;
    4)
      read -p "Digite o primeiro número: " num1
      read -p "Digite o segundo número: " num2
      divide "$num1" "$num2"
      ;;
    5)
      echo "Saindo da calculadora."
      exit 0
      ;;
    *)
      echo "Opção inválida. Tente novamente."
      ;;
  esac
done
