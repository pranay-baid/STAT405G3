#!/bin/bash

#ensure English sort order
export LC_ALL=C

#merge the sorted files using 'sort -m'
sort -m chunk_00 chunk_01 chunk_02 chunk_03 chunk_04 > merged.txt

#convert 'merged.txt' to 'countsOfWords'
cat merged.txt | uniq -c | awk '{print $1 " " $2}' | sort -rn > countsOfWords
