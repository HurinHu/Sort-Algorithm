#!/usr/local/bin/python

def swap(array, i, j):
	tmp = array[j]
	array[j] = array[i]
	array[i] = tmp
	
def Partition(array, lo, hi):
	pivot = array[hi]
	i = lo-1
	for j in range(lo,hi+1):
		if array[j] <= pivot:
			i = i+1
			if i != j:
				swap(array,i,j)
	return i
				
def QuickSort(array, lo, hi):
	if lo < hi:
		p = Partition(array, lo, hi)
		QuickSort(array, lo, p-1)
		QuickSort(array, p+1, hi)
	
s = input()
inputArray = [int(x) for x in s.split()]
QuickSort(inputArray, 0, len(inputArray)-1)
print(" ".join(str(x) for x in inputArray))