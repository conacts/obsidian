##### Big O
A measurement to describe the efficiency of algorithms
![[Pasted image 20220604011617.png|400]] 

# Time Complexity
The rounded measurement of how long algorithm will take on average

#### O($1$)
An algorithm with constant time complexity. This means no matter how large the amount of data the algorithm will always (roughly) take the same amount of time
![[Pasted image 20220604011654.png]]

###### Examples of O(1)
> - [[404 Data Structures#Push S x|Pushing to a stack]]
> - [[404 Data Structures#Pop S|Popping from a stack]]
> - [[404 Data Structures#Enqueue Q x|Enqueue]] 
> - [[404 Data Structures#Dequeue Q|Dequeue]]

#### O($\log n$) 
An algorithm which is best case $O(1)$, yet faster than $O(n)$. This occurs due to algorithms such as DIVIDE AND CONQUER used such that you don't have to visit each piece of data. 

![[Pasted image 20220604012507.png |400]]

###### Examples of O($\log n$)
> - [[402 Sorting and Traversal Algorithms#Merge Sort|Merge Sort]]
> - [[402 Sorting and Traversal Algorithms#Quick Sort|Quick Sort]]

###### Code Example of O($\log n$)
``` python
# not-recursive
def binary_search(arr):
    # Repeat until the pointers low and high meet each other
    while low <= high:
        mid = low + (high - low)//2

        if array[mid] == x:
            return mid

        elif array[mid] < x:
            low = mid + 1

        else:
            high = mid - 1
    return None
```

#### O($n$)
An algorithm with linear time complexity. As the size of the data increases, the time of the algorithm increases linearly. 
![[Pasted image 20220604011637.png]]

###### Examples of O($n$)
> [[404 Data Structures#Search S x]]
> [[404 Data Structures#Insert L x]]
> [[404 Data Structures#Delete L x]]

#### O($n^2$)
An algorithm with polynomial time. As the size of the data increases, the time of the algorithm increases equal to the data squared $(n^2)$ 
![[Pasted image 20220604011920.png]]

#### O($n^n$)
# Space Complexity
The rounded measurement of how much space an algorithm will use