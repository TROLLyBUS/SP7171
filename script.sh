#!/bin/bash

echo "student: eliubaev_ramazan"
echo "program: script.sh"
echo "description: script for docker container"

basename $(pwd)

read -p "Enter filename: " fname
if [ -f $fname ]; then
	echo "Your rwx rights for file $fname"
	ls -l $fname | awk "{print $1}" | cut -c 2-4
else
	echo "No such file"
fi

while true; do
	read -p "Do you want to continue? (y/n)" yn
	case $yn in
		[Yy]* ) read -p "Enter filename: " fname
			if [ -f $fname ]; then
				echo "Your rwx rights for file $fname"
				ls -l $fname | awk "{print $1}" | cut -c 2-4
			else
				echo "No such file"
			fi;;
		[Nn]* ) exit;;
		* ) echo "Please enter y(Y) or n(N)"
	esac
done
