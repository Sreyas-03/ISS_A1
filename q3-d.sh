#!/bin/bash

file=quotes.txt
if (($# >= 1))
then
    file=$1
fi

awk '{print "Line No:",((1+i++)),"-",NF}' $file > wordsPerLine.txt # number of words on each line