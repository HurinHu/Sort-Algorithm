#!/bin/bash

function swap {
	tmp=${array[$2]}
	array[$2]=${array[$1]}
	array[$1]=$tmp
}

function Partition {
	pivot=${array[$2]}
	i=$(($1 - 1))
	for j in $(seq $1 $2)
	do
		if [ ${array[$j]} -le $pivot ]
		then
			i=$(($i + 1))
			if [ $i -ne $j ]
			then
				swap $i $j
			fi
		fi
	done
}


function QuickSort {
	if [ $1 -lt $2 ]
	then
		Partition $1 $2
		QuickSort $1 $(($i - 1))
		QuickSort $(($i + 1)) $2
	fi
}

read input
IFS=' ' read -r -a array <<< "$input"
QuickSort 0 $((${#array[@]} - 1))
echo "${array[*]}"