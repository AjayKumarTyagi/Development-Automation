#!/bin/bash
for file in $(ls *.txt)
do
echo $file
echo "no of lines: "$(wc -l < $file )
echo "no of characters: "$(wc -c < $file)
ls -ls $file
cat -n $file
done
