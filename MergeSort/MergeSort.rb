#!/usr/bin/ruby

def Merge(array, lo, center, hi)
	tmp = [] 
	tmp.replace(array)
	i = lo
	j = center+1
	k = lo
	while i <= center && j <= hi
		if tmp[i] <= tmp[j]
			array[k] = tmp[i]
			i = i+1
		else
			array[k] = tmp[j]
			j = j+1
		end
		k = k+1
	end
	while i <= center
		array[k] = tmp[i]
		k = k+1
		i = i+1
	end
end

def MergeSort(array, lo, hi)
	if lo < hi
		center = (lo + hi)/2
		MergeSort(array, lo, center)
		MergeSort(array, center+1, hi)
		Merge(array, lo, center, hi)
	end
end

s = gets.chomp
inputArray = s.split(' ').map(&:to_i)
MergeSort(inputArray, 0, inputArray.length-1)
puts inputArray.join(" ")