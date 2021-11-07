#!/bin/bash

declare -A computations
read -p "Enter 3 numbers with space in between each " a b c

computations[uc2]=`awk "BEGIN {print $a+($b*$c)}"`
computations[uc3]=`awk "BEGIN {print ($a*$b)+$c}"`
computations[uc4]=`awk "BEGIN {print $c+($a/$b)}"`
computations[uc5]=`awk "BEGIN {print ($a % $b)+$c}"`

echo "computed values dictionary is ${computations[@]}"

declare -a computed_array
computed_array=(${computations[@]})
echo "computed array is ${computed_array[@]}"


for (( i=0;i<=5;i++ ))
do
	for (( j=0;j<=5-$i;j++ ))
	do
		value=`awk -v num1="${computed_array[$i]}" -v num2="${computed_array[$j]}" 'BEGIN {print (num1 > num2 ? "T" : "F")}'`
		answer=T
		if (( $value==$answer ))
		then
			k=0
		else
			temp=${computed_array[$j]}
			computed_array[$j]=${computed_array[$i]}
			computed_array[$i]=${computed_array[$temp]}
			abso[$i]=${computed_array
		fi
	done
done

echo "new array is ${computed_array[@]}"
