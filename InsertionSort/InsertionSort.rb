#!/usr/bin/ruby

def swap(array, i, j)
	tmp = array[j]
	array[j] = array[i]
	array[i] = tmp
end

def InsertionSort(array)
	for i in 0..array.length-1
		j = i
		while j > 0 && array[j-1] > array[j]
			swap(array,j-1,j)
			j = j-1
		end
	end
end

s = gets.chomp
inputArray = s.split(' ').map(&:to_i)
InsertionSort(inputArray)
puts inputArray.join(" ")