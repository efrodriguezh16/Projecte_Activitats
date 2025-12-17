#!/bin/bash

URL="frontal.ies-sabadell.cat"

until ping -c 1 "$URL" > /dev/null 2>&1; do
    echo "No hay conexión a Internet"
    sleep 5
done

echo "Hay conexión /dev/null 2>&1;"
firefox https://agora.xtec.cat/ies-sabadell/
