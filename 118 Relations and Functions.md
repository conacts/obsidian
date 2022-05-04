TARGET DECK: Discrete Math
## Relations
 ##### Binary Relation 
A relation between the elements of two sets

> Suppose there is a relation between set $A$ and set $B$. A binary relation $R$ from $A$ to $B$ is equal to $R \subseteq A \times B$  
> $$R \subseteq A \times A \quad A=\{1, 2, 3, 4\}$$
> $$R=\{(1, 2), (2, 1), (2, 3), (3, 2), (4, 1), (1, 4)\}$$
> $R=\{(x,y) \quad | \quad (x-y) \text{ is odd } \}$ 


##### Reflexive 
If $\forall a \in A$  we have $a R a$ then **the relationship** is reflexive
- If set contains the pattern (1, 1), (2, 2), (3, 3)
- Means x has a relation onto itself

##### Symmetric
If $\forall a \in A$  we have $a R b \rightarrow b R a$ then **the relationship** is symmetric
- This means that if you invert the a and b in the relationship it will still work

##### Transitive
$x, y, z \in A, (xRy \land yRz) \rightarrow (x=y)$
- This means that for all x and y in A if a relationship **R** exists 

![[Pasted image 20220301202128.png]]
![[Pasted image 20220222130847.png]]

##### Anti-Symmetric
Means there is only either a relation $xRy$ or $yRx$ but not both

##### Inverse Relation
Noted as $R^{-1}$ 
Essentially just flipping the order of the ordered pair, as (x,y) = (y, x)
![[Pasted image 20220222111553.png]]

**Example :: Reflexive? Symmetric? Transitive?**
> Let $A=\{a,b,c\}$ where $R=\{(a,b),(a,c),(c,b),(b,c)\}$ Determine whether it is reflexive, symmetric or transitive.
> 
> **ANS:** 
> Not reflexive: $(a,a),(b,b),(c,c) \not\in R$ 
> Not symmetric: $(a,b) \in R$ but $(b,a) \not\in R$ 
> Not transitive: $(c,b) \in R$ and $(b,c) \in R$ are true, but $(c,c) \not\in R$ 
> 
> -----
> Let $A=\{a,b,c\}$ where $R=\{(a,a),(a,b),(a,c),(c,c),(b,b),(c,b)\}$ Determine whether it is reflexive, symmetric, anti-symmetric, or transitive.
>
> **ANS:** 
> Reflexive:  $(a,a),(b,b),(c,c) \in R$ 
> Not Symmetric: $(a,b) \in R$, but $(b,a) \not\in R$ 
> Transitive: Not sure why but it is
> Anti-Symmetric: $(a,b)$ but no $(b,a)$, $(a,c)$ but no $(c,a)$, and $(c,b)$ but no $(b,c)$

| Relation  | Reflexive | Symmetric | Transitive | Anti-Symmetric |
| --------- | --------- | --------- | ---------- | -------------- | 
| $\le$     | X         | 0         | X          | X              |     
| (divides) | X         | 0         | X          | X              |     
| <         | 0         | 0         | X          | ?              |     
| =         | X         | X         | X          | 0               |   


#### Types of Relations
There are two types of relations (equivalence classes) frequently occuring in mathematics, 
1. Equivalence Relation
2. Partial Ordering

##### Equivalence Relation
A relation satisfying...
1. Reflexivity
2. Symmetry
3. Transivity

**Example :: Is R an equivalence relation?**
> $R \text{ is } \ne$ 
> 
> **ANS:**
> Not Reflexive: $a \ne a$ is not reflexive
> Symmetric: $3 \ne 9$ and $9 \ne 3$ 
> Not transitive: $6 \ne 8$ but $8 \ne (4 + 2)$ and $6 \ne (4 + 2)$ is false
 
##### Partial Order Relation
A relation satisfying...
1. Reflexivity
2. Anti-Symmetry
3. Transivity

