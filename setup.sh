#!/bin/bash

if "$(type -p "git")"; then 
    echo "git is installed"
fi

export config="$(pwd)/vimrc"
export slfile=~/.vimrc  
export tmuxconf="$(pwd)/tmux.conf"
export eclimrc=~/.eclimrc

if [ -f $config ];
then 
	echo "=> File $config does exist"
	
	if [ -L $slfile ];
	then 
		echo " => There is symbolic link for the vimfile"
	else 
		echo " => creating symbolic link"
		ln -s $config $slfile    
	fi

else 
	echo "File $config does not exist"  
fi 

if [ -f $eclimrc ];
then
    if [ -L $eclimrc ];
    then
        ln -s "$(pwd)/eclimrc" $eclimrc 
    fi
fi
