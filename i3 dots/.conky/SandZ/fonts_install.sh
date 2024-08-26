#!/bin/bash

FONTS_DIR="$HOME/.fonts"
if [[ ! -d "$FONTS_DIR" ]]; then
  echo "Fonts directory is missing"
  echo " Creating Fonts Directory Now!"
	sudo mkdir ~/.fonts
  sleep 5

  echo "# Directory successfully Created"
  sleep 5
fi
  echo "Installing fonts..."
	 ls fonts | xargs -IX cp fonts/X ~/.fonts
  sleep 5

	echo "Fonts successfully installed"
   echo "would you like to run the start script now?? [y or n]"
        read answer
        if [ "$answer" == "y" ] ;then 
        bash start_up.sh
        fi
       exit