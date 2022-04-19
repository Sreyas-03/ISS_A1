#!/bin/bash

file=quotes.txt
if (($# >= 1))
then
    file=$1
fi


# echo size = $(stat --format="%s" $file) Bytes #size in bytes
echo size = $(ls -l $file | awk '{print $5}')

echo number of lines = $(wc -l $file | awk '{print $1}') # number of lines in the file

echo number of words = $(wc -w $file | awk '{print $1}') # number of words in the file

awk '{print "Line No:",((1+i++)),"-",NF}' $file > wordsPerLine.txt # number of words on each line

tr "[[:space:]&&~]" "\n" < $file| sed 's/[[:punct:]]$//' | sort -f | uniq -ic > temp.txt
sed '/[A-Za-z]/!d' temp.txt > temp1.txt
awk '{print "Word:",$2,"-",$1}' temp1.txt > wordFreq.txt
rm temp.txt temp1.txt
