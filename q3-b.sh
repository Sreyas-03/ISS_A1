#!/bin/bash

file=quotes.txt
if (($# >= 1))
then
    file=$1
fi

echo number of lines = $(wc -l $file | awk '{print $1}') # number of lines in the file