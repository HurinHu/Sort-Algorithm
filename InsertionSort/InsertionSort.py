#!/usr/local/bin/python

def swap(array, i, j):
	tmp = array[j]
	array[j] = array[i]
	array[i] = tmp
				
def InsertionSort(array):
	for i in range(len(array)):
		j = i
		while (j > 0) and (array[j-1] > array[j]):
			swap(array, j-1, j)
			j = j-1
	
s = input()
inputArray = [int(x) for x in s.split()]
InsertionSort(inputArray)
print(" ".join(str(x) for x in inputArray))