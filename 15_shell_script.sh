#!/bin/bash

DS=$(df -h | grep "drivers" | awk '{print $5}' | tr -d %)

if [[ "$DS" -ge 50 ]]; then
	echo "Disk is full: $DS"
else 
	echo "Disk is free to use : $DS"
fi
