#### Tortoise and the Hare (Floyd's Algorithm)
Complexity: 
- Time: $O(n)$
- Space: $O(1)$ 

An algorithm used to detect if a linked list contains a [[404 Data Structures#Circular Linked List|cyclic linked list]] in it. The algorithm works by having two pointers, a slow and fast pointer. The slow pointer moves at a speed of 1 incrementing by `slow = slow.next` while fast increments by 2 with `fast = fast.next.next`. 

1. If there is no cycle, then the fast pointer will find the end of the linked list 
2. If there is a cycle, then the slow and fast pointers are bound to meet at some point


![[Pasted image 20220512235551.png|400]]

##### Tortoise and the Hare (Python)
``` python
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