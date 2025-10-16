#!/bin/bash

FITXER="$1"
PARAULA="$2"

if [[ ! -e "$FITXER" ]]; then
echo "El fitxer no existeix"
fi 

if [[ "$FITXER" != *.txt && "$FITXER" != *.csv ]]; then
echo "El fitxer ha de ser txt o csv"
exit
fi

LINIES=$(grep -c -i "$PARAULA" "$FITXER")

if [[ "$LINIES" -eq 0 ]]; then
echo "No s'han trobat linies per la paraula $PARAULA"
else
echo "S'han trobat $LINIES linies amb la paraula $PARAULA"
fi
