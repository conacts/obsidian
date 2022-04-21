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

##### Degree of Undirected Verticies 
In any undirected graph, there is an even number of verticies to the odd degree

> Is there a graph with eight verticies of degrees 1, 1, 2, 2, 4, 4, 5?
> **ANS:** It is not possible. Computing the total degree of the graph, we get 19 degrees and only 7 elements in the set. Based on [[123 Graphs and Trees#Degree of Undirected Verticies|degree of undirected verticies]], this is **not possible**.
> ---
> In a group of 7 people, is it possible for each person to have exactly 3 friends?
> **ANS:** No, it is not possible since if we assume each person has 3 friends we would have a degree of 21. This is impossible since [[123 Graphs and Trees#Degree of Undirected Verticies|degree of undirected verticies]] 


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

#### Undirected Graph
A graph without directional edges
![[Pasted image 20220420173149.png |400]]

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
A [[123 Graphs and Trees#Simple Graph|simple graph]] in which each pair of distinct verticies is joined on exactly one edge. A complete graph on $n$ verticies is denoted by $K_n$. 

To compute the number of edges $E$ using $n$ verticies
$$E = \frac{n(n-1)}{2}$$
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

#### Subgraph
A new graph $G_2$ formed from only edges and verticies of the main graph $G_1$ meaning $G_1 \subseteq G_2$. However a graph $G$ cannot be a subgraph of itself meaning $G \not\subseteq G$ 
![[Pasted image 20220420172316.png]]

##### Spanning Graph
A graph with the same verticies, but different edges.
![[Pasted image 20220420172958.png]]

##### Induced Graph
When we remove a vertex $v$, we must delete all edges that are incident on vertex $v$
![[Pasted image 20220420173546.png]]
Therefore, the vertex set of $V(H)$ and set of edges $E(H)$ is:
$$V(H-v)=H(H)-\{v\} \quad \quad E(H-v) = \{e \in E(H) | v \not\in e\}$$
- The vertex set $V(H-v)$ contains all verticies of $H$ except $v$
- The edge set $E(H-v)$ contains all edges of $H$ that are not incident on vertex $v$ 

#### Operations on Graphs
Mathmatical operations on graphs include...
1. Union
2. Intersect
3. Ring Sum
4. Complement

![[Pasted image 20220420175854.png]]

##### Graph Union $(\cup)$ 
The union of two simple graphs $G_1 = (V_1, E_1)$ and $G_2 = (V_2, E_2)$ is another simple graph $G = (V,E)$ denoted by $G = G_1 \cup G_2$, where vertex set $V = V_1 \cup V_2$ and the edge set $E = E_1 \cup E_2$ 
- If $G_1$ and $G_2$ are edge [[119 Sets#Disjoint Sets|disjoint]], then the union $G \cup G_2 = G_1 \oplus G_2$

![[Pasted image 20220420174302.png |500]]

##### Graph Intersect $(\cap)$
The intersection of two simple graphs $G_1$ and $G_2$ is another graph $H$ denoted by $H = G_1 \cap G_2$, which contains only those verticies and edges that exist in both $G_1$ and $G_2$
- If $G_1$ and $G_2$ are vertex [[119 Sets#Disjoint Sets|disjoint]], then the intersection $G_1 \cap G_2$ is empty
- If $G_1$ and $G_2$ are edge [[119 Sets#Disjoint Sets|disjoint]], then the intersection $G_1 \cap G_2$ is [[123 Graphs and Trees#Null Graph|null]] 

![[Pasted image 20220420174511.png |500]]

##### Ring Sum Graph
The union of two simple graphs $G_1 = (V_1, E_1)$ and $G_2 = (V_2, E_2)$, denoted by $G_1 \oplus G_2$, is a simple graph consisting of the vertex set $V_1 \cup V_2$ and of edges that are either in $G_1$ or $G_2$, but not in both
$$G_1 \oplus G_2 = (V_1 \cup V_2, (E_1 \cup E_2) - (E_1 \cap E_2))$$
- If $G_1$ and $G_2$ are edge [[119 Sets#Disjoint Sets|disjoint]], then the ring sum $G_1 \oplus G_2 = G \cup G_2$ 

![[Pasted image 20220420175303.png]]
##### Complement Graph
The complement graph of $G$, denoted as $\overline{G}$, is a graph where the vertex set and edge set satisfy:
$$V(\overline{G}) = V(G) \quad \quad E(\overline{G}) = \{\{x, y\} | x,y \in V(G), x \ne y, \{x , y \} \not\in E(G) \}$$
![[Pasted image 20220420181727.png]]
###### Num of Edges in a Complement Graph
$$\text{num of edges} = |E(\overline{G})| = \frac{n(n-1)}{2}-|E(G)|$$
**Note:** The [[123 Graphs and Trees#Graph Union cup|union]] of $G$ and $\overline{G}$, $(G \cup \overline{G})$, gives us a [[123 Graphs and Trees#Complete Graph|complete graph]]
![[Pasted image 20220420181822.png]]


> Suppose that there is a complete graph $K_{31}$ with 31 verticies.
> 1. What is the highest [[123 Graphs and Trees#Degree of vertex|degree of a vertex]] of the graph $K_{31}$?
> 	1. Since every vertex in a complete graph is attached to every other vertex besides itself, we can form the equation $ANS = v_{total} - 1 = 31 - 1 = 30$ 
> 2. If a graph $G$ with 31 verticies has 132 edges, how many edges are there in the complement graph of $G, \overline{G}$? 
> 	1. Using the [[123 Graphs and Trees#Num of Edges in a Complement Graph|edges in a complement graph equation]]
> 		1. $$|E(\overline{G})| = \frac{n(n-1)}{2} - E(G) = \frac{31(31-1)}{2} - 132 = 333 \space edges$$

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

> Given a graph K and G, find the complement of graph G.
> Graph K: 
> ![[Pasted image 20220420170759.png]]
> Graph G:
> ![[Pasted image 20220420170826.png]]
> You can draw th graph or you can represent the complement graph by the following presentation $G=(V,E)$

> 1. Suppose we have a complete graph with 17 vertices, what is the sum of the [[123 Graphs and Trees#Degree of vertex|degrees of all vertices]] for this graph
> 	1. Knowing that a complete graph, each vertex has $n-1$ connections, we can use the equation [[123 Graphs and Trees#Complete Graph|compute num of edges in complete graph]]
> 	2. $$E = \frac{n(n-1)}{2} = \frac{17(17-1)}{2} = 136 \space edges$$ 
> 2. Suppose we have an undirected [[123 Graphs and Trees#Complete Bipartite Graph|complete bipartite graph]] with 22 vertices, what is the maximum number of edges that could exist in this graph
> 	1. A bipartite graph can only connect to verticies in the other subset of the graph. We will divide the graph into two pieces, $G_1$ and $G_2$. 
> 	2. $|V(G_1)| = |V(G_2)| = 11$ verticies
> 	3. Because each edge can connect to the other 11 verticies, we can compute $V(G_1) \cdot V(G_2) = 11 \cdot 11 = 121 \space edges$ 

> 1. Suppose we have a complete graph with 13 vertices, what is the sum of the degrees of all vertices for this graph
> 	1. The [[123 Graphs and Trees#Degree of vertex|degree of a vertex]] is equal to the number of edges it has. In a complete graph, each vertex has $n - 1$ edges. With 13 verticies, we can compute
> 		1. $$D(G_c) = n \cdot (n - 1) = 13 \cdot (13 - 1) = 156$$
> 2. Suppose we have an undirected complete bipartite graph with 18 vertices, what is the maximum number of edges that could exist in this graph
> 	1. We first set the bipartite graph into two set of verticies, $G_1$ and $G_2$.
> 		1. $$G_1 = \{ v_1, v_2, ..., v_9\} \quad G_2 = \{ v_{10}, v_{11}, ..., v_{18}\}$$
> 	2. Then, we can assume that each vertex in $G_1$ is connected to each vertex in $G_2$ (and vice versa). This gives us the formula
> 		1. $$V(G_1) \cdot V(G_2) = 9 \cdot 9 = 81$$

> In a small class of 9 students, everyone was asked how many of their friends are also taking the class. Friendship is mutual. Is the following outcome possible: 6, 6, 5, 4, 4, 3, 2, 2, 1?
> **ANS:** This is not possible as an undirected graph must have an odd number of degrees as stated by [[123 Graphs and Trees#Degree of Undirected Verticies|degree of undirected verticies]], while the degrees of the formula given above is $6 + 6 + 5 + 4 + 4 + 3 + 2 + 2 + 1 = 33 \space degrees$ 

> Which of the following is not a subgraph of this graph?
> ![[Pasted image 20220420192934.png]]
> 1. {(0,4), (3,2), (5,8), (3,6), (9,7)}
> 2. {(1,3), (3,2), (5,8), (3,6), (9,7)}
> 3. {(1,7), (3,2), (5,8), (3,6), (9,7)}
> 4. {(1,7), (3,2), (5,8), (5,6), (9,7)}
> **ANS:** Number 4 since (5,6) is not an edge

