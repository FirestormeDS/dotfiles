#!/bin/bash

SANDZ_DIR="$HOME/.conky/SandZ"
echo "Preparing To Start SandZ v 1.0"

sleep 1
killall conky
sleep 5

if [[ ! -d $SANDZ_DIR ]]; then
    echo "$SANDZ_DIR Is Missing!"
    echo "Would you like to run the install script? [y or n]"
    read answer
    if [[ "$answer" == "y" ]]; then
        bash install.sh
    else
        exit
    fi
fi

conky -c ~/.conky/SandZ/SandZ
exit
