#!/bin/bash
echo "enter the location of the archived files"
read loc
find ${loc} -type f -mtime +2 -exec rm -f {} \;

