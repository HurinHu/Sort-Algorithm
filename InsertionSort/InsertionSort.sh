#!/bin/bash

function swap {
	tmp=${array[$2]}
	array[$2]=${array[$1]}
	array[$1]=$tmp
}

function InsertSort {
	for i in $(seq $1 $2)
	do
		j=$i
		while (( $j > 0 )) && (( ${array[$(($j - 1))]} > ${array[$j]} ))
		do
			swap $(($j - 1)) $j
			j=$j-1
		done
	done
}

read input
IFS=' ' read -r -a array <<< "$input"
InsertSort 0 $((${#array[@]} - 1))
echo "${array[*]}"