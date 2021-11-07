#!/bin/bash

read -p "Enter 3 numbers with space in between  them: " a b c

compute=`awk "BEGIN {print $c+($a/$b)}"`

echo "Value of c+a/b is $compute"
