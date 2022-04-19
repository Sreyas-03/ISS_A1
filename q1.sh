#!/bin/bash

awk '!seen[$0]++' quotes.txt > q1b.txt
grep "\S" q1b.txt > q1.txt
grep "\S" quotes.txt > q1a.txt