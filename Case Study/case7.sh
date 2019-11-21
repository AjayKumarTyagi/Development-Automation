#!/bin/bash
read -p "enter device name: " device
read -p "enter threshold limit: " limit
name=$(cat /etc/hostname | grep $device)
echo "$name" 
if [ -z $name ]
then
 echo "Error: no such device name"
 exit 0
fi
space_used=$(df . | awk 'NR==2 { print $5 }' | cut -d '%' -f1)
if [ $space_used -ge $limit ];
then
echo "Running out of space \"$device ($space_used%)\" on $(hostname) as on $(date)"
else
echo "space is enough. Space used: $space_used"
fi

