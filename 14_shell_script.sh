#!/bin/bash

TOTAL_SPACE=$(free -mt | grep Total | awk '{print $4}')
TH = 4000

if [ "$TOTAL_SPACE" -lt "$TH" ]; then
	echo "Threshold has reached cleanup the space :"
else
	echo"Threshold not reached : $TOTAL_SPACE"
fi
