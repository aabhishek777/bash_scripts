#!/bin/bash

read -p "Enter the website you want to ping with/connectivity check" ping

ping -c $ping &> /dev/null


ping -c $ping


if[[ $? eq 0 ]]
then 
	echo "successfully connected"
else
	echo "problem in connecting"
fi
