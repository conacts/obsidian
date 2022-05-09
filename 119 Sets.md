TARGET DECK: Discrete Math
# Sets:
## 1.1 Set Theory

##### Set 
A set is an unordered collection of distinct objects, otherwise known as members or elements.
 - Order of the elements doesn't matter in a set, meaning two sets with the same elements are the same.

##### Example :: Set notation:
>  $a \in A$ : element a **is** in set A
> $a \notin A$ : element a **is not** in set A
> 
> $V=\{a,e,i,o,u\}$ : To denote a set you contain all the elements within curly braces "{ }"

![[Pasted image 20220118002628.png | 400]]

#### Important Sets
$\mathbb{N} = \text{set of all natural numbers = \{1, 2, 3, ....\}}$ $\mathbb{N}_0 = \text{set of all natural numbers with 0 = \{0, 1, 2, 3, ...\}}$
 $\mathbb{Z} = \text{set of all integers}=\{...,-2, -1, 0, 1, 2, ...\}$
 $\mathbb{Z}^+ = \text{set of all positive integers}=\{1, 2, 3, ...\}$
 $\mathbb{R} = \text{set of all real numbers = any number on number line}$
 $\mathbb{R}^+ = \text{set of all positive real numbers = positive number on number line}$
 $\mathbb{C} = \text{set of all complex numbers = real and imaginary numbers}$
 $\mathbb{Q} = \text{set of all rational numbers = number that can be expressed as a fraction}$
 $U = \text{a set containing every item}$  
 $\emptyset = \text{an empty set, otherwise referred to as nullset \{\}}$

##### Disjoint Sets
Sets with no element in common

##### Joint Sets
Sets with at least one element in common

###### 1.1 Flashcards:

 
$\mathbb{N}$ #flashcard
$\mathbb{N} = \text{set of all natural numbers = \{1, 2, 3, ....\}}$
<!--ID: 1642481641950-->



$\mathbb{N}_0$ #flashcard
$\mathbb{N}_0 = \text{set of all natural numbers with 0 = \{0, 1, 2, 3, ...\}}$
<!--ID: 1642481658621-->


 
$\mathbb{Z}$ #flashcard 
$\mathbb{Z} = \text{set of all integers}=\{...,-2, -1, 0, 1, 2, ...\}$
<!--ID: 1642481684446-->



$\mathbb{Z}^+$ #flashcard 
$\mathbb{Z}^+ = \text{set of all positive integers}=\{1, 2, 3, ...\}$
<!--ID: 1642481684454-->




$\mathbb{R}$ #flashcard 
$\mathbb{R} = \text{set of all real numbers = any number on number line}$
<!--ID: 1642481684464-->



 
$\mathbb{R}^+$ #flashcard 
$\mathbb{R}^+ = \text{set of all positive real numbers = positive number on number line}$
<!--ID: 1642481684473-->



 
$\mathbb{C}$ #flashcard 
$\mathbb{C} = \text{set of all complex numbers = real and imaginary numbers}$
<!--ID: 1642481684483-->



 
 $\mathbb{Q}$ #flashcard 
$\mathbb{Q} = \text{set of all rational numbers = number that can be expressed as a fraction}$
<!--ID: 1642481684491-->


 
 $U$ #flashcard 
$U = \text{a set containing every item}$
<!--ID: 1642481684501-->


 
 $\emptyset$ #flashcard 
$\emptyset = \text{an empty set, otherwise referred to as nullset \{\}}$
<!--ID: 1642481684509-->




 - Sets can also be elements of a set
	 - $S = \{\{1, 2, 3\}, a, \{b, c\}\}$
	 - $P = \{\mathbb{N}, \mathbb{Z}, \mathbb{R}\}$
	 
**Null Set:** an empty set, denoted by $\emptyset$, or {}
- A set can also contain a null set, which is noted as $\{\emptyset\}$

**Singleton:** a set with only one element

Singleton #flashcard 
a set with only one element
<!--ID: 1642483217944-->


---
------

## 1.2 Set Builder Notation

##### Set Builder Notation
A mathematical way to describe a set
$$\text{set = \{expression | rule\}}$$
###### Example :: Set builder notation:

$\{3x | x \in \mathbb{Z}\}= \text{Set of multiples of 3}$

$S = \{3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36, 39\}$

#### Subset notation
$$\subseteq = \text{is element of} \quad \nsubseteq = \text{is not element of}$$

##### Theorem :: Subset Theorems:
The empty set is a subset of all sets
$$\emptyset \subseteq A$$
A subset is a subset of itself
$$A \subseteq A$$

#### Proofs

How to prove or prove/disprove that A is a subset of set B? ($A \subset B$)
- Prove: Must prove that if x belongs to A, then x belongs to B
- Disprove: Show that one element x in A doesn't belong to B

###### 1.2 Problems:

T / F : $0 \in \emptyset$ #flashcard 
False
<!--ID: 1642450254629-->

T / F : $\emptyset \in {0}$ #flashcard 
False
<!--ID: 1642450441396-->

T / F : $\{0\} \in \{0\}$ #flashcard 
False
<!--ID: 1642453763966-->


T / F : $\{0\} \subseteq \{0\}$ #flashcard 
True
<!--ID: 1642453763975-->


T / F : $\{0\}=0$ #flashcard 
False
<!--ID: 1642453763976-->


T / F : $\{a\} \in \{a, b, c\}$ #flashcard 
False
<!--ID: 1642453763978-->


T / F : $\{a\} \subseteq \{a, b, c\}$ #flashcard  
False
<!--ID: 1642453763980-->


T / F : $\{a\} \subseteq \{\{a\}, \{b\}, \{c\}\}$ #flashcard 
False
<!--ID: 1642453763981-->


T / F : $\{a\} \in \{\{a\}, \{b\}, \{c\}\}$ #flashcard 
True
<!--ID: 1642453763982-->


T / F : Suppose $A=\{a,e,0\}$ and $B=\{0,1\}$ are two sets. Then...
A×(B×B)=\{(a,0,0),(a,0,1),(a,1,0),(a,1,1),(e,0,0),(e,0,1),(e,1,0),(e,1,1),(0,0,0),(0,0,1),(0,1,0),(0,1,1)\} #flashcard 
False, because it is inside of a set
<!--ID: 1642453763984-->


  
T / F : Suppose A=r,a,m and B=x,y and C=0,1 are sets. Then,
C×A×B.=(0,r,x),(1,r,x),(0,r,y),(1,r,y),(0,a,x),(1,a,x),(0,a,y),(1,a,y),(0,m,x),(1,m,x),(0,m,y),(1,m,y) #flashcard 
True
<!--ID: 1642453763985-->


T / F : Suppose A={0,2,4,6,8} and B={1,3,5,7} are two sets and then universal set U={0,1,2,3,...,8}. A∩B={1,2,3,4,5,6,7,8} #flashcard 
False
<!--ID: 1642453763986-->


T / F : Suppose A={0,2,4,6,8} and B={1,3,5,7} are two sets and then universal set U={0,1,2,3,...,8}. 
$\overline{A \cap B}$ = U−(A∩B)=∅ #flashcard 
False
<!--ID: 1642453763987-->


T / F : Suppose A={0,2,4,6,8} and B={1,3,5,7} are two sets and then universal set U={0,1,2,3,...,8}.
$\overline{A \cap B}$={0,1,2,3,4,5,6,7,8} #flashcard 
True
<!--ID: 1642453763989-->


T / F : Let A={a,b,c,d,e} and B={a,b,c,d,e,f,g,h}.A∪B = {a,b,c,d,e,f,g,h}. #flashcard  
True
<!--ID: 1642453763990-->


T / F : Let A={a,b,c,d,e} and B={a,b,c,d,e,f,g,h}. A∩B = {a,b,c,d,e}. #flashcard 
True
<!--ID: 1642453763992-->


T / F : Let A={a,b,c,d,e} and B={a,b,c,d,e,f,g,h}. A−B = {f,g,h} #flashcard 
False
<!--ID: 1642453763993-->


T / F : Let A={a,b,c,d,e} and B={a,b,c,d,e,f,g,h}. B−A = ∅ #flashcard 
False
<!--ID: 1642453763995-->


T / F : Let A={a,b,c,d,e} and B={a,b,c,d,e,f,g,h}. ∅×(B×A)=∅ #flashcard 
True
<!--ID: 1642453763996-->





## 1.3 Set Cardinality:

##### Set Cardinality
Number of distinct elements in the set A, denoted by $|A|$

**Theorem 2:**
Nullset within a set counts as a distinct element
$$|\emptyset|=0 \quad \quad |\{\emptyset\}|=1$$

###### 1.3 Problems:
Suppose A={2,3,5},C={6,1,2},B={8,5,3} are sets. What is A∩(B∪C) ? #flashcard 
{2, 3, 5}
<!--ID: 1642464971743-->

Definition: Cardinality #flashcard 
Number of distinct elements in the set A, denoted by $|A|$
<!--ID: 1642483217954-->

Consider the set S that contains all prime numbers less than 10. How many subsets can S have? #flashcard  
16
<!--ID: 1642464971746-->


given that {x,2}⊂{6,2,9} and {1,x,4}⊂{3,4,1,9}. What is/are possible value(s) of x? #flashcard 
x=9
<!--ID: 1642464971748-->


Consider sets A={x|x is a prime number less than 7} and B={y|y is perfect square of an integer and y is less than 29}. What is the cardinality of the cartesian product of A and B? #flashcard 
15
<!--ID: 1642464971750-->


S={x|x is a integer less than 3 and larger than −2} #flashcard 
{-1, 0, 1, 2}
<!--ID: 1642464971752-->


Choose the set that matches the following set builder notation S={x|x∈(P×Q)}: where P={a,b} and Q={1,3,5} #flashcard 
{(a,1),(a,3),(a,5),(b,1),(b,3),(b,5)}
<!--ID: 1642464971753-->


S={x|x∈P∧x∉Q} where
P={(1,2),(−1,−6),(2,3),(9,0),(1,3)} and Q={(9,0),(7,0),(7,2),(1,−6)} #flashcard 
{(1,2),(−1,−6),(2,3),(1,3)}
<!--ID: 1642464971755-->


S={x∈Z+|x<48,x is even}. #flashcard 
{2,4,6,8...46}
<!--ID: 1642464971757-->


T / F : Let A,B,C be sets. There exists an x∈(A−C)∩(C−B). #flashcard 
False
<!--ID: 1642464971758-->


##### Power Set:
The set of all possible subsets of set A is denoted by $\mathcal{P}(A)$, or known as power set of A
- Cardinality of power set = $2^n$
$$|\mathcal{P}(A)| = 2^n \quad n=\text{num of elements}$$


###### 1.4 Flashcards:

Definition: Powerset #flashcard
The set of all possible subsets of set A is denoted by $\mathcal{P}(A)$
<!--ID: 1642483217968-->


How to get cardinality of a power set #flashcard 
Cardinality of power set = $2^n$
<!--ID: 1642483217976-->



## 1.5 Cartesian Products: 
##### Cartesian Products:
The multiplication of two sets where the output is ordered pairs of a tuple; notation: $A \times B$ 
- Number of Power set of Cartesian products: $|\mathcal{P}(A)|=2^{|A\times B|}$
- Number of Cartesian Products: Multiply the number of all elements


###### Example :: Cartesian product:

```ad-example
title: Example: Cartesian product
color: grey
$A=\{a, b\}$, $B=\{1, 2, 3\}$
$A\times B = (a, 1), (a, 2), (a, 3), (b, 1), (b, 2), (b, 3)$
----
$A$ = {a, b, c}, $B$ = {1, 2}, $C$ = {L, R}
 $A \times B \times C$ = { (a, 1, L), (b, 1, L), (c, 1, L),  
(a, 1, R), (b, 1, R), (c, 1, R),  
(a, 2, L), (b, 2, L), (c, 2, L), 
(a, 2, R), (b, 2, R), (c, 2, R)
}
```


###### 1.5 Flashcards:

How to get the power set of a Cartesian product? #flashcard 
Power set of Cartesian products: $|\mathcal{P}(A)|=2^{|A\times B|}$
<!--ID: 1642483217986-->


Definition: Cartesian Product #flashcard 
The multiplication of two sets where the output is ordered pairs of a tuple; notation: $A \times B$ 
<!--ID: 1642483217993-->


## 1.6 Set Operations


| Set Operation | Representation | Set Builder Notation                     | Definition                                      |
| ------------- | -------------- | ---------------------------------------- | ----------------------------------------------- |
| Union         | $A \cup B$     | $\{x ~l~ x \in A \text{ OR } x \in B\}$  | Combines both sets into one set                 |
| Intersection  | $A \cap B$     | $\{x ~l~ x \in A \text{ AND } x \in B\}$ | Items within two sets that are the same                                                |
| Difference    | $A - B$               |  $\{x ~l~ x \in A \text{ OR } x \not\in B\}$                                        | The set containing all the elements of set A that aren't in set B                                                |
| Complement    | $\overline{A}$ | $\{x \in U ~l~ x \not\in A\}$            | The difference of the universal set minus set A |

## 1.7 Identity Rules

| Rule                   | 1                                                      | 2                                                      |
| ---------------------- | ------------------------------------------------------ | ------------------------------------------------------ |
| Identity Laws          | $A \cup \emptyset = A$                                 | $A \cap U = A$                                         |
| Domination Laws        | $A \cup U = U$                                         | $A \cap \emptyset = \emptyset$                         |
| Idempotent Laws        | $A \cup A = A$                                         | $A \cap A = A$                                         |
| Complement Laws        | $A\cup \overline{A}  = A$                              | $A \cap \emptyset = \emptyset$                         |
| Absorption Laws        | $A \cup (A \cap B) = A$                                | $A \cap (A \cup B) = A$                                |
| Double Complement Laws | $\overline{\overline{A}}=A$                            | XXXX                                                   |
| Commutative Laws       | $A \cup B = B \cup A$                                  | $A \cap B = B \cap A$                                  |
| Associative Laws       | $(A \cup B) \cup C = A \cup (B \cup C)$                | $(A \cap B) \cap C = A \cap (B \cap C)$                |
| Distributive Laws      | $(A \cup B) \cap C = (A \cup B) \cap (A \cup C)$       | $(A \cap B) \cup C = (A \cap B) \cup (A \cap C)$       |
| De Morgan's Laws       | $\overline{A \cup B} = \overline{A} \cap \overline{B}$ | $\overline{A \cap B} = \overline{A} \cup \overline{B}$ |

