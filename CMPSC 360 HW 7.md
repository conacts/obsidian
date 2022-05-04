Find the recursive formula for the given series.
(1, 2, 6, 24, 120, 710,   ........)

ANS: 
Base case: $a_1 = 1$
recursive formula: $a_n = a_{n-1}$

---
Suppose g: A → B and f: B → C where A = {a,b,c,d}, B = {1,2,3}, C = {2,3,6,8}, and g and f are defined by g = {(a,2),(b,1), (c,3), (d,2)} and f = {(1,8), (2,3), (3,2)}.
$f \circ g = {(a,3),(b,8),(c,2),(d,3)}$ 
- ANS: ${(a,3),(b,8),(c,2),(d,3)}$
$f^{-1} = {(2,3),(3,2),(8,1)}$
- ANS: ${(2,3),(3,2),(8,1)}$
$f \circ f^{-1} = {(8,8),(3,3),(2,2)}$
- ANS: ${(8,8),(3,3),(2,2)}$

----

Prove that if $F:X \rightarrow Y$ is bijective, then function $F$ has an inverse
For a function to be bijective it must be 
1. Surjective (Onto): when every element in Y is mapped onto by X
	1. The elements of X->Y map back and forth therefore stating it is onto by definiton of inverse
2. Injective (One-to-one): The $f(g(x)) = g(f(x))$
	1. By definition of one-to-one we can state that $f(g(x)) = g(f(x))$ is true in the context of this proving that both

Because $X \rightarrow Y$ and $Y \rightarrow X$ are true
By definition of bijective, we know that this function has an inverse

---

If you randomly choose five numbers from the integers 1 through 8, then two of them must add up to 9. (Apply Pigeonhole Theorem and justify your answer)

ANS: 
Number of pigeons = 5
[1, 8]
[2, 7]
[3, 6]
[4, 5]
Number of pigeon holes = 4 (as shown above)
pigeons > pigeon holes
$$\lceil \frac{5}{4}\rceil = 2$$