#!/usr/bin/python

def Merge(array, lo, center, hi):
	tmp = array.copy()
	i = lo
	j = center+1
	k = lo
	while (i <= center) and (j <= hi):
		if tmp[i] <= tmp[j]:
			array[k] = tmp[i]
			i = i+1
		else:
			array[k] = tmp[j]
			j = j+1
		k = k+1
	while (i <= center):
		array[k] = tmp[i]
		k = k+1
		i = i+1

def MergeSort(array, lo, hi):
	if lo < hi:
		center = int((lo + hi)/2)
		MergeSort(array, lo, center)
		MergeSort(array, center+1, hi)
		Merge(array, lo, center, hi)

s = input()
inputArray = [int(x) for x in s.split()]
MergeSort(inputArray,0,len(inputArray)-1)
print(" ".join(str(x) for x in inputArray))