#!/bin/bash
###############
#Author:sagar
#from: banglore, Karnataka
################

read -p "enter a number : " num

if(( num <=1 )); then
	echo "$num is Not prime number"
	exit 0;
fi

for (( i=2; i*i<=num; i++ ))
do
	if(( num % i == 0 )); then
		echo "$num is not prime"
		exit 0;
	fi
done

echo "$num is prime"
