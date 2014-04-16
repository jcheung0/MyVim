#!/bin/bash

export config="$(pwd)/vimrc"
export slfile=~/.vimrc  

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
