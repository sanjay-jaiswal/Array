#!/bin/bash
echo "Two 10 Random 3 digit numbers  : "
declare -a arr
i=0

while(($i<10))
do
        arr[$i]=$((100+$RANDOM%900))
        i=$(($i+1))
done

s=0
l=0
s2=0
l2=0
len=${#arr[*]}
max=$(($len-1))

echo ${arr[*]}

for(( i=0; i<$max; i++ ))
do
        for(( j=$(($i+1)); j<$len; j++ ))
        do
                if(( ${arr[$i]}>${arr[$j]} ))
                then
                        temp=${arr[$i]}
                        arr[$i]=${arr[$j]}
                        arr[$j]=$temp
                 fi
        done
done

echo ${arr[*]}

echo 2nd largest value : ${arr[8]}
echo 2nd smallest value : ${arr[1]}

