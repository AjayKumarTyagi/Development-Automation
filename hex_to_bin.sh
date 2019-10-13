#!/bin/bash
read -p "enter hexadecimal number: " hex
echo "binary conversion is: "
echo "ibase=16;obase=2;$hex" | bc
