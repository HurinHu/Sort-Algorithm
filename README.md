Sorting Algorithms
==================

This is a sorting algorithms responsitory.

QuickSort
---------

Time Complexity: Best Ω(nlogn), average Θ(nlogn), worst O(n^2)

```
algorithm quicksort(A, lo, hi) is
    if lo < hi then
        p := partition(A, lo, hi)
        quicksort(A, lo, p – 1)
        quicksort(A, p + 1, hi)

algorithm partition(A, lo, hi) is
    pivot := A[hi]
    i := lo - 1    
    for j := lo to hi do
        if A[j] ≤ pivot then
            i := i + 1
            if i ≠ j then
                swap A[i] with A[j]
    return i
```

* [C](https://github.com/HurinHall/Sort-Algorithm/blob/master/QuickSort/QuickSort.c)
* [Java](https://github.com/HurinHall/Sort-Algorithm/blob/master/QuickSort/QuickSort.java)
* [Python](https://github.com/HurinHall/Sort-Algorithm/blob/master/QuickSort/QuickSort.py)
* [Ruby](https://github.com/HurinHall/Sort-Algorithm/blob/master/QuickSort/QuickSort.rb)
* [PHP](https://github.com/HurinHall/Sort-Algorithm/blob/master/QuickSort/QuickSort.php)
* [Bash](https://github.com/HurinHall/Sort-Algorithm/blob/master/QuickSort/QuickSort.sh)
* [Perl](https://github.com/HurinHall/Sort-Algorithm/blob/master/QuickSort/QuickSort.pl)

InsertionSort
-------------

Time Complexity: Best Ω(n), average Θ(n^2), worst O(n^2)

```
for i = 1 to length(A)
    j ← i
    while j > 0 and A[j-1] > A[j]
        swap A[j] and A[j-1]
        j ← j - 1
    end while
end for
```
* [C](https://github.com/HurinHall/Sort-Algorithm/blob/master/InsertionSort/InsertionSort.c)
* [Java](https://github.com/HurinHall/Sort-Algorithm/blob/master/InsertionSort/InsertionSort.java)
* [Python](https://github.com/HurinHall/Sort-Algorithm/blob/master/InsertionSort/InsertionSort.py)
* [Ruby](https://github.com/HurinHall/Sort-Algorithm/blob/master/InsertionSort/InsertionSort.rb)
* [PHP](https://github.com/HurinHall/Sort-Algorithm/blob/master/InsertionSort/InsertionSort.php)
* [Bash](https://github.com/HurinHall/Sort-Algorithm/blob/master/InsertionSort/InsertionSort.sh)
* [Perl](https://github.com/HurinHall/Sort-Algorithm/blob/master/InsertionSort/InsertionSort.pl)
