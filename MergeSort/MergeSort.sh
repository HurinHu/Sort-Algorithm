#!/bin/bash

function Merge {
	lo=$1
	center=$2
	hi=$3
	tmp=("${array[@]}")  
	i=$lo
	j=$(($center + 1))
	k=$lo
	while (($i <= $center)) && (($j <= $hi))
	do
		if [ ${tmp[$i]} -le ${tmp[$j]} ] 	
		then
			array[$k]=${tmp[$i]}
			i=$(($i + 1))
		else
			array[$k]=${tmp[$j]}
			j=$(($j + 1))
		fi
		k=$(($k + 1))
	done
	while (($i <= $center))
	do
		array[$k]=${tmp[$i]}
		k=$(($k + 1))
		i=$(($i + 1))
	done
}

function MergeSort {
	if [ $1 -lt $2 ]
	then
		center=$((($1+$2)/2))
		MergeSort $1 $center
		MergeSort $(($center + 1)) $2
		Merge $1 $center $2
	fi
}

read input
IFS=' ' read -r -a array <<< "$input"
MergeSort 0 $((${#array[@]} - 1))
echo "${array[*]}"