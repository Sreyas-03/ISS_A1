#!/bin/bash

x=$#

num=($@)

echo intial list = ${num[*]}


for ((i = 0; i<x; i++))
do
    
    for((j = 0; j<x-i-1; j++))
    do
    
        if [ ${num[j]} -gt ${num[$((j+1))]} ]
        then
            temp=${num[j]}
            num[$j]=${num[$((j+1))]}  
            num[$((j+1))]=$temp
            # num[j]=((${num[i]}+${num[i]}-$((${num[i]}=${num[i]}))))
        fi
    done
done

echo sorted list = ${num[*]}