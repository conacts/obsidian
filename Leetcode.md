TARGET DECK: obsidian-leetcode

Categories:
[[402 Sorting and Traversal Algorithms|Sort]]
[[402 Sorting and Traversal Algorithms#Merge Sort|Merge Sort]]
[[403 Designing Algorithms#Divide and Conquer Algorithm|Divide and Conquer]]

| Number | Problem                                                              | Solution                                                 | Time | Anki |
| ------ | -------------------------------------------------------------------- | -------------------------------------------------------- | ---- | ---- |
| 1      | [[Leetcode#1 Two Sum\|Two Sum]]                                      | [[Leetcode#Hashmap Solution 1\|Hashmap]]                 | 0:30 | Y    |
| 15     | [[Leetcode#15 Three Sum\|Three Sum]]                                 | [[Leetcode#Two Pointer Solution 15\|Two Pointer]]        | 1:30 | Y    |
| 16     | [[Leetcode#16 Three Sum Closest\|Three Sum Closest]]                 | [[Leetcode#Two Pointer Solution 16\|Two Pointer]]        | 1:45 | Y    |
| 49     | [[Leetcode#49 Group Anagrams\|Group Anagrams]]                       | [[Leetcode#Hashmap Ascii Solution 49\|Hashmap / Ascii]]  | 1:00 | Y    |
| 94     | [[Leetcode#94 Binary Tree Inorder Traversal\|BT Inorder Traversal]]  | [[Leetcode#Depth-First Search Solution 94\|DFS]]         | 0:37 | Y    |
| 100    | [[Leetcode#100 Same Tree\|Same Tree]]                                | [[Leetcode#Depth-First Search Solution 100\|DFS]]        | 0:30 | Y    |
| 104    | [[Leetcode#104 Maximum Depth of Binary Tree\|Max Depth of BT]]       | [[Leetcode#Recursive Solution 104\|DFS]]                 | 0:35 | Y    |
| 121    | [[Leetcode#121 Best Time to Buy and Sell Stock\|Best Time To Stock]] | [[Leetcode#Sliding Window Solution 121\|Sliding Window]] |      | Y    |
| 219    | [[Leetcode#219 Contains Duplicate 2\|Contains Duplicate 2]]          | [[Leetcode#Hashmap Solution 219\|Hashmap]]               |      | Y    |
| 226    | [[Leetcode#226 Invert Binary Tree\|Invert Binary Tree]]              | [[Leetcode#Depth-First Search Solution 226\|DFS]]        | 0:26 | Y    |
| 242    | [[Leetcode#242 Valid Anagram\|Valid Anagram]]                        | [[Leetcode#Hashmap Comparison Solution 242\|Hashmap]]    | 1:00 | Y    |
| 347    | [[Leetcode#347 Top K Frequent Elements\|Top K Frequent Elements]]    | [[Leetcode#Naive Hashmap Solution 347\|Hashmap]]         |  | Y    |
| 700    | [[Leetcode#700 Search in a Binary Search Tree\|Search BST]]          | [[Leetcode#Depth-First Search Solution 700\|DFS]]        | 0:31 | Y    |

#### 1. Two Sum
[Problem Link](https://leetcode.com/problems/two-sum/) 
Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`. 

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/sorting/twoSum.py) 
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/sorting/twoSum.cpp) 

###### Hashmap Solution (1)
1. Create dictionary
2. Iterate through the numbers
3. See if the number you are looking for (target = 3 + ?)
	1. If it is, return the list
	2. Else, add that number to the dictionary
``` python
def twoSum(self, nums: List[int], target: int) -> List[int]:
    d = {} # 1
    for i in range(len(nums)): # 2
        look = target - nums[i] # 3
        if look in d: # 3.1
            return [i, d[look]]
        d[nums[i]] = i # 3.2
    return
```

###### Anki (1)


https://leetcode.com/problems/two-sum/ #flashcard 
1. Create dictionary
2. Iterate through the numbers
3. See if the number you are looking for (target = 3 + ?)
	1. If it is, return the list
	2. Else, add that number to the dictionary
<!--ID: 1657023743845-->



#### 2. Add Two Numbers
[Problem Link](https://leetcode.com/problems/add-two-numbers/)
You are given two **non-empty** linked lists representing two non-negative integers. The digits are stored in **reverse order**, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

###### Carry Solution (2)
``` python
        dummy = cur = ListNode(0)
        carry = 0
        while l1 or l2 or carry:
            if l1:
                carry += l1.val
                l1 = l1.next
            if l2:
                carry += l2.val
                l2 = l2.next
            cur.next = ListNode(carry%10)
            cur = cur.next
            carry = carry // 10
        return dummy.next
```

#### 3. Longest Substring Without Repeating Characters
[Problem Link](https://leetcode.com/problems/longest-substring-without-repeating-characters/)
Given a string `s`, find the length of the **longest substring** without repeating characters.

###### Sliding Window Solution (3)
1. Create a set `charset`, left pointer `l` and result `res`
2. Iterate through the string `s`
3. Use a while loop to incrementally delete the left pointer to reach the right pointer
4. Add the element at the right pointer `s[r]` to the `charset`
5. Check if the current or previous subset is the largest
6. Return result `res`
``` python
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        charset = set() # 1
        l = 0 # 1
        res = 0 # 1
        
        for r in range(len(s)): # 2
            while s[r] in charset: # 3
                charset.remove(s[l])
                l += 1
            charset.add(s[r]) # 4
            res = max(res, r - l + 1) # 5
        return res
```

#### 7. Reverse Integer
[Problem Link](https://leetcode.com/problems/reverse-integer/)
Given a signed 32-bit integer `x`, return `x` _with its digits reversed_. If reversing `x` causes the value to go outside the signed 32-bit integer range `[-2^31, 2^31 - 1]`, then return `0`.

**Assume the environment does not allow you to store 64-bit integers (signed or unsigned).**

###### Reverse String Solution (7)
``` python
class Solution:
    def reverse(self, x: int) -> int:
        negative = False
        if x < 0:
            negative = True
            x = -x
            
        x = str(x)[::-1]
        x = int(x)
        if negative:
            x = -x
            
        if x > 2**31 - 1 or x < -2**31:
            return 0
        return x
```

**Runtime:** 37 ms : 78.35%
**Memory Usage:** 13.8 MB : 62.79%

#### 9. Palindrome Number
[Problem Link](https://leetcode.com/problems/palindrome-number/)
Given an integer `x`, return `true` if `x` is palindrome integer. An integer is a **palindrome** when it reads the same backward as forward

###### Cast to String Solution (9)
``` python
class Solution:
    def isPalindrome(self, x: int) -> bool:
        if x < 0:
            return False
        elif str(x) == str(x)[::-1]:
            return True
```

**Runtime:** 90 ms : 47.22%
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

#### 11. Container With Most Water
[Problem Link](https://leetcode.com/problems/container-with-most-water/) 
You are given an integer array `height` of length `n`. There are `n` vertical lines drawn such that the two endpoints of the `ith` line are `(i, 0)` and `(i, height[i])`.

Find two lines that together with the x-axis form a container, such that the container contains the most water.

Return _the maximum amount of water a container can store_.

``` python
class Solution:
    def maxArea(self, height: List[int]) -> int:
        l = 0
        r = len(height)-1
        res = 0
        while l < r:
            area = min(height[l], height[r])* (r - l)
			res = max(res, area)
            if height[l] < height[r]:
                l += 1
            else:
                r -= 1
        return res
```

**Runtime:** 936 ms : 65.25%
**Memory Usage:** 27.4 MB : 54.60%

#### 15. Three Sum
[Problem Link](https://leetcode.com/problems/3sum/) 
Given an integer array nums, return all the triplets `[nums[i], nums[j], nums[k]]` such that `i != j`, `i != k`, and `j != k`, and `nums[i] + nums[j] + nums[k] == 0`.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/sorting/threeSum.py)

###### Two Pointer Solution (15)
1. Create a list 
2. Sort list `nums`
3. Iterate through list `nums`
4. Create left and right pointers
5. Using two pointers, increment `l` and decrement `r` until you find a proper answer
6. If match found, increment `l` to avoid duplicate lists in `returnlist`
``` python
def threeSum(self, nums: List[int]) -> List[List[int]]:
    returnlist = [] # 1
    nums.sort() # 2
    for i in range(len(nums)): # 3
        if i > 0 and nums[i] == nums[i-1]:
            continue
        l = i + 1 # 4
        r = len(nums)-1 # 4
        while l < r: # 5
            ans = nums[i] + nums[l] + nums[r]
            if ans > 0:
                r -= 1
            elif ans < 0:
                l += 1
            else:
                returnlist.append([nums[i], nums[l], nums[r]])
                l += 1
                while nums[l] == nums[l - 1] and l < r: # 6
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
**Note:** Same as [[Leetcode#15 Three Sum|Three Sum]] but stores the closest answer

1. Set the closest as the sum of the first the numbers in the array instead of setting it to infinity.
2. Sort array `nums`
3. Iterate through array `nums`
	1. Skip the number `i` if it is equivalent to the previous number `i`
4. Use two pointers within the iteration
5. If the sum of `nums[i] + nums[l] + nums[r]` is closer than `closest`, assign closest equal to `nums[i] + nums[l] + nums[r]` 
``` python
class Solution:
    def threeSumClosest(self, nums: List[int], target: int) -> int:
        closest = sum(nums[:3]) # 1
        nums.sort() # 2
        for i in range(len(nums)): # 3
            if i > 0 and nums[i] == nums[i-1]: # 3.1
                continue
            l = i + 1 # 4
            r = len(nums)-1 # 4 
            while l < r: # 4
                s = nums[i] + nums[l] + nums[r] # 5
                if abs(s - target) < abs(closest - target):
                    closest = s
                
                if s < target:
                    l += 1
                elif s > target:
                    r -= 1
                else:
                    return s
        return closest
```


#### 20. Valid Parentheses
[Problem Link](https://leetcode.com/problems/valid-parentheses/)
Given a string `s` containing just the characters `'('`, `')'`, `'{'`, `'}'`, `'['` and `']'`, determine if the input string is valid.

An input string is valid if:
1.  Open brackets must be closed by the same type of brackets.
2.  Open brackets must be closed in the correct order.

###### Stack Solution (20)
1. See if the string is length of an odd number, making it impossible to make every bracket valid
2. Initialize stack
3. Initialize dictionary with proper mapping of opposite 
4. Iterate through string and see if it is an opening or closing bracket
	1. If it closing, check if it matches the last item on the stack
	2. If it is opening, add it to the stack
5. If the stack has remaining elements after reaching the end of the string `s`, return False
6. If it has passed all test cases, return `True`
``` python
class Solution:
    def isValid(self, s: str) -> bool:
        if len(s) % 2 == 1:
            return False

        stack = []
        d = {'[':']', '(':')', '{':'}'}
        for c in s:
            if c not in d.keys():
                if stack:
                    test = d[stack.pop()]
                    if test != c:
                        return False
                else:
                    return False
            else:
                stack.append(c)
        if stack:
            return False
        return True
```

#### 21. Merge Two Sorted Lists
You are given the heads of two sorted linked lists `list1` and `list2`.

Merge the two lists in a one **sorted** list. The list should be made by splicing together the nodes of the first two lists.

Return _the head of the merged linked list_.

###### Merging Solution (21)
``` python
class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        cur = dummy = ListNode()
        while list1 and list2:               
            if list1.val < list2.val:
                cur.next = list1
                tmp = list1
                list1 = list1.next
                cur = tmp
            else:
                cur.next = list2
                tmp = list2
                list2 = list2.next
                cur = tmp
                
        if list1 or list2:
            if list1:
                cur.next = list1
            else:
                cur.next = list2
            
        return dummy.next
```



###### Naive Solution (21)
``` python
class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        if not list1 and not list2:
            return 
        elif not list2:
            cur = ListNode(list1.val)
            list1 = list1.next
        elif not list1:
            cur = ListNode(list2.val)
            list2 = list2.next
        elif list1.val < list2.val:
            cur = ListNode(list1.val)
            list1 = list1.next
        else:
            cur = ListNode(list2.val)
            list2 = list2.next
        head = cur
        while list1 or list2:
            if not list2:
                cur.next = ListNode(list1.val)
                list1 = list1.next
            elif not list1:
                cur.next = ListNode(list2.val)
                list2 = list2.next
            else:
                if list1.val < list2.val:
                    cur.next = ListNode(list1.val)
                    list1 = list1.next
                else:
                    cur.next = ListNode(list2.val)
                    list2 = list2.next
            cur = cur.next
        return head
```

#### 49. Group Anagrams
Given an array of strings `strs`, group **the anagrams** together. You can return the answer in **any order**.

An **Anagram** is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

###### Hashmap / Ascii Solution (49)
1. Create dictionary
2. Create alphabet list
3. Add characters to alphabet list
4. Add word to dictionary using key "alphabet list"
5. Return values
``` python
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        res = {} # 1
        
        for s in strs: # 2
            count = [0] * 26 # 26 because only lowercase letters used
            
            for c in s: # 3
                count[ord(c) - ord('a')] += 1
            
            if tuple(count) not in res: # 4
                res[tuple(count)] = []
            res[tuple(count)].append(s) 
        
        return res.values() # 5
```

**Time:** 1:00
**Runtime:** 155 ms : 42.00%
**Memory Usage:** 19.9 MB : 21.01%

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

#### 74. Search a 2D Matrix
[Problem Link](https://leetcode.com/problems/search-a-2d-matrix/)
Write an efficient algorithm that searches for a value `target` in an `m x n` integer matrix `matrix`. This matrix has the following properties:

-   Integers in each row are sorted from left to right.
-   The first integer of each row is greater than the last integer of the previous row.

``` python
class Solution:
	def searchMatrix(matrix, target: int) -> bool:
	    lm = 0
	    rm = len(matrix)-1
	    while lm <= rm:
	        mm = (rm + lm) // 2
	        if matrix[mm][0] <= target and matrix[mm][len(matrix[mm])-1] >= target:
	            la = 0
	            ra = len(matrix[mm])-1
	            while la <= ra:
	                ma = (la + ra) // 2
	                if matrix[mm][ma] < target:
	                    la = ma + 1
	                elif matrix[mm][ma] > target:
	                    ra = ma - 1
	                else:
	                    return True
	            return False
	        elif matrix[mm][0] > target:
	            rm = mm - 1
	        else: 
	            lm = mm + 1
```

**Runtime:** 44 ms : 89.24%
**Memory Usage:** 14.4 MB : 13.32%

#### 94. Binary Tree Inorder Traversal
[Problem Link](https://leetcode.com/problems/binary-tree-inorder-traversal/) 
Given the `root` of a binary tree, return _the inorder traversal of its nodes' values_.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/binaryTreeInorderTraversal.py)

###### Depth-First Search Solution (94)
1. Check if there is a root
2. Check if the root has children, if it doesn't return `root.val`
3. Else, return recursive items in this order
	1. Traverse(root.left)
	2. root.val
	3. Traverse(root.right)
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
1. See if the nodes are present
2. See if the nodes values are not equal to disqualify
3. Else, return a recursive function down the tree
	1. SameTree(p.left, q.left) and SameTree(p.right, q.right)
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

**Time:** 0:33
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
1. If not root, depth of zero
2. If root with no children, depth of 1
3. Else, return 1 + the longest subtree fonud through recursion
``` python
class Solution:
    def maxDepth(self, root: Optional[TreeNode]) -> int:
        if not root:
            return 0
        elif not root.right and not root.left:
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

#### 105. Construct Binary Tree from Preorder and Inorder Traversal
Given two integer arrays `preorder` and `inorder` where `preorder` is the preorder traversal of a binary tree and `inorder` is the inorder traversal of the same tree, construct and return _the binary tree_.

[Python Solution]([https://github.com/ConComp12/leetcode/blob/main/leetcode/tree/preorder_inorder.py](https://github.com/ConComp12/leetcode/blob/main/leetcode/tree/preorder_inorder.py))

###### Recursive Solution (105)


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
class Solution:
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

**Runtime:** 952 ms : 99.30%
**Memory Usage:** 25.1 MB : 37.63%

###### Sliding Window Solution (121)
1. Initialize max `m`, left and right pointers `l` and `r`
2. Iterate through prices while r hasn't reached the end
3. If `prices[l] < prices[r]` then see if it is the new largest profit
4. If `prices[l] > prices[r]` then `l = r` since you have checked every index between the two already
5. Increment `r`
``` python
class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        l = 0 # 1
        r = 1 # 1
        m = 0 # 1
        while r < len(prices): # 2
            if prices[l] < prices[r]: # 3
                profit = prices[r] - prices[l]
                m = max(profit, m)
            else: # 4
                l = r
            r += 1 # 5
        return m
```

#### 125. Valid Palindrome
[Problem Link](https://leetcode.com/problems/valid-palindrome/) 
A phrase is a **palindrome** if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string `s`, return `true` _if it is a **palindrome**, or_ `false` _otherwise_.

###### Two Pointer / Regex (125)
1. Remove all characters that aren't letters or numbers
2. Create two pointers
3. Iterate through the new string until the two pointers meet
	1. Set the character at the pointers locations to lowercase and compare to possibly return `False`
4. Increment pointers
5. If it completes, return `True`
``` python
class Solution:
    def isPalindrome(self, s: str) -> bool:
        s = re.sub('[^A-Za-z0-9]+', '', s)
        l = 0
        r = len(s)-1
        while l < r:
            if s[l].lower() != s[r].lower():
                return False
            l += 1
            r -= 1
        return True
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
1. Create left and right pointers
2. Iterate through list using the two pointers (since list is sorted)
3. If the numbers equal the target, return the pointer locations
``` python
class Solution:
    def twoSum(self, numbers: List[int], target: int) -> List[int]:
        l = 0 # 1
        r = len(numbers)-1 # 1
        while l < r: # 2
            s = numbers[l] + numbers[r]
            if s < target:
                l += 1
            elif s > target:
                r -= 1
            else: # 3
                return [l + 1, r + 1]
```


#### 206. Reverse Linked List
[Problem Link](https://leetcode.com/problems/reverse-linked-list/)
Given the `head` of a singly linked list, reverse the list, and return _the reversed list_.

###### Iterative Solution (206)
``` python
class Solution:
    def reverseList(self, head: Optional[ListNode]) -> Optional[ListNode]:
        prev = None
        while head:
            n = head.next
            head.next = prev
            prev = head
            head = n
        return prev
```

#### 217. Contains Duplicate
[Problem Link](https://leetcode.com/problems/contains-duplicate/)
Given an integer array `nums`, return `true` if any value appears **at least twice** in the array, and return `false` if every element is distinct.

###### Hashmap Solution (217)
1. Create dictionary
2. Iterate through list `nums` and add to dictionary
	1. If item already in dictionary, return `True`
	2. Else, return `False`
``` python
class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        d = {}
        for i in nums:
            if i in d:
                return True
            d[i] = 0
        return False
```

**Time:** 0:16
**Runtime:** 684 ms : 29.35%
**Memory Usage:** 26 MB : 71.73%

#### 219. Contains Duplicate 2
[Problem Link](https://leetcode.com/problems/contains-duplicate-ii/) 
Given an integer array `nums` and an integer `k`, return `true` if there are two **distinct indices** `i` and `j` in the array such that `nums[i] == nums[j]` and `abs(i - j) <= k`.

**Note:** Basically means the number between two duplicate numbers cannot be greater than `k`

###### Hashmap Solution (219)
1. Create dictionary
2. Iterate through list `nums`
3. If num `i` is a duplicate and closer than k, return `True`
4. Add num to dictionary
5. If you never find a proper case, return `False`
``` python
class Solution:
    def containsNearbyDuplicate(self, nums: List[int], k: int) -> bool:
        d = {}
        for i in range(len(nums)):
            if nums[i] in d:
                if abs(d[nums[i]] - i) <= k:
                    return True
            d[nums[i]] = i
        return False
```

#### 226. Invert Binary Tree
[Problem Link](https://leetcode.com/problems/invert-binary-tree/)
Given the `root` of a binary tree, invert the tree, and return _its root_.

[Python Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/invert_binary_tree.py)
[C++ Solution](https://github.com/conacts/leetcode/blob/main/leetcode/tree/invert_binary_tree.cpp)

###### Depth-First Search Solution (226)
1. If there is a `root`, then you are able to invert it
2. Recursively find right subtree and left subtree
3. Swap right and left subtrees
4. Return modified root

``` python
def invertTree(self, root: Optional[TreeNode]) -> Optional[TreeNode]:
    if root: # 1
        r = self.invertTree(root.right) # 2
        l = self.invertTree(root.left) # 2
        root.left = r # 3
        root.right = l # 3
        return root # 4
```

#### 238. Product of Array Except Self
[Problem Link](https://leetcode.com/problems/product-of-array-except-self/)
Given an integer array `nums`, return _an array_ `answer` _such that_ `answer[i]` _is equal to the product of all the elements of_ `nums` _except_ `nums[i]`.

The product of any prefix or suffix of `nums` is **guaranteed** to fit in a **32-bit** integer.

You must write an algorithm that runs in `O(n)` time and without using the division operation.

###### Prefix and Postfix Solution (238)
1. Initialize a list full of 1's to store prefix values, then final answer
2. PREFIX: Iterate through `nums`, increment prefix by the current `nums[i]` and store it in the return list `out`
3. POSTFIX: Iterate through `nums`, increment postfix and multiply each item in the prefix array by the upcoming index in the newly generated postfix numbers
4. Return answer list

``` python
class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        out = [1] * len(nums) # 1
        prefix = 1
        for i in range(len(nums)): # 2
            out[i] = prefix
            prefix *= nums[i]
            
        postfix = 1
        for i in reversed(range(len(nums))): # 3
            out[i] *= postfix
            postfix *= nums[i]
            
        return out
```

#### 242. Valid Anagram
Given two strings `s` and `t`, return `true` _if_ `t` _is an anagram of_ `s`_, and_ `false` _otherwise_.

An **Anagram** is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

###### Hashmap Comparison Solution (242)
1. If the length of the two words are not the same, they cannot be anagrams
2. Create dictionaries to map the characters in `s` and `t`
3. Iterate through `s` and `t`, then map the characters to the dictionary
4. Set the dictionaries equal to each other and return the answer

``` python
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t): # 1
            return False
        d1 = {} # 2
        d2 = {} # 2
        for i in range(len(s)): # 3
            if s[i] not in d1:
                d1[s[i]] = 1
            else:
                d1[s[i]] += 1
            if t[i] not in d2:
                d2[t[i]] = 1
            else:
                d2[t[i]] += 1
        return d1 == d2 # 4
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

#### 347. Top K Frequent Elements
Given an integer array `nums` and an integer `k`, return _the_ `k` _most frequent elements_. You may return the answer in **any order**.

###### Naive Hashmap Solution (347)
1. Populate a dictionary with the frequency of all items in list `nums`
2. Create a list ordering items by frequency in which they appear
3. Reverse the ordered list and iterate through each sub-list to append until you reach the desired `k` amount tracked with `kcount`
``` python
class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        d = {} # 1
        for i in nums:
            if i not in d:
                d[i] = 1
            else:
                d[i] += 1
        
        key_list = [[] for j in range(len(nums)+1)] # 2
        for key, value in d.items():
            key_list[value].append(key)
            
        returnlist = []
        kcount = 0
        for i in reversed(range(len(key_list))): # 3
            for j in key_list[i]:
                if kcount < k:
                    returnlist.append(j)
                    kcount += 1
        return returnlist
```


#### 376. Wiggle Subsequence
[Problem Link](https://leetcode.com/problems/wiggle-subsequence/) 
A **wiggle sequence** is a sequence where the differences between successive numbers strictly alternate between positive and negative. The first difference (if one exists) may be either positive or negative. A sequence with one element and a sequence with two non-equal elements are trivially wiggle sequences.

-   For example, `[1, 7, 4, 9, 2, 5]` is a **wiggle sequence** because the differences `(6, -3, 5, -7, 3)` alternate between positive and negative.
-   In contrast, `[1, 4, 7, 2, 5]` and `[1, 7, 4, 5, 5]` are not wiggle sequences. The first is not because its first two differences are positive, and the second is not because its last difference is zero.

A **subsequence** is obtained by deleting some elements (possibly zero) from the original sequence, leaving the remaining elements in their original order.

Given an integer array `nums`, return _the length of the longest **wiggle subsequence** of_ `nums`.

###### Dynamic Programming Solution (376)
1. If non items in the list, there is no wiggle subsequence
2. Initialize `up` to keep track of wiggle and `longest` to keep track of the subsequence 
3. Iterate through the list nums starting from the first index (to check the previous index without errors)
4. Compare the current number to the previous to check for "wiggle" using `wiggle` 
5. Return `longest`
``` python
class Solution:
    def wiggleMaxLength(self, nums: List[int]) -> int:
        if not nums: # 1
            return 0
        
        wiggle = None # 2
        longest = 1 # 2
        for i in range(1, len(nums)): # 3 
            if nums[i] > nums[i-1] and wiggle != True: # 4
                longest += 1
                up = True
            elif nums[i] < nums[i-1] and wiggle != False: # 4
                longest += 1
                up = False
            
        return longest
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
1. If not root, return `None`
2. If root equals target value, return root
3. Recursively search both left and right subtrees
``` python
class Solution:
    def searchBST(self, root: Optional[TreeNode], val: int) -> Optional[TreeNode]:
        if not root:
            return None
        elif root.val == val:
            return root
        else:
            return self.searchBST(root.right, val) or self.searchBST(root.left, val)
```

**Runtime:** 102 ms : 21.51%
**Memory Usage:** 16.6 MB : 17.89%

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

#### 704. Binary Search
[Problem Link](https://leetcode.com/problems/binary-search/)
Given an array of integers `nums` which is sorted in ascending order, and an integer `target`, write a function to search `target` in `nums`. If `target` exists, then return its index. Otherwise, return `-1`.

You must write an algorithm with `O(log n)` runtime complexity.

###### Binary Search Solution (704)
1. Create left and right pointers
2. Use a while loop to ensure the two pointers don't cross over each other. `<=` because it is valid for binary search to shrink an odd array to one element, like `[3]`
3. Find the middle of the array
4. Shrink the array using the midpoint
5. If the value of midpoint `m` equals the target, return the index `m`
6. If values not found, return `-1` 
``` python
class Solution:
    def search(self, nums: List[int], target: int) -> int:
        l = 0 # 1
        r = len(nums)-1
        
        while l <= r: # 2
            m = (r + l) // 2 # 3
            if nums[m] < target: # 4
                l = m + 1
            elif nums[m] > target: # 4
                r = m - 1
            else: # 5
                return m
        return -1 # 6
```

**Runtime:** 329 ms : 57.62%
**Memory Usage:** 15.6 MB : 22.07%

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

#### 1465. Maximum Area of a Piece of Cake After Horizontal and Vertical Cuts
You are given a rectangular cake of size `h x w` and two arrays of integers `horizontalCuts` and `verticalCuts` where:

-   `horizontalCuts[i]` is the distance from the top of the rectangular cake to the `ith` horizontal cut and similarly, and
-   `verticalCuts[j]` is the distance from the left of the rectangular cake to the `jth` vertical cut.

Return _the maximum area of a piece of cake after you cut at each horizontal and vertical position provided in the arrays_ `horizontalCuts` _and_ `verticalCuts`. Since the answer can be a large number, return this **modulo** `109 + 7`.

1. Add edges of the cake to both cut arrays
2. Sort the cut arrays
3. Create `h` and `v` to store maximum height and width of each slice of cake
4. Iterate through both sorted cut array to compare the current max vs the next adjacent cut
5. Return the answer modulo $10^9 + 7$ as stated in the problem
``` python
    def maxArea(self, h: int, w: int, horizontalCuts: List[int], verticalCuts: List[int]) -> int:        

        horizontalCuts.append(0) # 1
        horizontalCuts.append(h) # 1
        verticalCuts.append(0) # 1
        verticalCuts.append(w) # 1
        
        horizontalCuts.sort() # 2
        verticalCuts.sort() # 2
        
        h = 0 # 3
        v = 0 # 3
        
        for i in range(1, len(horizontalCuts)): # 5
            h = max(h, horizontalCuts[i] - horizontalCuts[i-1])
            
        for j in range(1, len(verticalCuts)): # 5
            v = max(v, verticalCuts[j] - verticalCuts[j-1])
        
        return v * h % (10**9 + 7)
```