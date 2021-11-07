#!/bin/bash

declare -A computations
read -p "Enter 3 numbers with space in between each " a b c

computations[uc2]=`awk "BEGIN {print $a+($b*$c)}"`
computations[uc3]=`awk "BEGIN {print ($a*$b)+$c}"`
computations[uc4]=`awk "BEGIN {print $c+($a/$b)}"`
computations[uc5]=`awk "BEGIN {print ($a % $b)+$c}"`

echo "computed values dictionary is ${computations[@]}"

declare -a compute_array
compute_array=(${computations[@]})

echo "computed array is ${compute_array[@]}"

