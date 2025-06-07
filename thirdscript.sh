#!/bin/bash

# Author: Sagar
# Purpose: Print numbers divisible by 3 and 5 but not by 15

start=1
end=100

echo "Numbers divisible by 3 and 5 but not by 15 from $start to $end:"

for (( i=start; i<=end; i++ ))
do
	if (((i % 3 == 0 || i % 5 == 0) && i % 15 != 0 )); then
        echo "Match : $i"
    fi
done

