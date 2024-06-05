#!/bin/bash

for i in 1 2 "Ram" 4
do
 echo "${i}"
done

# most useful


# creating a file override"> and appendinhg ">>" using command

touch a.txt
echo "Ram Shyam Sita">>a.txt


for i in $(cat a.txt)
 do 
  echo "------------------${i}"
done

array=( 1 2 3 4 5 )
# Running for loop in bash
for (( i=0 ; i<${#array[*]} ; i++))
 do 
  echo "value-- ${array[i]}"
done





# reading the csv

cat loop.csv | while IFS="," read id name add #IFS internal field separetor
do 
    echo "id is : $id"
done


cat loop.csv | awk 'NR!=1 {print}' | while IFS="," read id name add # awk use to remove first line //NR!=1' means first line will not include
do 
    echo "id is : $id"
done




# runnnig infinite
for (( ; ; ))
 do 
 echo $(pwd)
 sleep 2s
done


