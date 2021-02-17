#!/bin/bash
echo "10 Random number without sorting :"
declare -a arr
i=0

while(($i<10))
do
arr[$i]=$((100+$RANDOM%900))
i=$(($i+1))
done

s=0
l=0
s2=1
l2=2
len=${#arr[*]}
max=$(($len-1))

        for(( i=1; i<$len; i++ ))
        do
                if(( ${arr[$s]}>${arr[$i]} ))
                then
                        s2=$s
                        s=$i
                elif(( ${arr[$s2]}>${arr[$s]} && ${arr[$s2]}>${arr[$i]}  ))
                then s2=$i
                fi

                if(( ${arr[$l]}<${arr[$i]} ))
                then
                        l2=$l
                        l=$i
                elif(( ${arr[$l2]}<${arr[$i]} ))
                        then l2=$i
                fi

        done

echo ${arr[*]}

#echo largest ${arr[$l]} smallest ${arr[$s]}
echo "2nd largest is : ${arr[$l2]}"
echo "2nd smallest is : ${arr[$s2]}"
