#!/bin/bash

CONKY_DIR="$HOME/.conky"


if [[ ! -d $CONKY_DIR ]]; then
	echo "$CONKY_DIR missing! Creating it now...."
	sleep 5
	sudo mkdir ~/.conky
	echo "$CONKY_DIR Successfully Created!"
fi
	echo "directory <<~/.conky>> Found..."
	sleep 5
        echo "Installing fonts..."
	 ls fonts | xargs -IX cp fonts/X ~/.fonts
  sleep 5
	echo "Fonts Installed Successfully!"
sleep 5
  	 echo "Preparing to copy core files....."
 	cp -f -r $PWD ~/.conky/SandZ
sleep 5
	echo "all files copied successfully!"
sleep 5

        echo "would you open conky manager? [y or n]"
        read answer
        if [ "$answer" == "y" ] ;then 
        conky-manager2
	exit
	else
    echo "Would you like to run the start script now? [y or n]"
    read answer
    if [[ "$answer" == "y" ]]; then
        bash start_script.sh
    fi
fi

exit

