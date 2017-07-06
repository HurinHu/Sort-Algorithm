#!/usr/bin/ruby

def swap(array, i, j)
	tmp = array[j]
	array[j] = array[i]
	array[i] = tmp
end

def Partition(array, lo, hi)
	pivot = array[hi]
	i = lo-1
	for j in lo..hi
		if array[j] <= pivot
			i = i+1
			if i != j
				swap(array,i,j)
			end
		end
	end
	return i
end
				
def QuickSort(array, lo, hi)
	if lo < hi
		p = Partition(array, lo, hi)
		QuickSort(array, lo, p-1)
		QuickSort(array, p+1, hi)
	end
end

s = gets.chomp
inputArray = s.split(' ').map(&:to_i)
QuickSort(inputArray, 0, inputArray.length-1)
puts inputArray.join(" ")