#!/bin/bash

myString="HI! my name is Abhishek Singh"
#length of string 
echo ${#myString}


echo "$myString"

#upper case
echo ${mySttring^^}

#lower case

echo ${myString,,}

# replace a string
echo "${myString/HI/HELLO}"

# slice in string 
echo "${myString:4:10}"



