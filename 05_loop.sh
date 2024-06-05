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

