#!/bin/bash

read -p "Enter 3 numbers with space between them: " a b c

compute=`awk "BEGIN {print ($a % $b)+$c}"`
echo "value of a%b+c is $compute"
