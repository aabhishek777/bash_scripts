#!/bin/bash



array=( 1 2 hi )
# every element would be comma saperated 

#append in array
array+=( 6 9 hello )

echo ${array[*]}


# for length use

echo "lengh: ${#array[*]} and the array is ${array[*]}"
# "#" shows the length for araay an string"
# we can also store in key value pairs

array2=( [one]=1 [two]=2 )

echo ${array2[one]}


