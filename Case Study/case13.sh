#!/bin/bash
read -p "enter the password: " password
read -p "enter the file to be encrypted: " fname
name=$(find /home/ajay/ -name $fname)
if [ -f "$name" ]
then
 if [ ${name: -4} == ".gpg" ]
  then
   filename="${name%.*}"
   result=$(gpg -d --batch --passphrase $password $name)
   echo "$result">>$filename
   rm $name
  fi
fi
if [ -d "$name" ]
then
 for f in "$name"/*;
 do
  if [ ${f: -4} == ".gpg" ]
  then
   filename="${f%.*}"
   result=$(gpg -d --batch --passphrase $password $f)
   echo "$result">>$filename
   rm $f
  fi
 done
fi
