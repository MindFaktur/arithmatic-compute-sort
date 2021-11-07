#!/bin/bash

read -p "Enter 3 numbers with space in between them: " a b c

compute=`awk "BEGIN {print ($*$b)+$c}"`

echo "Value of a*b+c is $compute"
