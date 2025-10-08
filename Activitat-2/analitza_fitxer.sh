#!/bin/bash

read -p "Nom del fitxer:" FITXER

LINIES=$(grep -cve '^\s*$' "$FITXER" 2>>errors.log)
PARAULES=$(wc -w "$FITXER" 2>>errors.log)
CARACTERS=$(wc -m "FITXER" 2>>errors.log)
DATA=$(date)

echo "Fitxer analitzat: $FITXER" >> resultats.log
echo "Linies no buides: $LINIES" >> resultats.log
echo "Total Paraules: $PARAULES" >> resultats.log
echo "Data: $DATA" >> resultats.log
echo "Executat per: $USER" >> resultats.log
echo "Directori: $PWD" >> resultats.log
echo "Procès completat! Revisa resultats.log i errors.log"
