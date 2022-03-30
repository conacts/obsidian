The relation $R$ is defined on the set $\{2, 5, 3, 9, 4\}$ and is represented as matrix 
$$\begin{bmatrix}
0 & 1 & 1 & 1 & 1 \\
0 & 0 & 0 & 1 & 0 \\
0 & 1 & 0 & 1 & 1 \\
0 & 0 & 0 & 0 & 0 \\
0 & 1 & 0 & 1 & 0 \\
\end{bmatrix}$$
1. What is the specifice relation it illustrates?
	1. $xRy \quad iff \quad x < y$
2. Is $R$ [[118 Relations and Functions#Reflexive|reflexive]]?
	1. No
3. Is $R$ [[118 Relations and Functions#Symmetric|symmetric]]?
	1. No
4. Is $R$ [[118 Relations and Functions#Anti-Symmetric|anti-symmetric]]?
	1. Yes
5. Is $R$ [[118 Relations and Functions#Transitive|transitive]]?
	1. Yes
6. Is $R$ an [[118 Relations and Functions#Equivalence Relation|equivalence relation]]?
	1. No
7. Is $R$ a [[118 Relations and Functions#Partial Order Relation|partial order relation]]?
	1. No

-----

Define the function $g: \mathbb{Z} \times \mathbb{Z} \rightarrow \mathbb{Z}$ by $g(m,n) = 2n-4m$
1. Is $g$ [[120 Sequences (Discrete Math)#One-to-one Injective|injective]]? Prove or provide a counterexample.
	1. No, as $2(1) \ne 4(1)$
2. Is $g$ [[120 Sequences (Discrete Math)#Onto Surjective|surjective]]? Prove or provide a counterexample.
	1. No, $g(m,n) = 2n-4m = 2(n - 2m)$ is even when the first digit in $\mathbb{Z}$, $1$ is odd we cannot say this is surjective

----
Let $A = \{1,2,3,4\}$ and $B=\{a,b,c\}$. Find a function $f:A \rightarrow B$ which is either [[120 Sequences (Discrete Math)#One-to-one Injective|injective]] or [[120 Sequences (Discrete Math)#Onto Surjective|surjective]] but not both.
1. Surjective but not injective
	1. $C=\{ (1,a), (2,a), (3,b), (4,c) \}$
	2. It is surjective since each $x$ is mapped to some $y$
	3. It is not injective since two $x$'s are mapped onto a single $y$

-----
Suppose $A,B$ and $C$ are sets and that $f:A \rightarrow B$ and $g:B \rightarrow C$ are functions. 
1. If $g \circ f$ is surjective, is $f$ necessarily surjective? Prove or give a counterexample.
	1. No
	2. $A = B = \{1, 2\}$ and $C = \{1\}$ 
	3. $f(1) = f(2) = 1$
	4. $g(f(1)) = g(f(2)) = 1$
	5. however
	6. ![[Pasted image 20220329070024.png |300]]

-----
Consider the set $S = \mathbb{Z}$ where $xRy$ iff $2|(x + y)$
1. List six numbers that are related to $x = 2$
	1. Using [[121 Number Theory and Cryptography#Properties of Division|properties of division]] we know that "if $2|x$ and $2|y$ then $2|(x + y)$ 
		1. This means we just need to find numbers equivalent to $2|y$
	2. $2|2 + (-4)$
	3. $2|2 + (-2)$
	4. $2|2 + (0)$
	5. $2|2 + (2)$
	6. $2|2 + (4)$
	7. $2|2 + (6)$ 
2. Prove that $R$ is an [[118 Relations and Functions#Equivalence Relation|equivalence relation]] on $S$
	1. Properties of equivalence relation
		1. [[118 Relations and Functions#Reflexive|Reflexivity]]
			1. $x = y = 2x = 2y$ means $\frac{2x}{2}=x$ or $\frac{2y}{2} = y$. This gives us $xRx$ or $yRy$
		2. [[118 Relations and Functions#Transitive|Transivity]]
			1. $xRy$, $yRz$ and $xRz$.
			2. Therefore $2|(x+y)$ and $2|(y+z)$
			3. Then there exists $k,s \in \mathbb{Z}$ where $2k = (x + y)$ and $2s = (y + z)$
			4. Add both equations to get $2k + 2s = x + 2y + z$
			5. Move y to the other side: $2k + 2s -2y = x + z$
			6. Pull out 2: $2(k + s -y) = x + z$
			7. $(k + s -y) \in \mathbb{Z}$ because they are all in $\mathbb{Z}$. This also means $x + z \in \mathbb{Z}$
			8. Therefore $2|(x + z)$ meaning $xRz$
		3. [[118 Relations and Functions#Symmetric|Symmetric]]
			1. $2|(x + y)$
			2. Associative property: $2|(y + x)$
			3. Therefore $y|x$

-----
Show that among any 4 numbers one can find 2 numbers so that their difference is divisble by 3 (Use Pigeonhole Principle).
1. If there are 4 numbers and 2 of them must be divisible by 3, we must rewrite these numbers as follows
	1. $n_1 = 3k_1 + r$
	2. $n_2 = 3k_2 + r$
	3. Now we subtract $n_1$ from $n_2$: 
		1. $3k_1 + r - 3k_2 -r = 3k_1 - 3k_2$
	4. Now we pull out 3: $3(k_1 - k_2)$
	5. We know that $3|3(k_1 - k_2)$ is true


----
Define the sequence $a_1, a_2, a_3, ...$ by $a_1 = 1, a_2 = 2$ and $a_n = 2a_{n-1}-a_{n-2}$ for all $n \ge 3$. Prove that $a_n = n$
1. Note that there are two base cases, meaning we must use [[117 Proofs#Strong Induction|strong induction]] 

| Step | Rule                 | Proof                                                                                                                                                                |
| ---- | -------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1    | State proof          | Proof. Using strong induction we will be showing that $a_n = 2a_{n-1}-a_{n-2}$.                                                                                      |
| 2    | By induction         | We proceed by induction on the variable "n"                                                                                                                          |
| 3    | Assume               | Assume that Let $P(n) = n$ for $n \in \mathbb{N}$                                                                                                                    |
| 4    | Base case            | $a_1 = 1, a_2 = 2$ for all $n \ge 3$                                                                                                                                 |
| 5    | Inductive hypothesis | for $a=k$ gives us $2k_{n-1}-k_{n-2}$                                                                                                                                |
| 6    | Assume               | for $P(i)$ is true for all $1 \le i \le k$                                                                                                                           |
| 7    | Inductive step       | Now we must prove $a_{k+1}$ <br> $a_{k+1} = a_k - a_{k-1}$ knowing that $a_k = k$ and $a_{k-1} = k-1$ <br> $a_{k+1} = 2k - k + 1 = k + 1$, confirming our hypothesis |
| 8    | Therefore            | Therefore for all $n \in \mathbb{N}$ we know that $a_n = n$ for the sequence $a_n = 2a_{n-1}-a_{n-2}$ by strong induction                                                                                           |

-----
For all natural $n$ prove that: 
$$\frac{1}{1^2} + \frac{1}{2^2} +\frac{1}{3^2} + ... + \frac{1}{n^2} \le 2 - \frac{1}{n}$$


| Step | Rule                 | Proof                                                                                                                                                                                                                                                                             |
| ---- | -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1    | Proof                | Proof. We must prove that $\sum^{i}_{n=1} \frac{1}{n^2} \le 2- \frac{1}{n}$                                                                                                                                                                                                       |
| 2    | Induction variable   | We proceed with induction on the variable "n"                                                                                                                                                                                                                                     |
| 3    | Assume               | We assume $P(n) = \sum^{i}_{n=1} \frac{1}{n^2}$                                                                                                                                                                                                                                   |
| 4    | Base case            | $P(1) = 1$                                                                                                                                                                                                                                                                        |
| 5    | Inductive hypothesis | Let $k \in \mathbb{N}$ so that $n=k$ for all $P(k)$                                                                                                                                                                                                                               |
| 6    | Inductive step       | $\frac{1}{1} + ... + \frac{1}{n^2} \le 2 - \frac{1}{(n - 1)} + \frac{1}{n^2}$ <br> $\le 2 + \frac{-n^2 + n - 1}{n^2(n-1)} \approx 2 + \frac{n-n^2}{n^2(n-1)}$ <br> $2 + \frac{n(1-n)}{n \cdot n(n-1)} = 2 + \frac{1-n}{n(n-1)}$ <br> $2 + \frac{-(n-1)}{n(n-1)} = 2 -\frac{1}{n}$ |
| 7    | Therefore            | Therefore $\sum^{i}_{n=1} \frac{1}{n^2} \le 2- \frac{1}{n}$                                                                                                                                                                                                                                                                                  |

-----
What is the remainder when $2^{2022}$ is divided by 15? 
1. Using modulo we can find the remainder
2. $2^4 \equiv 1 \mod 15$
3. $2^{4(505)} = 1 \mod 15 + 2^2$
4. $1 \cdot 2^2 = 5$

-----

Let $g: \mathbb{R} \rightarrow \mathbb{R}$ and the definition of function $g$ is as follows:
$$g(x) = \bigg\{  \substack {3x \quad if \space  x \le 1  \\ 2x + 1 \quad if \space x > 1}$$
Find the inverse of fuction $g$.
1. $y = 3x, \quad y = 2x + 1$
2. $x = \frac{y}{3}, \quad x = \frac{y-1}{2}$
3. $x=1: 1=\frac{3}{3} = 1, \quad 1 = \frac{3-1}{2}$

$$g(x)^{-1} = \bigg\{  \substack {\frac{y}{3}, \quad if \space  y \le 3  \\ ----- \\\frac{y-1}{2} \quad if \space y > 3}$$

-----

Number theory and other: Practice all examples from textbook. 


**Review Notes:**
(Domain, Co-Domain) of each set
1. Same input cannot have different output
2. one-to-one/Injective proof structure
	1. SHOW $X_1 = X_2$ 
	2. CONTRAPOSITIVE: SHOW $X_1 \ne X_2$ 
3. onto/surjective proof structure
	1. SHOW $f(x)=y$ 
	2. $f(x)$ = definition of function

**Inverse function**
1. If a function is bijective, it has an inverse
