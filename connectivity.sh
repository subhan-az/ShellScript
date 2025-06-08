#!/bin/bash
#################
#Author : Sagar
#From: India
#################

read -p "Enter the website to check the connectivity: " site

ping -c 1 $site
sleep 5s

if [[ $? -eq 0 ]]
then
	echo "Successfully connect to $site"
else 
	echo "Unable to connect to $site"
fi
