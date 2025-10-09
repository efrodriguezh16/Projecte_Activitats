#!/bin/bash

read -p "Nom del fitxer:" FITXER

LINIES=$(cat "$FITXER" | grep -v '`^$'| wc -l 2>>errors.log)
PARAULES=$(cat "$FITXER" | wc -w 2>>errors.log)
CARACTERS=$(cat "$FITXER" | wc -m 2>>errors.log)
DATA=$(date)

echo "Fitxer analitzat: $FITXER" >> resultats.log
echo "Linies no buides: $LINIES" >> resultats.log
echo "Total Paraules: $PARAULES" >> resultats.log
echo "Total Caracters: $CARACTERS" >> resultats.log
echo "Data: $DATA" >> resultats.log
echo "Executat per: $USER" >> resultats.log
echo "Directori: $PWD" >> resultats.log
echo "Procès completat! Revisa resultats.log i errors.log"
