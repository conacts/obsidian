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
> **ANS:** The given graph is not [[123 Graphs and Trees#Bipartite Graph|bipartite]] as it fails the [[123 Graphs and Trees#Bipartite Test|bipartite color test]] 

> Given a graph K and G, find the complement of graph G.
> Graph K: 
> ![[Pasted image 20220420170759.png]]
> Graph G:
> ![[Pasted image 20220420170826.png]]
> You can draw th graph or you can represent the complement graph by the following presentation $G=(V,E)$
> **ANS:** 
> ![[Pasted image 20220421133646.png |300]]

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


### Walk, Trails, Paths

##### Walk
A sequence of alternating verticies and edges that starts and ends with a vertex

##### Trivial Walk
A walk with no edges, giving a walk length of 0




### Graph Representation

##### Adjacency List
A list for directed or undirected graphs where you acknowledge the verticies connected to the edges of another vertex
![[Pasted image 20220424203358.png]]

![[Pasted image 20220424203407.png]]


#### Matrix Representation of Graphs

##### Adjacency Matrix
An $m \times n$ matrix where you use you track the adjacent verticies
![[Pasted image 20220424203655.png]]

> Find the adjacency matrix of the directed graph
> ![[Pasted image 20220424203814.png |200]]
> 
> |    | a   | b   | c   | d   | e   |
| --- | --- | --- | --- | --- | --- |
| a   | 0   | 1   | 1   | 0   | 0   |
| b   | 1   | 0   | 0   | 0   | 0   |
| c   | 0   | 0   | 0   | 0   | 1   |
| d   | 1   | 0   | 0   | 0   | 0   |
| e   | 0   | 0   | 0   | 1   | 0    |


### Euler Graphs and Hamiltonian Graphs

##### Euler Graph
A graph containing a Euler trail

##### Euler Trail 
A path $G$ where you can visit each edge of the graph $G$

##### Closed Euler Trail / Euler Circuit
A path $G$ where you can visit each edge of the graph only once to span the graph.

> Determine which graph has an Euler path and which graph has an Euler circuit. Find the sequence of vertices for that Euler path and circuit.
> ![[Pasted image 20220423160203.png |300]]
> $G_1:$ Euler Path ~ C - A - B - C - E - G - F - D - C - F
> $G_2:$ Closed Euler Path ~ A - B - C - E - G - F - C - F - D - C - A

##### Determine if a Graph is a Euler Circuit
If a graph $G$ is connected and the degree of every vertex of $G$ is a positive even integer, then $G$ has a Euler Circuit

##### Determine if a Graph is a Euler Trail
A graph $G$ has a Euler trail, but not Euler circuit if and only if it has exactly two verticies of odd degree

> Determine which graph has an Euler path and an Euler circuit. Find a sequence of vertices if an Euler path or an Euler circuit exits in any graph.
> ![[Pasted image 20220423184736.png |400]]
> 1. Graph $G_1$ has Euler path
> 	1. b ~ a ~ c ~ b ~ d 
> 2. Graph $G_2$ has neither an Euler path nor a circuit
> 3. Graph $G_3$ has an Euler circuit 
> 	1.  a ~ b ~ d ~ c ~ e ~ f ~d ~ e ~ b ~ c ~a 


#### Hamilton graph
A graph containing a hamilton cycle, or can have each vertex visited once using a start and end point

##### Hamilton Cycle / Hamilton Circuit
Visiting each vertex once, compared to [[123 Graphs and Trees#Euler Trail|euler trail]] which visits each edge once

##### Hamilton Path
Similar to a Hamilton Cycle, it has to visit each vertex once but doesn't have a starting or ending vertex.

##### Odd Cycle 
A [[123 Graphs and Trees#Cycle Graph|cycle]] with an **odd** number of verticies

##### Even Cycle
A [[123 Graphs and Trees#Cycle Graph|cycle]] with an **even** number of verticies

> Determine whether each graph has a hamilton cycle, hamilton path, or neither.
> ![[Pasted image 20220424133404.png |400]]
> 1. $G_1$ has a Hamilton Circuit
> 	1. Each complete graph $K_n$ has a Hamiltonian cycle, where $n \ge 3$. Also, a $K_{mn}$ has a Hamiltonian cycle if and only if $m = n \ge 2$.
> 1. $G_2$ has a Hamilton path, but not a Hamilton Circuit
> 	1. Every $C_n$ graph is a Hamiltonian graph
> 2. $G_3$ neither a Hamilton path nor Hamilton Circuit
> 	1.  A simple graph $G$ is called maximal _non-Hamiltonian,_ if it is not Hamiltonian but adding any edge connecting two nonadjacent vertices forms a Hamiltonian graph.

##### Dirac's Theorem to Solve for Hamilton Circuit
If $G$ is a simple graph with $n$ verticies, where $n \ge 3$ and the degree of every vertex of $G$ is at least $\frac{n}{2}$, then $G$ has a [[123 Graphs and Trees#Hamilton Cycle Hamilton Circuit|Hamilton circuit]] .
![[Pasted image 20220424134514.png|200]]

##### Ore's Theorem to Solve for Hamilton Circuit
If $G$ is a simple graph with $n$ verticies where $n \ge 3$ and for every pair of nonadjacent verticies $u$ and $v$ in $G, deg(u) + deg(v) \ge n$, then $G$ has a Hamilton circuit.
![[Pasted image 20220424135027.png |200]]


##### Petersen Graph
An undirected graph with 10 verticies and 15 edges, typically drawn as a pentagram within a pentagon
![[Pasted image 20220424153322.png]]

#### Plane Graph
A graph where edges do not overlap each other and only meet at verticies

##### Nonplanar Graph
A graph where the edges must overlap to display the graph properly

> Is $K_4$ a planar graph?
> 1. **ANS:** A different representation of $K_4$ can be expressed as a planar graph, shown in the last 3 examples
> 	1. ![[Pasted image 20220424140110.png |400]]

##### Determine if a Graph is Planar

##### Regions
Boundaries formed through the edges of a planar graph, denoted below as $R$ ![[Pasted image 20220424141005.png |400]]

> Is $K_{3,3}$ a planar graph?
> **ANS:** No


##### Euler's Theorem
Let $G$ be a connected planar simple graph with $e$ edges and $v$ verticies let $r$ be the number of regions in a planar representation of $G$. Then $r = e - v + 2$

> Suppose that a connected planar simple graph has 30 vertices, each of degree 2. Into how many regions do a representation of this planar graph split the plane?
> **ANS:**
> 1. We know that there are 30 verticies.
> 2. BY handshaking theorem, $\sum deg(v) = 30 \cdot 2 = 2 \cdot |E|$
> 3. By Euler's Theorem, $r = 30 - 30 + 2 = 2$
> 4. Therefore, there are two regions of that planar graph

##### Corollary Collary 2
If $G$ is a connected planar simple graph with $e$ edges and $v$ verticies, where $v > 3$, then $e \le 3v - 6$ 

> Is $K_5$ nonplanar?
> **ANS:** 
> 1. We know that graph $K_5$ has five verticies and 10 edges
> 2. Using Collary 2, we can say that $3 \cdot 5 - 6 = 9$
> 3. We know that $10 \not \le 9$ 
> 4. By Corollary 2, $K_5$ is not a planar graph

##### Corollary 3
If $G$ is a connected planar simple graph, then $G$ has a vertex of degree not exceeding five.

> Determine whether $K_{10}$ is planar or not
> **ANS:** With each vertex in $K_{10}$ having a degree of 9, we know this is not planar due to Corollary 3


##### Corollary 4
If a connected planar simple graph $G$ has $e$ edges and $v$ verticies where $v \ge 3$ and there is no circuit of length three, then $e \le 2v -4$

> Determine whether $K_{3,3}$ is planar or nonplanar by Corollary 4
> **ANS:** 
> Graph $K_{3,3}$ is bipartite graph then it has no circuits of length three.
> We know that there are six verticies and nine deges in $K_{3,3}$
> We get $2v - 4 = 8$, but $e = 9$. We know that $9 \le 8$ 
> $K_{3,3}$ is nonplanar

### Subdivision
Replacing an edge in a graph with a vertex and two edges to connect where the previous edge was removed
![[Pasted image 20220424152754.png |400]]

#### Homeomorphic
Two graphs are homeomorphic if they can be obtained from the same graph by a sequence of [[123 Graphs and Trees#Subdivision|subdivisions]] 
![[Pasted image 20220424152952.png |500]]



##### Kuratowski's Theorem
A graph is planar if and only if it does not contain a subgraph homeomorphic to $K_{3,3}$ or $K_5$ 

> Is the [[123 Graphs and Trees#Petersen Graph|petersen graph]] a planar graph?
> **ANS:** The petersen graph is a subgraph of $K_{3,3}$, meaning the petersen graph is not planar

##### Graph Coloring
There are two ways to color a graph
1. Edge Coloring
2. Vertex Coloring
![[Pasted image 20220424155413.png |400]]

##### Proper Coloring
Coloring each vertex of the graph so that no two adjacent verticies are assigned the same color

##### K-coloring
Coloring verticies $k$ colors so that no two verticies of the same color are connected through a mutual edge

##### Chromatic Number
The smallest number $k$ of the [[123 Graphs and Trees#K-coloring|k-coloring]] of a graph, denoted by $x(G)$
- There is currently no efficient algorithm to find the chromatic number of any graph. The current technique uses greedy algortihm to assign colors.

###### Chromatic Number of $K_n$ 
> The chromatic number of $K_n$ is $n$. The chromatic number of $K_5$ is 5
> ![[Pasted image 20220424163722.png |500]]
> 

> Chromatic numbers of $G_1, G_2, G_3$
> ![[Pasted image 20220424163158.png |400]]
> $x(G_1) = 2$
> $x(G_2) = 3$
> $x(G_3) = 3$ where $Y=R$

##### Greedy Algorithm
- Number of set of possible colors
- Order the verticies of the graph in any arbitrary order
- Color the first vertex with the first color
- For the remaining set of verticies, assign $v$ a color that is different from the color of $v$'s neighbors and use the lowest numbered color possible to select a color for $v$. 

##### Bipartite Color Theorem
A bipartite graph has a chromatic number of $x(G) = 2$.

##### Odd Cycle Color Theorem
If graph $G$ has an [[123 Graphs and Trees#Odd Cycle|odd cycle]], then it has a chromatic number of $x(G) = 3$

##### Four Color Theorem
The chromatic number of a planar graph is no greater than 4, meaning $x(G) \le 4$ 

## 9.8 Trees
A graph where every vertex is connected by exactly one path, otherwise known as an [[Definitions#Acyclic graph|acyclic graph]].

##### Trivial Tree
A tree with a single vertex

##### Empty Tree
A tree with no verticies

#### Forest
A collection of trees, otherwise known as a simple, undirected graph with no simple circuits
![[Pasted image 20220424171159.png |400]]

##### Tree Test Theorem
Every vertex in a tree is connected by exactly one path

##### Tree Edge Theorem
For any positive integer $n$, any tree with $n$ verticies has $n - 1$ edges

###### Proving Tree Edge Theorem

> | Step | Name                 | Description                                                                                                                                                |
| ---- | -------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1    | Proof.               | Proof step                                                                                                                                                 |
| 2    | Assignment           | Let $P(n)$ hold the property of the statement for vertex $n$                                                                                               |
| 3    | Base case            | When $n=1$, $P(1) = 1$                                                                                                                                     |
| 4    | Inductive Hypothesis | $k \ge 1$. Assume $P(n)$ is true for all tree on $n = k$ verticies                                                                                         |
| 5    | Inductive step       | Let $T$ be a tree with $n = k + 1$ verticies. Let $v$ be a leaf of the tree $T$ and tree $T' = T - v$, meaning $T' = k-1$ edges. $T = (k-1) + 1 = k$ edges |
| 6    | Therefore            | Therefore, any tree with $n$ verticies has $n-1$ edges $\square$                                                                                                                                                            |

#### Rooted Tree
A tree where one vertex has been designated as a root and every edge is directed away from the root
![[Pasted image 20220424172706.png|400]]

##### Parent
A vertex above the current vertex (max 1 parent)

##### Child
The verticies connected beneath a vertex

##### Terminal Node
A vertex with no children

##### Ancestors
Vertices connecting a vertex to the root

##### Descendants
Verticies beneath a vertex

##### Internal Node
Verticies with children

##### Siblings
Verticies with the same parent

##### m-ary tree
For $m > 1$, if every internal vertex of a rooted tree has at most $m$ children. 
![[Pasted image 20220424173928.png |400]]


##### Binary Tree
A tree with a max of two children per vertex. 
- Can be described as an m-ary tree where $m = 2$
![[Pasted image 20220424174348.png]]


##### Full Binary Tree
A binary tree where each vertex has either 2 children, or no children
![[Pasted image 20220424174425.png]]

##### Level of Tree
How many parent verticies separate the current node from the root

![[Pasted image 20220424174739.png |300]]

##### Height of a Tree
The maximum level of a tree
![[Pasted image 20220424174831.png |400]]


##### Balanced Tree
A binary tree where the height of the left and right subtree of any vertex don't differ by more than 1
![[Pasted image 20220424175136.png |400]]

##### Heap / Ordered Rooted Tree
Where the children of each node are organized from least to greatest from left to right
![[Pasted image 20220424175606.png|400]]

##### Theorem 17
A full m-ary tree with $i$ internal verticies contains a total of $n = mi + 1$ verticies and $i + 1$ leaves.

> If $T$ is a full binary tree with 8 internal verticies, then $T$ has $2 \cdot 8 + 1 = 17$ vertices

##### Full m-ary tree Theorems

| condition              | formula 1                            | formula 2                        |
| ---------------------- | ------------------------------------ | -------------------------------- |
| $n$ verticies          | $i = \frac{(n - 1)}{m}$              | $l = \frac{ (m - 1) n + 1  }{m}$ leaves |
| $i$ internal verticies | $n = mi + 1$ vertices                | $l = (m - 1)i + 1$ leaves              |
| l leaves               | $n = \frac{ml - 1}{m - 1}$ verticies | $i = \frac{(l - 1)}{(m - 1)}$ internal verticies                                |

##### Theorem 19
If $T$ is a binary tree with $t$ leaves and height $h$ then $t \le 2^h$ 

> How many verticies does a full 3-ary tree with 100 internal vertices have?
> **ANS:** 
> Since the tree is a full 3-ary tree, every internal vertex has three children. Therefore, the total number of verticies of the tree is $3 \cdot 100 + 1 = 301$ 

> How many leaves does a full 4-ary tree with 97 verticies have?
> **ANS:** 
> We know a full m-ary tree with $n$ verticies has leaves $l = \frac{(m-1) n +1}{m}$ 
> Therefore, a full 4-ary tree with 97 verticies

##### Theorem 20
There are at most $m^h$ leaves in an m-ary tree of height $h$

##### Corollary 5
If an m-ary tree of height $h$ has $l$ leaves, then $h \ge \lceil \log_m l \rceil$ 

##### Binary Search Tree (BST)
![[Pasted image 20220424182234.png |400]]

> (Binary Search Trees). Construct a binary search tree for the words: “the quick brown fox jumps over the lazy dog”
> ![[Pasted image 20220424182725.png |400]]


##### Decision Tree 
Rooted trees can be used to model problem based on a series of decisions
![[Pasted image 20220424182847.png |300]]

> (Decision Trees). A decision tree is used to sort three distinct elements x, y, z
> **ANS:**
> ![[Pasted image 20220424182914.png | 500]]


## Tree Traversal Algorithms
1. Breadth First Search (BFS)
	1. Djikstra's Algorithm
2. Depth First Search (DFS)
	1. Inorder Traversal
	2. Preorder Traversal
	3. Postorder Traversal


##### Universal Address System
A way to order the verticies of an ordered rooted tree using recursion.
1. The root $r$ is labeled with 0 and its children are labeled 1, 2, ..., n left to right
2. If an internal vertex $v \ne r$ has a label $L$, then its $k_v$ children get lebels $L \cdot 1, L \cdot 2, ..., L \cdot k_v$ respectively

>$0 < 1 < 1 < 1 \cdot 1 < 1 \cdot 2 < 1 \cdot 3 < 2 < 2 \cdot 1 < \cdot 3 < 3 \cdot 1 < 3 \cdot 2$ 
> ![[Pasted image 20220424184025.png |400]]

### Depth First Search (DFS)
**Defintion:** Traverses from the root to visit the deepest branches within that path
**Data Structure:** Stack
-  Traverse down a trees path until it ends. Pop off the stack until you find a node you havent traversed yet
![[Pasted image 20220131163658.png]]
##### Preorder Traversal Algorithm
A DFS variant, visiting
1. Visit root
2. Visit left subtrees recursively
3. Visit right subtrees recursively by preorder

![[Pasted image 20220131164832.png]]

> Apply the preorder traversal algorithm on ordered rooted tree $T$ and list all the vertices of the tree visited based on preorder traversal.
> ![[Pasted image 20220424184507.png |400]]
> 1. i, j, m, s, t, u, k
> 2. n, o, l, p, v, w
> 3. x, q, r, y, z

##### Inorder Traversal Algorithm
1. Visit left subtrees recursively by inorder
2. Visit root
3. Visit right subtrees recursively preorder

![[Pasted image 20220131162858.png |400]]

> Apply inorder traversal algorithm on an ordered rooted tree $T$ and list all the verticies of the tree visited by inorder treversal algorithm
> ![[Pasted image 20220424185108.png |400]]
> 1. s, m, t, u, j, i, n
> 2. k, o, v, p, w, x, l
> 3. q, y, r, z

##### Postorder Traversal Algorithm
1. Visit left subtrees recursively by inorder
2. Visit right subtrees recursively by preorder
3. Visit root

![[Pasted image 20220131164959.png]]

> Apply the postorder traversal algorithm on ordered rooted tree T and list all the vertices of the tree visited by postorder traversal algorithm.
> ![[Pasted image 20220424194408.png |400]]
> 1. s, t, u, m, j, n
> 2. o, k, v, w, x, p
> 3. q, y, z, r, l, i

### Breadth-First Search
Data Structure: Queue
Definition: Starts at the root node and visits each node on the current depth before moving to the next level
![[Pasted image 20220131165123.png]]

#### Tree Expression
Mathmatical expressions can be expressed using trees

![[Pasted image 20220424194647.png |400]]

##### Prefix Notation
Notation where operators precede their operands. When traversing a tree to obtain prefix notation we traverse in preorder

> Find the prefix expression of the tree $T$
> Note: 1 in level 3 is supposed to be a "/" (division)
> ![[Pasted image 20220424195124.png]]
> **ANS:** Using preorder traversal, we can find the expression of our equation is 
> $$* \quad + \quad / \quad 36 \quad 9 \quad 4 \quad * \quad 2 \quad 3 \quad / \quad 10 \quad 5$$

##### Postfix Notation
Notation where numbers are written before operands and is obtained through [[123 Graphs and Trees#Postorder Traversal Algorithm|postorder traversal]]

> What is the postfix expression of tree $T$
> ![[Pasted image 20220424195124.png]]
> $$36 \quad 9 \quad / \quad 4 \quad + \quad 2 \quad 3 \quad * \quad 10 \quad 5 \quad / \quad - \quad *$$


##### Spanning Trees
Essentially a graph turned into a tree by deleting edges and keeping all the verticies
![[Pasted image 20220424200500.png |300]]

> Find the spanning tree of the graph using the DFS algorithm
> ![[Pasted image 20220424201324.png |400]]
> **ANS:**
> ![[Pasted image 20220424201348.png |200]]
> 
> 