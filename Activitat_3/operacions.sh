#!/bin/bash

if [[ $# -eq 4 ]]; then
echo "Error: el nombre de arguments ha de ser 3"
fi

OPERADOR="$1"
NUM1="$2"
NUM2="$3"

if ! [[ "$NUM1" -eq "$NUM1" ]]; then
echo "Error1: el nombre ha de ser un nombre enter"
fi

if ! [[ "$NUM2" -eq "$NUM2" ]]; then
echo "Error2: el nombre ha de ser un nombre enter"
fi

if [[ "$OPERADOR" = "add" ]]; then
RESULTAT=$((NUM1 + NUM2))
elif [[ "$OPERADOR" = "subtract" ]]; then
RESULTAT=$((NUM1 - NUM2))
elif [[ "$OPERADOR" = "multiply" ]]; then
RESULTAT=$((NUM1 * NUM2))
elif [[ "$OPERADOR" = "divide" ]]; then
if [[ "$NUM2" -eq 0 ]]; then
echo "No es pot dividir entre 0"
fi
RESULTAT=$((NUM1 / NUM2))
else 
echo "Operador no valid, ha de ser (add, subtract, multiply o divide)"
fi

echo "El resultat es $RESULTAT"
