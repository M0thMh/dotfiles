#!/bin/bash
x=$(pacman -Qu)

if [$x == ""]
then
	echo "no update available"
else
	echo "update available"
fi	
