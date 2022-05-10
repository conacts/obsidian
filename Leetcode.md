Categories:

[[402 Sorting Algorithms|Sort]]
[[402 Sorting Algorithms#Merge Sort|Merge Sort]]
[[403 Designing Algorithms#Divide and Conquer Algorithm|Divide and Conquer]]


#### 1. Two Sum
[Problem Link](https://leetcode.com/problems/two-sum/) 
Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`. 

- Array
- Hashmap


[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/sorting/twoSum.py) 
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/sorting/twoSum.cpp) 

``` python
def twoSum(self, nums: List[int], target: int) -> List[int]:
    d = {}
    for i in range(len(nums)):
        look = target - nums[i]
        if look in d:
            return [i, d[look]]
        d[nums[i]] = i
```

#### 15. Three Sum
[Problem Link](https://leetcode.com/problems/3sum/) 
Given an integer array nums, return all the triplets `[nums[i], nums[j], nums[k]]` such that `i != j`, `i != k`, and `j != k`, and `nums[i] + nums[j] + nums[k] == 0`.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/sorting/threeSum.py)


#### 18. Four Sum (FINISH)
[Problem Link](https://leetcode.com/problems/4sum/)
Given an array `nums` of `n` integers, return _an array of all the **unique** quadruplets_ `[nums[a], nums[b], nums[c], nums[d]]` such that:

-   `0 <= a, b, c, d < n`
-   `a`, `b`, `c`, and `d` are **distinct**.
-   `nums[a] + nums[b] + nums[c] + nums[d] == target`

[Python Solution]()


#### 104. Maximum Depth of Binary Tree 
[Problem Link](https://leetcode.com/problems/maximum-depth-of-binary-tree/)
Given the `root` of a binary tree, return _its maximum depth_.

A binary tree's **maximum depth** is the number of nodes along the longest path from the root node down to the farthest leaf node.

[Python solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/max_depth_binary_tree.py) 

##### Recursive Solution (104)
``` python
def maxDepth(self, root: Optional[TreeNode]) -> int:
    if not root:
        return 0
    elif not root.left and not root.right:
        return 1
    else:
        l = self.maxDepth(root.left)
        r = self.maxDepth(root.right)
        if r > l:
            return 1 + r
        else:
            return 1 + l
```

#### 148. Sort List
[Problem Link](https://leetcode.com/problems/sort-list/)
Given the `head` of a linked list, return _the list after sorting it in **ascending order**_

##### Intuitive Sort List (148)
The intuitive sort list explicitly codes out merge sort and sorts the linked list
``` python 
class Solution:
    def sortList(self, head):
        if not head or not head.next: return head
        mid = self.getMid(head)
        left = self.sortList(head)
        right = self.sortList(mid)
        return self.merge(left, right)
    
    def getMid(self, head):
        slow, fast = head, head
        while fast.next and fast.next.next:
            slow = slow.next
            fast = fast.next.next
        mid = slow.next
        slow.next = None
        return mid
    
    def merge(self, head1, head2):
        dummy = tail = ListNode(None)
        while head1 and head2:
            if head1.val < head2.val:
                tail.next, tail, head1 = head1, head1, head1.next
            else:
                tail.next, tail, head2 = head2, head2, head2.next
    
        tail.next = head1 or head2
        return dummy.next

```

##### Optimal Sort List (148)
This solution uses python's default sort algorithm, **tim sort**. The array is transformed from linked list into an array $O(n)$, sorted $O(n log n)$ and then transformed back into a linked list $O(n)$
``` python
class Solution:
    def sortList(self, head: Optional[ListNode]) -> Optional[ListNode]:
        vals = []
        temp = head
        
        while temp:
            vals.append(temp.val)
            temp = temp.next
            
        vals.sort()
        temp = head
        
        for val in vals:
            temp.val = val
            temp = temp.next
            
        return head
```


#### 167. Two Sum 2
[Problem Link](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/)
Given a **1-indexed** array of integers `numbers` that is already **_sorted in non-decreasing order_**, find two numbers such that they add up to a specific `target` number. Let these two numbers be `numbers[index1]` and `numbers[index2]` where `1 <= index1 < index2 <= numbers.length`.

Return _the indices of the two numbers,_ `index1` _and_ `index2`_, **added by one** as an integer array_ `[index1, index2]` _of length 2._

The tests are generated such that there is **exactly one solution**. You **may not** use the same element twice.

Your solution must use only constant extra space.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/sorting/twoSum2.py)
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/sorting/twoSum2.cpp)

``` python
def twoSum(self, numbers: List[int], target: int) -> List[int]:
    l = 0
    r = len(numbers) - 1
    while l != r:
        t = numbers[r] + numbers[l]
        if t == target:
            return [l+1, r+1]
        elif t > target:
            r -= 1
        elif t < target: 
            l += 1
```

#### 268. Missing Number
[Problem Link](https://leetcode.com/problems/missing-number/)
Given an array `nums` containing `n` distinct numbers in the range `[0, n]`, return _the only number in the range that is missing from the array._

- Array
- Hashmap
- Math
- Bit Manipulation
- Sorting

##### Bit Manipulation Solution (268)
Using [[272 Computer Components#XOR Gate|XOR]] we can find the missing bit
``` python
def missingNumber(self, nums: List[int]) -> int:
    solution = 0
    for i in range(len(nums)):
        solution ^= i+1
        solution ^= nums[i]
    return solution
```

##### Math Solution (268)
Math to find the missing number in a range of numbers
``` python
def missingNumber(self, nums: List[int]) -> int:
    n = len(nums)
    return n * (n + 1) // 2 - sum(nums)
```