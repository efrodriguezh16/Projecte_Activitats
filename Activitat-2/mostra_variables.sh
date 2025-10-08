#!/bin/bash

#Variables Globales

echo "$HOME = $HOME"
echo "$USER = $USER"
echo "$SHELL = $SHELL"
echo "$PWD = $PWD"
echo "$PATH = $PATH"

#Arguments passat al script

echo "Argument: $@"

ls -la /home/frodriguezh >/dev/null
echo "Valor retorn última orde: $?"

echo "PID del Shell actual: $$"
