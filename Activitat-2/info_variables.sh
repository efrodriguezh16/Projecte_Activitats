#!/bin/bash

read -p "Introdueix el nom de la variable:" variable

echo "Has triat la variable: $variable"
echo "L'últim codi de retorn es: $?"

echo "L'argument passat al script es: $@"
echo "L'últim codi de retorn es: $?"

echo "El PID del Shell es: $$"
echo "L'últim codi de retorn es: $?"

