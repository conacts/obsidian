Categories:
[[402 Sorting Algorithms|Sort]]
[[402 Sorting Algorithms#Merge Sort|Merge Sort]]
[[403 Designing Algorithms#Divide and Conquer Algorithm|Divide and Conquer]]

[[Leetcode#9 Palindrome Number]]
#### 1. Two Sum
[Problem Link](https://leetcode.com/problems/two-sum/) 
Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`. 

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/sorting/twoSum.py) 
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/sorting/twoSum.cpp) 

###### Hashmap Solution (1)
``` python
def twoSum(self, nums: List[int], target: int) -> List[int]:
    d = {}
    for i in range(len(nums)):
        look = target - nums[i]
        if look in d:
            return [i, d[look]]
        d[nums[i]] = i
    return
```

**Runtime:** 74 ms : 74.03%
**Memory Usage:** 15.2 MB : 49.53%

#### 7. Reverse Integer
[Problem Link](https://leetcode.com/problems/reverse-integer/)
Given a signed 32-bit integer `x`, return `x` _with its digits reversed_. If reversing `x` causes the value to go outside the signed 32-bit integer range `[-231, 231 - 1]`, then return `0`.

**Assume the environment does not allow you to store 64-bit integers (signed or unsigned).**



``` python
class Solution:
    def reverse(self, x: int) -> int:
        if x < 0: 
            x = str(x)
            x = x[1:]
            x = -int(x[::-1])
            if x < -2147483647:
                return 0
            else:
                return x
        else:
            x = str(x)
            x = int(x[::-1])
            if x > 2147483647:
                return 0
            else:
                return x
```

**Runtime:** 56 ms : 24.73%
**Memory Usage:** 14 MB : 16.33%

#### 9. Palindrome Number
[Problem Link](https://leetcode.com/problems/palindrome-number/)
Given an integer `x`, return `true` if `x` is palindrome integer. An integer is a **palindrome** when it reads the same backward as forward

###### Cast to String Solution (9)
``` python
class Solution:
    def isPalindrome(self, x: int) -> bool:
        s = str(x)
        if s[0:] == s[::-1]:
            return True
        return False
```

**Runtime:** 76 ms : 64.64%
**Memory Usage:** 14 MB : 16.59%

###### Floor and Mod Solution (9)
``` python
class Solution:
    def isPalindrome(self, x: int) -> bool:		
        if x < 0:
            return False

        original = x
        new = 0
        while x > 0:
            new = new * 10 + x % 10
            x = x // 10
        return new == original
```

**Runtime:** 66 ms : 80.18%
**Memory Usage:** 13.9 MB : 16.59%

#### 15. Three Sum
[Problem Link](https://leetcode.com/problems/3sum/) 
Given an integer array nums, return all the triplets `[nums[i], nums[j], nums[k]]` such that `i != j`, `i != k`, and `j != k`, and `nums[i] + nums[j] + nums[k] == 0`.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/sorting/threeSum.py)

###### Two Pointer Solution (15)
``` python
def threeSum(self, nums: List[int]) -> List[List[int]]:
    returnlist = []
    nums.sort()
    for i in range(len(nums)):
        if i > 0 and nums[i] == nums[i-1]:
            continue
        l = i + 1
        r = len(nums)-1
        while l < r:
            ans = nums[i] + nums[l] + nums[r]
            if ans > 0:
                r -= 1
            elif ans < 0:
                l += 1
            else:
                returnlist.append([nums[i], nums[l], nums[r]])
                l += 1
                while nums[l] == nums[l - 1] and l < r:
                    l += 1
    return returnlist
```

**Runtime:** 816 ms : 79.84%
**Memory Usage:** 17.3 MB : 91.68%

#### 16. Three Sum Closest 
[Problem Link](https://leetcode.com/problems/3sum-closest/)
Given an integer array `nums` of length `n` and an integer `target`, find three integers in `nums` such that the sum is closest to `target`.

Return _the sum of the three integers_. You may assume that each input would have exactly one solution.

###### Two Pointer Solution (16)
``` python
class Solution:
    def threeSumClosest(self, nums: List[int], target: int) -> int:
        
        nums.sort()
        closest = sum(nums[:3])
        for i in range(len(nums)):
            if i > 0 and nums[i] == nums[i-1]:
                continue
            l = i + 1
            r = len(nums)-1
            while l < r:
                ans = nums[i] + nums[l] + nums[r]
                if ans > target:
                    r -= 1
                elif ans < target:
                    l += 1
                elif ans == target:
                    return ans
                if abs(target - ans) < abs(closest - target):
                    closest = ans
        return closest
```

**Runtime:** 100 ms : 99.64%
**Memory Usage:** 14 MB : 32.05%

#### 70. Climbing Stairs
[Problem Link](https://leetcode.com/problems/climbing-stairs/)
You are climbing a staircase. It takes `n` steps to reach the top. Each time you can either climb `1` or `2` steps. In how many distinct ways can you climb to the top?

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/dynamic/climbing_stairs.py)
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/dynamic/climbing_stairs.cpp)

###### Dynamic Programming Solution (70)
``` python
class Solution:
	def climbStairs(self, n: int) -> int:
	    if n <= 2:
	        return n
	    else:
	        a = 1
	        b = 2
	        s = 0
	        n -= 2
	        while n:
	            s = a + b
	            a = b
	            b = s
	            n -= 1
	        return s
```

**Runtime:** 24 ms : 98.24%
**Memory Usage:** 13.9 MB : 58.51%

#### 94. Binary Tree Inorder Traversal
[Problem Link](https://leetcode.com/problems/binary-tree-inorder-traversal/) 
Given the `root` of a binary tree, return _the inorder traversal of its nodes' values_.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/binaryTreeInorderTraversal.py)

###### Depth-First Search Solution (94)
``` python
class Solution:
	def inorderTraversal(self, root: Optional[TreeNode]) -> List[int]:
	    if not root:
	        return []
	    if not root.right and not root.left:
	        return [root.val]
	    else:
	        return self.inorderTraversal(root.left) + [root.val] + self.inorderTraversal(root.right)
```

**Runtime:** 32 ms : 84.59%
**Memory Usage:** 14 MB : 13.42%

#### 100. Same Tree
[Problem Link](https://leetcode.com/problems/same-tree/) 
Given the roots of two binary trees `p` and `q`, write a function to check if they are the same or not. Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/same_tree.py)
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/same_tree.cpp)

###### Depth-First Search Solution (100)
``` python
class Solution:
	def isSameTree(self, p: Optional[TreeNode], q: Optional[TreeNode]) -> bool:
	    if not p or not q:
	        return p == q
	    elif p.val != q.val:
	        return False
	    else:
	        return self.isSameTree(p.left, q.left) and self.isSameTree(p.right, q.right)
```

**Runtime:** 28 ms : 94.82%
**Memory Usage:** 14 MB : 30.18%

#### 101. Symmetric Tree
[Problem Link](https://leetcode.com/problems/symmetric-tree/)
Given the `root` of a binary tree, _check whether it is a mirror of itself_ (i.e., symmetric around its center).

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/symmetric_tree.py)
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/symmetric_tree.cpp)

###### Depth-First Search Solution (101)
``` python
class Solution:
	def isSymmetric(self, root: Optional[TreeNode]) -> bool:
	    return self.f(root.left, root.right)
	
	def f(self, l, r):
	    if not l or not r:
	        return l == r
	    else:
	        return l.val == r.val and self.f(l.right, r.left) and self.f(l.left, r.right)
```

**Runtime:** 32 ms : 94.13%
**Memory Usage:** 14 MB : 61.32%

#### 104. Maximum Depth of Binary Tree 
[Problem Link](https://leetcode.com/problems/maximum-depth-of-binary-tree/)
Given the `root` of a binary tree, return _its maximum depth_.

A binary tree's **maximum depth** is the number of nodes along the longest path from the root node down to the farthest leaf node.

[Python solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/max_depth_binary_tree.py) 
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/max_depth_binary_tree.cpp)

###### Recursive Solution (104)
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

**Runtime:** 32 ms : 84.59%
**Memory Usage:** 14 MB : 13.42%

#### 110. Balanced Binary Tree
[Problem Link](https://leetcode.com/problems/balanced-binary-tree/) 
Given a binary tree, determine if it is height-balanced. For this problem, a height-balanced binary tree is defined as "a binary tree in which the left and right subtrees of _every_ node differ in height by no more than 1."
<center> Tree, Depth-First Search, Binary Tree</center> 

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/balanced_binary_tree.py)
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/balanced_binary_tree.cpp)

###### Depth-First Search Solution (110)
``` python
class Solution:
	def isBalanced(self, root: Optional[TreeNode]) -> bool:
	    return self.f(root) != -1
	
	def f(self, root):
	    if not root:
	        return 0
	    
	    l = self.f(root.left)
	    r = self.f(root.right)
	    
	    if l == -1 or r == -1:
	        return -1
	    if abs(l - r) > 1:
	        return -1
	    return 1 + max(l, r)
```

**Runtime:** 48 ms : 95.15%
**Memory Usage:** 18 MB : 98.11%

#### 111. Minimum Depth of Binary Tree
[Problem Link](https://leetcode.com/problems/minimum-depth-of-binary-tree/)
Given a binary tree, find its minimum depth.

The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

**Note:** A leaf is a node with no children.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/min_depth_of_binary_tree.py)

``` python
class Solution:
	def minDepth(self, root: Optional[TreeNode]) -> int:
	    if not root:
	        return 0
	    r = self.minDepth(root.right)
	    l = self.minDepth(root.left)
	    
	    if not root.right or not root.left:
	        return 1 + max(r, l)
	    
	    return 1 + min(r, l)
```

**Runtime:** 648 ms : 65.06%
**Memory Usage:** 53.1 MB : 58.77%

#### 117. Populating Next Right Pointers in Each Node 2
[Problem Link](https://leetcode.com/problems/populating-next-right-pointers-in-each-node-ii/) 
Given a binary tree, populate each next pointer to point to its next right node. If there is no next right node, the next pointer should be set to `NULL`. Initially, all next pointers are set to `NULL`.

###### Breadth-First Search Solution (117)
This solution implements the [[404 Data Structures#Breadth-First Search Binary Search Tree|breadth-first search]] algorithm with the slight modification of the `prev` attribute. When you traverse the level, you assign `prev` to the previous node traversed on that level.

**Runtime:** 88 ms : 20.30%
**Memory Usage:** 15.4 MB : 11.63%

``` python
class Solution:
    def connect(self, root: 'Node') -> 'Node':
        if root == None: 
            return root
        q = []
        q.append(root)
        while q:
            prev = None
            for _ in range(len(q)):
                cur = q.pop(0)
                if prev != None:
                    prev.next = cur
                prev = cur
                if cur.left != None:
                    q.append(cur.left)
                if cur.right != None:
                    q.append(cur.right)
        return root
```

**Runtime:** 64 ms : 54.32%
**Memory Usage:** 15.4 MB : 11.63%

#### 121. Best Time to Buy and Sell Stock 
[Problem Link](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)
You are given an array `prices` where `prices[i]` is the price of a given stock on the `ith` day. You want to maximize your profit by choosing a **single day** to buy one stock and choosing a **different day in the future** to sell that stock. Return _the maximum profit you can achieve from this transaction_. If you cannot achieve any profit, return `0`.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/dynamic/best_time_to_stock.py)
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/dynamic/best_time_to_stock.cpp)

###### Kadane's Algorithm Solution (121)
``` python
def maxProfit(self, prices: List[int]) -> int:
    # Kadane's Algorithm
    # Same problem as Max Subarray
    maxPrice = 0
    minPrice = prices[0]
    for i in prices:
        if i < minPrice:
            minPrice = i
        elif i - minPrice > maxPrice:
            maxPrice = i - minPrice
    return maxPrice
```


#### 129. Sum Root to Leaf Numbers
[Problem Link](https://leetcode.com/problems/sum-root-to-leaf-numbers/)
You are given the `root` of a binary tree containing digits from `0` to `9` only.

Each root-to-leaf path in the tree represents a number.

-   For example, the root-to-leaf path `1 -> 2 -> 3` represents the number `123`.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/sum_root_to_leaf_num.py)

###### Recursive Solution (129)
``` python
# Recursive
def sumNumbers(self, root) -> int:
    if not root:
        return 0
    elif not root.right and not root.left:
        return root.val
    if root.left: 
        root.left.val = 10 * root.val + root.left.val
    if root.right:
        root.right.val = 10 * root.val + root.right.val
    
    return self.sumNumbers(root.left) + self.sumNumbers(root.right)
```

#### Single Number (136)
[Problem Link](https://leetcode.com/problems/populating-next-right-pointers-in-each-node-ii/) 
Given a **non-empty** array of integers `nums`, every element appears _twice_ except for one. Find that single one. You must implement a solution with a linear runtime complexity and use only constant extra space.

###### XOR Solution (136)
``` python
def singleNumber(self, nums: List[int]) -> int:
    solution = 0
    for num in nums:
        # operation for XOR in python
        solution ^= num
    return solution
```

#### 141. Linked List Cycle
[Problem Link](https://leetcode.com/problems/linked-list-cycle/) 
Given `head`, the head of a linked list, determine if the linked list has a cycle in it.

There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the `next` pointer. Internally, `pos` is used to denote the index of the node that tail's `next` pointer is connected to. **Note that `pos` is not passed as a parameter**.

Return `true` _if there is a cycle in the linked list_. Otherwise, return `false`.

##### Tortoise and the Hare Solution (141)
Here we use the [[Contest Algoithms#Tortoise and the Hare Floyd's Algorithm|tortoise and the hare algorithm]] to find the cycle in the linked list. This algorithm was specifically developed for this purpose.
``` python
class Solution:
    def hasCycle(self, head: Optional[ListNode]) -> bool:
	    # a try statement incase head.next does not exist
        try:
            slow = head
            fast = head.next
            while slow != fast:
	            # if either pointer has reached the end of the linked list
                if slow == None or fast == None:
                    return False
                slow = slow.next
                fast = fast.next.next
            return True
        except:
            return False
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

	# Merge sort (as specified in problem)
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

###### Two Pointer Solution (167)
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
    return
```

#### 226. Invert Binary Tree
[Problem Link](https://leetcode.com/problems/invert-binary-tree/)
Given the `root` of a binary tree, invert the tree, and return _its root_.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/invert_binary_tree.py)
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/invert_binary_tree.cpp)

###### Depth-First Search Solution (226)
``` python
def invertTree(self, root: Optional[TreeNode]) -> Optional[TreeNode]:
    if root:
        r = self.invertTree(root.right)
        l = self.invertTree(root.left)
        root.left = r
        root.right = l
        return root
```

#### 268. Missing Number
[Problem Link](https://leetcode.com/problems/missing-number/)
Given an array `nums` containing `n` distinct numbers in the range `[0, n]`, return _the only number in the range that is missing from the array._

- Array
- Hashmap
- Math
- Bit Manipulation
- Sorting

###### Bit Manipulation Solution (268)
Using [[272 Computer Components#XOR Gate|XOR]] we can find the missing bit
``` python
def missingNumber(self, nums: List[int]) -> int:
    solution = 0
    for i in range(len(nums)):
        solution ^= i+1
        solution ^= nums[i]
    return solution
```

###### Math Solution (268)
Math to find the missing number in a range of numbers
``` python
def missingNumber(self, nums: List[int]) -> int:
    n = len(nums)
    return n * (n + 1) // 2 - sum(nums)
```

#### 404. Sum of Left Leaves
[Problem Link](https://leetcode.com/problems/sum-of-left-leaves/)
Given the `root` of a binary tree, return _the sum of all left leaves._

A **leaf** is a node with no children. A **left leaf** is a leaf that is the left child of another node.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/sum_of_left_leaves.py) 
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/sum_of_left_leaves.cpp)

###### Depth-First Search Solution (404)
``` python
def sumOfLeftLeaves(self, root: Optional[TreeNode]) -> int:
    return self.dfs(root, False)

def dfs(self, node, left_side):
    if not node:
        return 0
    elif not node.left and not node.right:
        if left_side:
            return node.val
        else:
            return 0
    else:
        return self.dfs(node.left, True) + self.dfs(node.right, False)
```


#### 509. Fibonacci Number
[Problem Link](https://leetcode.com/problems/fibonacci-number/)
The **Fibonacci numbers**, commonly denoted `F(n)` form a sequence, called the **Fibonacci sequence**, such that each number is the sum of the two preceding ones, starting from `0` and `1`. That is, `F(0) = 0, F(1) = 1` and `F(n) = F(n - 1) + F(n - 2), for n > 1`. Given `n`, calculate `F(n)`.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/dynamic/fibonacci.py)
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/dynamic/fibonacci.cpp)

###### Dynamic Programming Solution (509)
``` python
def fib(self, n: int) -> int:
    if n < 2:
        return n
    a = 0
    b = 1
    s = 0
    while n > 1:
        s = a + b
        a = b
        b = s
        n -= 1
    return s
```

###### Recursive, Naive Solution (509)
``` python
def fib(self, n: int) -> int:
    if n <= 1:
        return n
    else:
        return self.fib(n-1) + self.fib(n-2)
```

#### 700. Search in a Binary Search Tree
[Problem Link](https://leetcode.com/problems/search-in-a-binary-search-tree/) 
You are given the `root` of a binary search tree (BST) and an integer `val`.

Find the node in the BST that the node's value equals `val` and return the subtree rooted with that node. If such a node does not exist, return `null`.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/search_binary_tree.py)
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/search_binary_tree.cpp)


###### Depth-First Search Solution (700)
``` python
def searchBST(self, root: Optional[TreeNode], val: int) -> Optional[TreeNode]:
    if not root:
        return None
    elif root.val == val:
        return root
    else:
        return self.searchBST(root.right, val) or self.searchBST(root.left, val)
```

#### 701. Insert into a Binary Search Tree
[Problem Link](https://leetcode.com/problems/insert-into-a-binary-search-tree/)
You are given the `root` node of a binary search tree (BST) and a `value` to insert into the tree. Return _the root node of the BST after the insertion_. It is **guaranteed** that the new value does not exist in the original BST.

**Notice** that there may exist multiple valid ways for the insertion, as long as the tree remains a BST after insertion. You can return **any of them**.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/insert_in_bst.py)
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/insert_in_bst.cpp)

###### Depth-First Search Solution (701)
``` python
def insertIntoBST(self, root: Optional[TreeNode], val: int) -> Optional[TreeNode]:
    if not root:
        return TreeNode(val)
    if root.val < val:
        root.right = self.insertIntoBST(root.right, val)
    else: # root.val > val
        root.left = self.insertIntoBST(root.left, val)
    return root
```

#### 1038. Binary Search Tree to Greater Sum Tree
[Problem Link](https://leetcode.com/problems/convert-bst-to-greater-tree/)
Given the `root` of a Binary Search Tree (BST), convert it to a Greater Tree such that every key of the original BST is changed to the original key plus the sum of all keys greater than the original key in BST.

As a reminder, a _binary search tree_ is a tree that satisfies these constraints:

-   The left subtree of a node contains only nodes with keys **less than** the node's key.
-   The right subtree of a node contains only nodes with keys **greater than** the node's key.
-   Both the left and right subtrees must also be binary search trees.

###### Right-Root-Left Depth-First Search Solution (1038)
We follow the pattern "Right --> Root --> Left" to fit the parameters of the problem

``` python
def bstToGst(self, root: TreeNode) -> TreeNode:
    # record an ongoing sum to update values accordingly
    self.sum = 0
    self.toGst(root)
    return root
    
def toGst(self, root):
    # null values requested
    if not root:
        return None
    # right, root, left
    self.toGst(root.right)
    self.sum += root.val
    root.val = self.sum
    self.toGst(root.left)
    # no need to return since we are modifying the tree
```