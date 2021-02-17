#!/bin/bash -x

function primeFactor()
{
	read -p "Please enter the number" num

	temp=$num
	counter=0

	for (( i=2; i<=temp; i++ ))
	do
		while [[ $((num%$i)) == 0 ]]
		do
			array[counter++]=$i
			num=$((num/$i)) 
   	done
	done

	echo "Prime Factor of $temp is : "
	echo "${array[@]} "

}

#function calling
primeFactor
