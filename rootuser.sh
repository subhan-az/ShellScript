#!/bin/bash
###############
#Author: Sagar
#Place: banglore, Karnataka
###############

if [[ $UID -eq 0 ]] 
then
	echo "User is root user"
else
	echo "User is not root user"
fi
