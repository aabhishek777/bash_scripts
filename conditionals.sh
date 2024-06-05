#!/bin/bash

# for if elif consdition 

read -p "enter your marks:" marks
if [[ marks -gt 80 ]]
 then
	echo "topper"
elif [[ marks -eq 70 ]]
 then
	echo "very good"
else  
	echo "you are looser"
fi


# using a switch case

echo -e "Choose one Option\npress "a" for show time\npress "b" for showing dir\npress "c" for list scripts\n"

read -p "enter your option:" choice

case ${choice} in 
	a) date;;
	b) pwd;;
	c) ls;;
	*) echo "Enter valid letter"
esac



