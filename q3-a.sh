#!/bin/bash

file=quotes.txt
if (($# >= 1))
then
    file=$1
fi


# echo size = $(stat --format="%s" $file) Bytes #size in bytes
echo size = $(ls -l $file | awk '{print $5}')