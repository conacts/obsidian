#### Selection Sort
A sorting algorithm that sorts an array by repeatedly finding the minimum element and putting it at the beginning of the array

**Input:** Unsorted array
**Output:** Sorted array
**Time Complexity:** $O(n^2)$ 
- Two nested loops
**Space Complexity:** $O(1)$
- We only use one array

![[selection_sort.gif]]


##### Selection Sort Algorithm
``` python
def selection_sort(arr):
	for i in range(len(arr)):
		# find the minimum element
		min_index = i
		for j in range(i+1, len(arr)):
			if arr[min_index] > arr[j]:
				min_index = j

		# swap cur_index with min_index
		tmp = arr[i]
		arr[i] = arr[min_index]
		arr[min_index] = tmp

	return arr

# visualize
arr = [5, 22, 4, 16, 12, 15, 21, 4, 8]
print(arr)
# [5, 22, 4, 16, 12, 15, 21, 4, 8]
print(selection_sort(arr))
# [4, 4, 5, 8, 12, 15, 16, 21, 22]

```

#### Bubble Sort
Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in the wrong order

**Input:** Unsorted array
**Output:** Sorted array
**Time Complexity:** $O(n^2)$ 
- Can be $O(n)$ if each element is 1 index away from correct index
- Even if the array is sorted, the time complexity is still $O(n^2)$ 
**Space Complexity:** $O(1)$
- We only use one array

![[bubble_sort.gif]]

``` python
def bubble_sort(arr):
	n = len(arr)
	for i in range(len(arr)):
		for j in range(0, n-i-1):
			if arr[j] > arr[j+1]:
				tmp = arr[j]
				arr[j] = arr[j+1]
				arr[j+1] = tmp
	return arr
	
# visualize
arr = [5, 22, 4, 16, 12, 15, 21, 4, 8]
print(arr)
# [5, 22, 4, 16, 12, 15, 21, 4, 8]
print(bubble_sort(arr))
# [4, 4, 5, 8, 12, 15, 16, 21, 22]
```

#### Insertion Sort 
A sorting algorithm that finds an unsorted element and places it in its proper location relative to the elements it has previously visited

**Input:** Unsorted array
**Output:** Sorted array
**Time Complexity:** $0(n^2)$ 
- Takes minimum $O(n)$ when array is already sorted
- Takes maximum time of $O(n^2)$ if you sort elements in reverse order
**Space Complexity:** $0(1)$
- We only use one array

![[insertion_sort.gif]]

``` python
def insertion_sort(arr):
	for i in range(1, len(arr)):
		key = arr[i]
		
		j = i-1
		while j >= 0 and key < arr[j]:
			arr[j+1] = arr[j]
			j -= 1
		arr[j+1] = key
	return arr

# visualize
arr = [5, 22, 4, 16, 12, 15, 21, 4, 8]
print(arr)
# [5, 22, 4, 16, 12, 15, 21, 4, 8]
print(insertion_sort(arr))
# [4, 4, 5, 8, 12, 15, 16, 21, 22]
```

#### Quick Sort 
A divide and conquer algorithm which works by picking a "pivot" element and partitions the array around that "pivot". 
There are 4 ways we pick the pivot:
1. Pick first element as pivot
2. Pick last element as pivot
3. Pick a random element as pivot
4. pick median as pivot

**Input:** Unsorted array
**Output:** Sorted array
**Time Complexity:**
- Worst: $O(n^2)$ 
- Typically: $O(n \log n)$
**Space Complexity:** $0(1)$

![[Pasted image 20220509004431.png |500]]

``` python
# partition to select pivot
def partition(arr, low, high):
	# selects end of arr
	pivot = arr[high]
	
	i = low - 1
	for j in range(low, high):
		if arr[j] <= pivot:
			i += 1
			
			# swap elements
			tmp = arr[i]
			arr[i] = arr[j]
			arr[j] = tmp
		
	# swap the pivot elemnt with the greater element "i"
	tmp = arr[i+1]
	arr[i+1] = arr[high]
	arr[high] = tmp
		
	return i+1

# quick sort algorithm
def quick_sort(arr, low, high):
	if low < high:
		pivot = partition(arr, low, high)
		
		quick_sort(arr, low, pivot-1)
		
		quick_sort(arr, pivot+1, high)

# visualize
arr = [5, 22, 4, 16, 12, 15, 21, 4, 8]
print(arr)
# [5, 22, 4, 16, 12, 15, 21, 4, 8]
quick_sort(arr, 0, len(arr)-1)
print(arr)
# [4, 4, 5, 8, 12, 15, 16, 21, 22]
```

#### Merge Sort
A divide and conquer algorithm, similar to [[402 Sorting Algorithms#Quick Sort|quick sort]], which divides the input array into two halevs recursively until it merges the sorted halves.

**Input:** Unsorted array
**Output:** Sorted array
**Time Complexity:**
- Worst: $O(n^2)$ 
- Typically: $O(n \log n)$
**Space Complexity:** $0(n)$
- We use $N$ arrays
![[Pasted image 20220509012204.png]]
``` python
def merge_sort(arr):
	if len(arr) > 1:
		mid = len(arr) // 2
		l = arr[:mid]
		r = arr[mid:]
		
		merge_sort(l)
		merge_sort(r)
		
		i = j = k = 0
		while i < len(l) and j < len(r):
			if l[i] < r[j]:
				arr[k] = l[i]
				i += 1
			else:
				arr[k] = r[j]
				j += 1
			k += 1
		
		while i < len(l):
			arr[k] = l[i]
			i += 1
			k += 1
		
		while j < len(r):
			arr[k] = r[j]
			j += 1
			k += 1

# visualize
arr = [5, 22, 4, 16, 12, 15, 21, 4, 8]
print(arr)
# [5, 22, 4, 16, 12, 15, 21, 4, 8]
merge_sort(arr)
print(arr)
# [4, 4, 5, 8, 12, 15, 16, 21, 22]
```

#### Heap Sort 
A sorting algorithm utilizing the **binary heap** data structure where we find the minimum element and place it in the beginning. This is very similar to the [[402 Sorting Algorithms#Selection Sort|selection sort algorithm]]. 

**Steps:**
1. Translate array into **binary heap**
``` text
Input data: 4, 10, 3, 5, 1
         4(0)
        /   \
     10(1)   3(2)
    /   \
 5(3)    1(4)
```
2. Run heap sort algorithm

**Input:** Unsorted array
**Output:** Sorted array
**Time Complexity:**
- Heap sort: $O(n \log n)$
- Create heap: $O(n \log n)$
- Time Complexity = Create heap + Heap sort
**Space Complexity:** $0(n)$
- We use create a heap

![[heap_sort.gif]]

#### Radix Sort
An attempt to create an $O(n)$ sorting algorithm that sorts integers by the least significant digit

**Input:** Unsorted array
**Output:** Sorted array
**Time Complexity:** $O(d \cdot (n + b)) = O(n \log_b n)$  
- $b$ is [[271 Number and Binary Representation#Bases|number base]] 
- $k$ is the range of elements
- $d$ is a multiplication value
	- if $k=\text{max}$ , then $d = O(\log_b (k))$ 
**Space Complexity:** $O(k + n)$ 

![[radix_sort.gif]]