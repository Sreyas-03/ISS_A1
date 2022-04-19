#!/bin/bash

rev=""
partb=""

read -p "enter a string: " string

function reverse()
{    
    s=$1
    size=${#s}
    # echo $size
    for ((i=size-1; i>=0; i--))
    do
        c=${s:$i:1}
        rev=$rev$c

        t1=$(($size /2))

        c=$(echo "$c" | tr "0-9a-zA-Z" "1-9a-zA-Za")
        partb=$partb$c
    done
}

reverse $string # part a
echo part a: $rev # part a
echo part b: $partb # part b


function Partc()
{
    s=$1
    size=${#s}

    t=$(($size/2))
    for ((i=t-1; i>=0; i--))
    do
        c=${s:$i:1}
        partc=$partc$c
    done

    for ((i=t;i<size; i++))
    do
        c=${s:$i:1}
        partc=$partc$c
    done
}
Partc $string
echo part c: $partc

