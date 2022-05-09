### Incremental Algorithm
An algorithm type which incrementally manipulates the input until it becomes the output. 

#### Static Incremental Algorithm
Transforms a program $P$ before any inputs are provided

#### Dynamic Incremental Algorithm


### Divide and Conquer Algorithm
A recursive style of solving problems where they break the problem into several subproblems that are similar to the original problem but smaller in size. The combination of all these smaller sub-problems forms the correct solution

1. **Divide** the original problem into subproblems
2. **Conquer** the subproblems recursively
3. **Combine** the subproblems into the original problem


###### Example :: [[402 Sorting Algorithms#Merge Sort|Merge sort's]] divide and conquer
> 1. **Divide** the $n$-element sequence to be sorted into two subsequences of $\frac{n}{2}$ elements each
> 2. **Conquer**, sort the two subsequences recursively using merge sort
> 3. **Combine** the two sorted subsequences to produce the sorted answer