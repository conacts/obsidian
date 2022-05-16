# Sets
An unchanging, collection of distinct objects

## Dynamic Set
A set that can be manipulated using algorithms, enabling it to change in size

### Dynamic Set Operations
The standard collection of operations you can preform on a dynamic set

#### Queries
Operations used to search the set

###### Search(S, k)
- **Returns** The element at index `k` 
- **In**: Set `S`, index `k`

###### Minimum(S)
- **Returns**: The smallest element in set `S`
- **In**: Set `S`

###### Maximum(S)
- **Returns**: The largest element in set `S`
- **In**: Set `S` 

###### Successor(S, x)
- **Returns**: The next larger element in set `S` after element `x`
- **In**: Set `S`, element `x`

###### Predecessor(S, x)
- **Returns**: The next smallest element in set `S` after element `x`
- **In**: Set `S`, element `x` 

#### Modifying Operations
Operations used to modify the set

###### Insert(S, x)
- **Returns**: The next larger element in set `S`
- **In**: Set `S`, element `x`

###### Delete(S, x)
- **Returns**: The next larger element in set `S`
- **In**: Set `S`, element `x`



### Stack 
A [[404 Data Structures#Dynamic Set|dynamic set]] where elements are added and removed using the [[404 Data Structures#LIFO|LIFO (Last-In-First-Out)]] principle

``` 
# python
stack = []

// C++
stack<int> stack;
```

##### Stack Operations
Standard operations on a stack

###### Push(S, x)
The stacks "[[404 Data Structures#Insert S x|insert]]" operation

- Complexity: $O(1)$ 
- **Return**: NIL
- **In**: Stack `S`, element `x`

``` 
Push(S, x):
	S.top = S.top + 1
	S[S.top] = x

# python
stack.append(x)

// C++
stack.push(x)
```

###### Pop(S)
The stacks "[[404 Data Structures#Delete S x|delete]]" operation
- Complexity: $O(1)$ 
- **Return**: element `x` (top of stack)
- In: NIL
```
Pop(S):
	if Stack_Empty(S):
		error "underflow"
	else S.top = S.top - 1:
		return S[S.top + 1]

# python
stack.pop()

// C++ 
stack.pop()
```

###### Stack_Empty(S)
Checks if the stack is empty

- Complexity: $O(1)$ 
- **Return**: Bool
- **In**: NIL

```
Stack_Empty(S):
	if S.top == 0:
		return True
	else:
		return False

# Python
Stack.isEmpty()

// C++ 
Stack.empty()
```

##### LIFO
Last-In-First-Out. 
The most recently [[404 Data Structures#Push S x|pushed]] item will be the next item [[404 Data Structures#Pop S|popped]] 
![[Pasted image 20220512193413.png |400]] 

### Queue
A [[404 Data Structures#Dynamic Set|dynamic set]] that follows the [[404 Data Structures#FIFO|FIFO (First-In-First-Out)]] principle to add and remove items from the queue

![[Pasted image 20220512205433.png|400]]

``` 
# python
queue = []

// C++
queue<int> q;
```

###### Enqueue(Q, x)
- Complexity: $O(1)$ 
- **Return**: NIL
- **In**: element `x`

```
Enqueue(Q, x):
	Q[Q.tail] = x
	if Q.tail == Q.length
		Q.tail = 1
	else Q.tail = Q.tail + 1

# python
queue.push(x)

// C++
queue.enqueue(x)
```

###### Dequeue(Q)
- Complexity: $O(1)$ 
- **Return**: element `x`
- **In**: NIL

```
x = Q[Q.head]
if Q.head == Q.length
	Q.head = 1
else Q.head = Q.head + 1
return x

# python
queue.pop(0)

# C++ 
queue.dequeue()
```

###### FIFO
First-In-First-Out. 
The last item added will be the first to be removed from [[404 Data Structures#Dequeue Q|dequeue]] 

![[Pasted image 20220512203111.png |400]]

### Linked List
A [[404 Data Structures#Dynamic Set|dynamic set]] variation where objects are arranged in a linear order with the previous element pointing to the next.

![[Pasted image 20220512214712.png |400]] 


A linked list is a chain of nodes.
``` python
class LinkedList:
    def __init__(self):
        self.head = None # Initialize head as None

class Node:     
    def __init__(self, data):
        self.data = data # Assign data
        self.next = None # Initialize next as null
```

#### Linked List Vocabulary
##### Head
The first node of a linked list and necessary in all linked lists besides [[404 Data Structures#Circular Linked List|circular linked lists]] 

##### Tail
The last node of a linked list, typically used when using a [[404 Data Structures#Doubly Linked List|doubly linked list]] 

#### Linked List Operations
##### Queries
Operations used to search the set

###### Search(S, x)
- **Complexity**: $O(n)$
- **Returns** Node
- **In**: Set `L`, element `x`

``` python
def search(L, x):
	cur = L.head
	while cur:
		if cur.data == x:
			return cur # data found
		
		cur = cur.next
```


###### Minimum(S)
- **Complexity**: $O(n)$
- **Returns**: The smallest element in linked list `L` 
- **In**: Linked List `L`

``` python
def min_element(L):
	if L.head:
		minimum = L.head.data
	else:
		return None

	cur = L.head
	while cur:
		if cur.data < minimum:
			minimum = cur.data
	return minimum
```

###### Maximum(S)
- **Complexity**: $O(n)$
- **Returns**: The largest element in linked list `L` 
- **In**: Linked List `L`

``` python
def max_element(L):
	if L.head:
		maximum = L.head.data
	else:
		return None

	cur = L.head
	while cur:
		if cur.data < maximum:
			maximum = cur.data
	return maximum
```

##### Modifying Operations
Operations used to modify the set

###### Push(L, x)
- **Complexity**: $O(1)$
- **Returns**: NIL
- **In**: Linked List `L`, element `x`

``` python
# O(1)
def push(L, x):
	new_head = Node(x)
	new_head.next = L.head
	L.head = new_head
```

###### Pop(L)
- **Complexity**: $O(1)$
- **Returns**: The last element in linked list `L` 
- **In**: Linked List `L`

``` python
# O(1)
def pop(L):
	tmp = L.head.data
	L.head = L.head.next
	return tmp
```

###### Insert(L, x)
Adds item to 
- **Complexity**: $O(1)$
- **Returns**: NIL
- **In**: Set `L`, element `x`

``` python
# O(1)
def insert(L, x):
	tmp = cur.next
	cur.next = Node(x)
	cur.next.next = tmp
```

###### Delete(L, x)
Deletes a certain item from linked list
- **Complexity**: $O(n)$ 
- **Returns**: Bool
- **In**: Set `L`, element `x`

``` python
# O(n)
def delete(L, x):
	if not L.isEmpty():
		return False
	cur = L.head
	while cur.next:
		if cur.next.data = x:
			cur.next = cur.next.next
			return True
			
	if cur.data = x:
		cur.next = None
		return True
		
	return False
```

#### Doubly Linked List
A linked list variation where the linked list can go both forwards and backwards.
![[Pasted image 20220512230538.png|400]]

**With memory visualization:**
![[Pasted image 20220512231124.png |400]] 


``` python
class LinkedList:
    def __init__(self):
        self.head = None 
        self.tail = None
        
class Node:
    def __init__(self, next=None, prev=None, data=None):
        self.next = next # reference to next node in DLL
        self.prev = prev # reference to previous node in DLL
        self.data = data
```

#### Circular Linked List
A linked list variation where the tail points to the head of the linked list
![[Pasted image 20220512230929.png|400]]



### Tree
A linked list variation where each node can have more than one child, but is not a graph

##### Tree Vocab

###### Root

###### Edge

###### Child

###### Parent

###### Height



#### Binary Tree 
A tree variation where each node has at most two children

###### Breadth-First Search Binary Tree (using queue)
``` python
# binary tree bfs
def bfs(root):
	visited = []
	queue = []
	node = root
	if root:
		queue.append(node)
		
	while len(queue):
		cur = queue.pop(0)
		visited.append(cur.val)
		if cur.left:
			queue.append(cur.left)
		if cur.right:
			queue.append(cur.right)
	return visited
```

###### Breadth-First Search Binary Tree (using height)
``` python
def height(root):
	if not root:
		return 0
	left_height = height(root.left)
	right_height = height(root.right)
	
	return max(left_height, right_height) + 1

def current_level(root, level):
	if not root:
		return 
	if l == 0:
		return [root.val]
	else:
		current_level(root.left, l-1)
		current_level(root.right, l-1)
```

#### Binary Search Tree
A binary search tree is a [[404 Data Structures#Binary Tree|binary tree]] where you organize each node based on 

###### Binary Search Tree Implementation
``` python
class Node:
    def __init__(self, val):
        self.left = None
        self.right = None
        self.data = val

def bst_insert(root, node):
    if root is None:
        root = node
    else:
        if root.data > node.data:
            if root.left is None:
                root.left = node
            else:
                binary_insert(root.left, node)
        else:
            if root.right is None:
                root.right = node
            else:
                binary_insert(root.right, node)
```

##### [[402 Sorting and Traversal Algorithms#Tree Traversal Algorithms|Binary Search Tree Algorithms]] 

### Array
A collection of similar items stored in a sequence of memory locations.
![[Pasted image 20220512185024.png]]


#### Dynamic Array
An array without a fixed size in memory. Dynamic arrays are stored as pointers that point to the location of the array rather than set a specified amount of memory upon initialization.
