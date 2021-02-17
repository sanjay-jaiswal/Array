#!/bin/bash
echo "-----DIGIT TWICE REPEATED-----"
read -p "Enter a range from 1-100 " range

count=0

for ((i=0;i<=$range;i++))
do
	if [[ $(($i%10)) -eq $(($i/10)) ]]
	then
		if [ $i -ne 0 ]
		then
			array[count++]=$i
		fi
	fi
done

echo "Digit that are Repeated twice in range from 1-100 is :"
echo "${array[@]}"
