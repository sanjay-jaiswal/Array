#!/bin/bash

echo "Please Enter Three Numbers :"

for (( i=0;i<3;i++ ))
do
		read -p "Enter the Number one by one : " Number
		Array[i]=$Number
done


Result=0
for (( i=0;i<3;i++ ))
do
			Result=$(( $Result+${Array[i]} ))

done


if (( $Result==0 ))
then
			echo "Sum is :$Result"
else
			echo "Sum is not zero"
fi
