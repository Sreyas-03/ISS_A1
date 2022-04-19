#!/bin/bash

file=quotes.txt
if (($# >= 1))
then
    file=$1
fi

tr "[[:space:]&&~]" "\n" < $file| sed 's/[[:punct:]]$//' | sort -f | uniq -ic > temp.txt
sed '/[A-Za-z]/!d' temp.txt > temp1.txt
awk '{print "Word:",$2,"-",$1}' temp1.txt > wordFreq.txt
rm temp.txt temp1.txt