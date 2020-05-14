#!/bin/bash -x
IsHead=0;
randomCheck=$(( RANDOM%2 ))

if [[ IsHead -eq randomCheck ]]
then
	echo "Head"
else
	echo "Tail"
fi
