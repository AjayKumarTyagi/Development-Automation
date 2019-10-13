#!/bin/bash
read -p "enter the password: " password
read -p "enter the file to be encrypted: " fname
name=$(find /home/ajay/ -name $fname)
if [ -f "$name" ]
then
 echo "$name"
 gpg -c --batch --passphrase $password $name
 rm $name
fi
if [ -d "$name" ]
then
 for f in "$name"/*;
 do
   gpg -c --batch --passphrase $password $f
   rm $f
 done
fi

