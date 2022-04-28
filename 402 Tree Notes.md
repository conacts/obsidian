Deck: Computer Science
# Trees


### Depth First Search (DFS)
**Defintion:** Traverses from the root to visit the deepest branches within that path
**Data Structure:** Stack
-  Traverse down a trees path until it ends. Pop off the stack until you find a node you havent traversed yet
![[Pasted image 20220131163658.png]]

##### Inorder Traversal
**Definition:** 
Variant: DFS  
Steps: left subtree, root, right subtree  
![[Pasted image 20220131162858.png |400]]

##### Preorder Traversal
Variant: DFS  
Steps: Node, left subtree, right subtree
![[Pasted image 20220131164832.png]]

##### Post Order Traversal
Variant: DFS
Steps:Left Subtree, Right Subtree, Node
![[Pasted image 20220131164959.png]]

### Breadth-First Search
Data Structure: Queue
Definition: Starts at the root node and visits each node on the current depth before moving to the next level
![[Pasted image 20220131165123.png]]