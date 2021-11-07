#!/bin/bash

read -p "Enter 3 numbers with space in between each " a b c

compute=`awk "BEGIN {print $a+($b*$c)}"`

echo $compute

