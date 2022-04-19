#!/bin/bash

awk '!seen[$0]++' quotes.txt > temp.txt
grep "\S" temp.txt > temp1.txt
awk -F "~" '{print $2, "once said, \"",$1,"\""}' temp1.txt > speech.txt
rm temp.txt temp1.txt