#!/bin/bash

file=quotes.txt
if (($# >= 1))
then
    file=$1
fi

echo number of words = $(wc -w $file | awk '{print $1}') # number of words in the file