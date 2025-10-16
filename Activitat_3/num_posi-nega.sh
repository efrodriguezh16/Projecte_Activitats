#!/bin/bash

read -p "Introduce un numero: " NUM

if [[ $NUM -lt 0 ]]; then 
echo "El numero es negatiu"

else
echo "El numero es positiu"

fi
