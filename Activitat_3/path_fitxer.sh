#!/bin/bash

if [ $# -ne 1 ]; then
echo "Us incorrecte de script, prova de nou"
fi

FITXER="$1"

if  [[ ! -e "$FITXER"  ]]; then
echo "El fitxer no existeix"
fi

file "$FITXER"

[ -r "$FITXER" ] && echo "Es pot llegir"
[ -w "$FITXER" ] && echo "Es pot modificar"
[ -x "$FITXER" ] && echo "Es pot executar"
