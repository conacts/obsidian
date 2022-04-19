## 9.1 Graphs
A data structure used to show relations from one node to multiple other nodes. This can be conceptualized as a set of finite sets.
![[Pasted image 20220418154300.png |400]]

$$A, D = \{B\} \quad  B = \{C\} \quad C = \{E\} \quad E = \{D, F\} \quad F = \{\emptyset\}$$

There are two types of graphs, [[123 Graphs and Trees#Directed Graph|directed graphs]] and [[123 Graphs and Trees#Undirected Graph|undirected graphs]] 

### Graph Components

#### Node / Vertex
Elements of data in the graph, typicall represented as circles
![[Pasted image 20220418155152.png]]
In the graph above we have, 
- 5 Verticies

#### Edge / Link
Connections between nodes on a graph, representing relationships between two pieces of data
![[Pasted image 20220418154921.png]]

$$E_1 = \{A,C\} \quad E_2 = \{A, B\} \quad E_3 = \{C, D\} \quad ...$$
In the graph above we have,
- 7 Edges

##### Loop Edges
An edge with just one endpoint is called a loop, meaning it connects to the same node twice
![[Pasted image 20220418160315.png]]

##### Parallel Edge
Two or more edges with the same connection nodes
![[Pasted image 20220418160357.png]]


#### Types of Graphs

##### Simple Graph
A graph that has neither loop nor parallel edges and each edge connects two different verticies
![[Pasted image 20220418160524.png|200]]
The maximum number of edges in a simple graph $K_n$ with $n$ verticies:
$$\text{Max(E)} = \frac{n(n-1)}{2}$$


##### Multigraph
A graph that has multiple edges or parallel edges connecting the same two verticies
![[Pasted image 20220418160610.png |200]]

##### Pseudograph
A graph that includes loops as well as parallel edges
![[Pasted image 20220418160638.png |200]]

##### Finite Graph
A graph with a finite number of verticies and finite number of edges
![[Pasted image 20220418160808.png |300]]

##### Inifinite Graph
A graph without a finite number of verticies and edges
![[Pasted image 20220418160822.png |300]]

### Graph Terminology

##### Adjacent / Neighbors
Two verticies connected by an edge. A vertex is adjacent to itself if connected by a loop.
![[Pasted image 20220418162201.png |200]]
$$\text{Adjacent Edges: } E_1=\{A, B\} \quad E_2=\{A, C\} \quad E_3=\{B, C\}$$

##### Incident On
When a vertex is an endpoint of some edge, the vertex $v$ is an incident on edge $e$ 
![[Pasted image 20220418161829.png |300]]

$$\text{Incident Edges: } A=\{E_1, E_4, E_5\} \quad B = \{E_1, E_2\} \quad C = \{E_3, E_4\} \quad D=\{E_2, E_3, E_5\}$$

##### Neighborhood
The set of all [[123 Graphs and Trees#Adjacent Neighbors|neighbors]] is called a neighborhood.

##### Degree of vertex
The number of edges [[123 Graphs and Trees#Incident On|incident on a vertex]].
$$deg(v) = |N(v)|$$
##### Degree Sequence
List of all the verticies of a graph written in non-decreasing or non-increasing order.

> Find the neighborhood and degree of each vertex of the graph. Also, show the degree sequence of the graph
> ![[Pasted image 20220418163452.png |300]]
> **ANS Neighborhood:**
> 1. $N(a) = \{b,c,d\}$
> 2. $N(b) = \{a,d,e\}$
> 3. $N(c) = \{a,d\}$
> 4. $N(d) = \{a,b,c\}$
> 5. $N(e) = \{b,e\}$
> 
> **ANS Degree:**
> 1. $D(a) = |N(a)| = 3$
> 2. $D(b) = |N(b)| = 3$
> 3. $D(c) = |N(c)| = 2$
> 4. $D(d) = |N(d)| = 3$
> 5. $D(e) = |N(e)| = 3$ (the degree for loop counts twice)
> 
> **ANS Degree Sequence:**
> 1. $DS = 3,3,3,3,2$

##### Handshaking Theorem
Let $G=(V,E)$ be an undirected graph. The sum of the degrees of the verticies in $G$ is twice the number of edges.
$$\sum_{v\in V}deg(v) = 2 \cdot |E|$$

###### Proof :: Handshaking Theorem Proof:
> **Proof:**
> 1. Proof. 
> 2. We proceed by induction on the number of edges.
> 3. Let G be an undirected graph with n vertices.
> 4. Base case: When graph $G$ has 0 edges, the degree of each vertex of the graph must be 0. Therefore, the sum of the degrees of all of the vertices must be 0.
> 5. Induction hypothesis: Suppose that for some $k\in \mathbb{N}$, an arbitrary graph with n vertices and k edges satisfy the following property:
> 	1. $$\sum_{v\in V}deg(v) = 2 \cdot |E|$$
> 6. Inductive Step: Let $G(V,E)$ be an arbitrary graph with n vertices and k+1 edges. Suppose the graph $G'(V',E')$ is a graph that is constructed by removing an arbitrary edge $e=u,v$ from graph $G$. That means, graph $G′$ is a graph with $n$ vertices and $k$ edges.
> 	1. $$\sum_{v\in V}deg(v) = 2 \cdot |E'|$$
> 	2. $$\sum_{v\in V}deg(v) = 2 \cdot |E'| + 2 = 2(|E'| + 1)= 2(|E|-1+1) = 2|E|$$





###### Example :: Handshake Theorem:
> A graph has 5 verticies and 8 edges. What is the sum of the degree of the graph?
> 1. Using the handshake theorem we can plug in for $E=8$
> $$\sum_{v\in V}deg(v) = 2 \cdot |8|=16$$
> ---
> How many edges are there in a graph with 13 vertices each of degree 4?
> 1. Using the handshake theorem we can plug in for $E=13$. Since each vertex is of degree 4, we know our equation is 
> $$\sum_{v\in V}deg(v) = 4 \cdot |13|=52$$
> $$52 = 2 \cdot |E| \quad E = 26$$
> **ANS:** There are 26 edges in the graph

##### Odd / Even Verticies
A vertex can be odd or even based on its degree 

##### Theorem 7.2
In any undirected graph, there is an even number of verticies to the odd degree

> Is there a graph with eight verticies of degrees 1, 1, 2, 2, 4, 4, 5?
> 
> ANS:  It is not possible. Computing the total degree of the graph, we get 19 degrees and only 7 elements in the set. Based on [[123 Graphs and Trees#Theorem 7 2|Theorem 7.2]], this is **not possible**.
> ---
> In a group of 7 people, is it possible for each person to have exactly 3 friends?
> **ANS:** No, it is not possible since if we assume each person has 3 friends we would have a degree of 21. This is impossible since  [[123 Graphs and Trees#Theorem 7 2|Theorem 7.2]] 


##### Isolated Vertex
A vertex having no incident edge is called an isolated vertex.
![[Pasted image 20220418191616.png |300]]


##### Pendant Vertex
A vertex of degree one, meaning it only has one connection.
![[Pasted image 20220418191730.png|300]]


##### Null Graph
If there are no edges 
$G = (V,E)$ where $E= \emptyset$

##### Regular Graph
If all teh verticies of a graph $G$ have the same degree $d$, then $G$ is called a "d-regular-graph"



#### Directed Graph
A graph where edges only connect in one direction
![[Pasted image 20220418204346.png |400]]

##### Adjacent To / From
When an edge goes from a node ($u$) to node ($v$)

##### Initial Vertex
The starting node in the directed edge

##### Terminal Vertex
The ending node in the directed edge

##### In-degree
Number of [[123 Graphs and Trees#Terminal Vertex|terminal vertexes]], denoted by $deg^-(v)$ 

##### Out-degree
Number of [[123 Graphs and Trees#Initial Vertex|initial vertex]], denoted by $deg^+(v)$

> What is the in-degree and the out-degree of each node in the graph $G$
> ![[Pasted image 20220418205717.png |300]]
> 1. $deg^-(a) = 3$ and $deg^+(a) = 3$
> 2. $deg^-(b) = 2$ and $deg^+(b) = 1$
> 4. $deg^-(c) = 2$ and $deg^+(c) = 3$
> 5. $deg^-(d) = 2$ and $deg^+(d) = 4$
> 6. $deg^-(e) = 2$ and $deg^+(e) = 1$
> 7. $deg^-(f) = 1$ and $deg^+(f) = 1$ 

##### Theorem 7.3
The sum of in-degree $deg^-(v)$ and out-degree $deg^+(v)$ of all verticies is equal to the number of edges.

##### Trivial Graph
An empty graph with no edges

#### Special Graphs

##### Complete Graph
A [[123 Graphs and Trees#Simple Graph|simple graph]] in which each pair of distinct verticies is joined yb exactly one edge. A complete graph on $n$ verticies is denoted by $K_n$. 

To compute the number of edges $E$ using $n$ verticies
$$E = \{(v_i, v_j) | v_i \ne v_j\}$$
![[Pasted image 20220419011125.png]]
$$K_n \quad n=1,2,3,4,5,6 \text{ verticies}$$

##### Cycle Graph
A [[123 Graphs and Trees#Simple Graph|simple graph]] consisting of $n$ verticies $\{v_1, v_2, ..., v_n\}$ where $n \ge 3$ and edges $\{\{v_1, v_2 \}, \{ v_2, v_3 \}, ..., \{v_n, v_1\}\}$. A cycle with $n$ verticies can be denoted as $C_n$
![[Pasted image 20220419012706.png ]] 

$$C_n \quad n=3,4,5,6 \text{ verticies and edges}$$

##### Wheel Graph
A wheel is a [[123 Graphs and Trees#Simple Graph|simple graph]] formed by connecting a single vertex to all verticies of a cycle $C_n$ where $n \ge 3$. A wheel on $n$ verticies is denoted by $W_n$. 
$$W_n(E) = 2(n-1) \quad \quad \text{n = num of vetricies}$$
![[Pasted image 20220419013409.png]]
$$W_n \quad n = 4,5,6,7$$

##### Bipartite Graph
A [[123 Graphs and Trees#Simple Graph|simple graph]] where its vertex set can be partitioned into two non-empty disjoint and independent sets $V_1$ and $V_2$ ($V_1 \cap V_2 = \emptyset$) such that every edge of the graph connects a vertex in $V_1$ and a vertex in $V_2$
![[Pasted image 20220419013719.png |450]]
**Note:** Any Cycle $C_n$ with an odd numbers of verticies cannot be a bipartite graph

##### Bipartite Test 
A simple graph $G$ is bipartite if and only if it is possible to assign one of two different colors to each vertex of the graph so that no two adjacent verticies are assigned the same color


###### Example :: Bipartite Graph:
> Graph $G$ is a bipartite graph because the vertex set $V=\{a,b,c,d,e,f,g,h\}$ of $G$ can be partitioned into two disjoint subsets $V_1 = \{b,c,f,g\}$ and $V_2 = \{a,d,e,h\}$ where $V_1 \cap V_2 = \emptyset$ and $V_1 \cup V_2 = V$. Each edge of $G$ is incident on one vertex in $V_1$ and one vertex in $V_2$
> ![[Pasted image 20220419014540.png |300]]
> ----
> Is this graph bipartite?
> ![[Pasted image 20220419015155.png |300]]
> No the graph isn't bipartite as stated by [[123 Graphs and Trees#Bipartite Test|bipartite test]]. If we assign the colors to...
> - U = Red
> - W = Blue
> - Y = Blue
> Note that W and Y are both blue, yet they are connected meaning this graph fails the [[123 Graphs and Trees#Bipartite Test|bipartite test]]

##### Complete Bipartite Graph
A [[123 Graphs and Trees#Bipartite Graph|simple bipatite graph]] $G$ with bipartition $V = V_1 \cup V_2$ such that every vertex in $V_1$ is adjacent to every vertex of $V_2$ suppose $V_1$ has $m$ verticies and $V_2$ has $n$ verticies, denoted through $K_{m,n}$ 

![[Pasted image 20220419020313.png]]

There is no edge from a vertex in $V_1$ to a vertex in $V_1$ and also no edge from a vertex in $V_2$ to a vetrex in $V_2$

#### Undirected Graph
A graph without directional edges


##### Homework 11
###### Question 1:
> (a) How many edges are there in a graph with 10 vertices, each having a degree 3?
> 1. Using the [[123 Graphs and Trees#Handshaking Theorem|handshake theorem]] we can solve this problem
> 2. Multiply the degree by the verticies
> 	1. $$d \cdot v = 10 \cdot 3 = 30$$
> 3. Set the number $d \cdot v$ equal to the [[123 Graphs and Trees#Handshaking Theorem|handshake theorem's]] $2 \cdot |E|$
> 	1. $$30 = 2 \cdot E \quad E = 15$$
> (b) How many edges are there in a graph with 8 vertices, having a [[123 Graphs and Trees#Degree Sequence|degree sequence]] of 1,1,2,2,3,3,3,3 respectively?
> 1. Using the [[123 Graphs and Trees#Handshaking Theorem|handshake theorem]] we can solve this problem
> 2. We can sum the number of edges of each degree separately
> 	1. Degree 3: $v=4$ and $d=3$
> 	2. $$d \cdot v = 3 \cdot 4 = 12$$
> 	3. Degree 2: $v=2$ and $d=2$
> 	4. $$d \cdot v = 2 \cdot 2 = 4$$
> 	5. Degree 3: $v=2$ and $d=1$
> 	6. $$d \cdot v = 1 \cdot 2 = 2$$
> 3. Sum all the components and set equal to [[123 Graphs and Trees#Handshaking Theorem|handshake theorem's]] $2 \cdot |E|$
> 	1. $$E = \frac{12 + 4 + 2}{2} = 9$$
> (c) How many vertices are there in a graph with 19 edges, having 3 vertices of degree 4 and all the other vertices are of degree 2?
> 1. Using the [[123 Graphs and Trees#Handshaking Theorem|handshake theorem]] we can solve this problem
> 2. We can sum the number of edges of each degree separately
> 	1. Degree 4: $v=3$ and $d=4$
> 	2. $$d \cdot v = 3 \cdot 4 = 12 $$
> 	3. Degree 2: $v=?$ and $d=2$
> 	4. $$d \cdot v = 2v$$
> 3. Sum the elements and set equal to [[123 Graphs and Trees#Handshaking Theorem|handshake theorem's]] $2 \cdot |E|$
> 4. $$2(19) = 12 + 2v \quad v=\frac{38-12}{2}=13 \text{ verticies of degree 2}$$

###### Question 6:
> Is the given graph Bipartite?
> ![[Pasted image 20220418190717.png |300]]
> 1. 