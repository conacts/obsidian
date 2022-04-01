Show that if x is an odd integer, then $x^2$ has the form $8k + 1$, for some $k \in \mathbb{Z}$

Proof. 
By definition of odd: 
	$x = 2y + 1$
By algebra: $x^2 = 4y^2 + 4y + 1$ 
By algebra: $2(2y^2 + 2y) + 1$ 
Assume: $z, n \in \mathbb{Z}$
Subsitution: $2(2y^2 + 2y) + 1 = 2(z) + 1$ 
Subsitution: $8k + 1 = 2(4k) + 1 = 2(n) + 1$ 
Since $z, n \in \mathbb{Z}$ we can assume $2z + 1 = 2n + 1$
Therefore, we can prove that  $x^2$ has the form $8k + 1$, for some $k \in \mathbb{Z}$   $\square$ 

----

Solve for $23^3 \mod 30$ 
$23^3 = 12167$
Using division algorithm, we get $12167 = 30 \cdot 405 + 17$
ANS: 17

-----
1. (1) Show that if an integer n is not divisible by 3, then $n^2 - 1$ is always divisible by 3. (2) Similarly, show that if an integer n is not divisible by 3 then $n^2 - 1 \equiv 0$ 

Proof.
We proceed with induction on the variable "n"
Base Case: $1^2 -1 = 0$

Inductive Hypothesis: $n = k$ as we proceed 
Inductive Step: $n = 2k$
Note: We know that many even numbers will not be divisible by 3
By algebra: $(2k)^2 - 1 = (4k^2) - 1 = 2(k^2) - 1$ 
$2(k^2) - 1 = 2(k)^2 -1$
Now with $2k^2 -1$ in the form of an odd number, we can set it equal to 3
Algebra: $2k^2 - 1 = 3$
Algebra: $2k^2 = 4$
Algebra: $k^2 = 4$
Algebra: $k = 2$
Therefore, any $k \ge 2$ we can claim that if $n^2$ is not divisible by 3, then $n^2 -1$ always will be divisible by 3

-----


----
Find GCD of $2947$ and $3997$ using Euclidian Theorem.

| Numerator | Divisor | Quotient | Remainder |
| --------- | ------- | -------- | --------- |
| 3997      | 2947    | 1        | 1050      |
| 2947      | 1050    | 2        | 847       |
| 1050      | 847     | 1        | 203       |
| 847       | 203     | 4        | 35        |
| 203       | 35      | 5        | 28        |
| 35        | 28      | 1        | 7         |
| 28        | 7       | 4        | 0         |

ANS: 7


---
Express $gcd(128469, 12818)$ as a linear combination of 128469 and 12818 using extended Euclid algorithm.

| a      | b     | q   | r   | s1  | s2   | s3   | t1   | t2   | t3    |
| ------ | ----- | --- | --- | --- | ---- | ---- | ---- | ---- | ----- |
| 128469 | 12818 | 10  | 289 | 1   | 0    | 1    | 0    | 1    | -10   |
| 12818  | 289   | 44  | 102 | 0   | 1    | -44  | 1    | -10  | 441   |
| 289    | 102   | 2   | 85  | 1   | -44  | 89   | -10  | 441  | -892  |
| 102    | 85    | 1   | 17  | -44 | 89   | -133 | 441  | -892 | 1333  |
| 85     | 17    | 5   | 0   | 90  | -133 | 754  | -892 | 1333 | -7557 |

Therefore we know that gcd(128469, 12818) = 17 achieved through the extended Euclid algorithm


----
Prove that if $a | bc$ with $gcd(a,b) = 1$ then $a|c$
Proof. 
Assume $P(x) = gcd(a,b) = 1$ 
This tells us that $P(x)$ has no GCD, besides 1 which is always a given.
This means there is no common divisor between a and b, enabling us to set $b=1$
By algebra: $a|bc = a|(1)c = a|c$
Therefore, if  $a|bc$  with $gcd(a,b) = 1$ then $a|c$     $\square$  

-----
Prove that $gcd(a^2, b^2) = gcd(a,b)^2$ using Bezout's identity

Proof. 
Assume $P(x) = gcd(a^2, b^2)$ and $Q(x) = gcd(a,b)^2$
By definition of Bezout's identity, we know that $ax + by = d$ and we can apply this on $P(x)$ and $Q(x)$ 
By algebra: $(ax)^2 + (by)^2 = (ax + by)^2$
By algebra: $(ax + by)^2 = (ax + by)^2$ 
Therefore, by the Bezout's Identity we know that $gcd(a^2, b^2) = gcd(a,b)^2$    $\square$  

----
For $Z_{11}$ find 
1. $3 \oplus 7 = 3 + 7 \mod 11 = 10$
2. $3 \otimes 7 = 3 \cdot 7 \mod 11 = 10$ 
3. $10 \ominus 7 = 10 - 7 \mod 11 = 3$
4. $10 Ø 7 = 10 \cdot 8 = 80 \mod 11 = 3$   
	1. $(7*8 \mod 11) = 1$

----

Determine whether every element a of $Z_n$ has an inverse for $n=5,6,7,11$

$Z_5 = \{0, ..., 5\}$
1. $1 \cdot 6 \mod 5 = 1$ : 6
2. $2 \cdot 3 \mod 5 = 1$ : 3
3. $3 \cdot 7 \mod 5 = 1$ : 7
4. $4 \cdot 1 \mod 5 = 1$ : 1

$Z_6 = \{0, ..., 6\}$
1. $1 \cdot 7 \mod 6 = 1$ : 7
2. $2 \cdot X \mod 6 = 1$ NO INVERSE X
3. $3 \cdot X \mod 6 = 1$ NO INVERSE X
4. $4 \cdot X \mod 6 = 1$ NO INVERSE X
5. $5 \cdot 5 \mod 6 = 1$ : 5


$Z_7 = \{0, ..., 7\}$
1.  $1 \cdot 8 \mod 7 = 1$ : 8
2.  $2 \cdot 4 \mod 7 = 1$ : 4 
3.  $3 \cdot 5 \mod 7 = 1$ : 5
4.  $4 \cdot 2 \mod 7 = 1$ : 2
5.  $5 \cdot 3 \mod 7 = 1$ : 3
6.  $6 \cdot 6 \mod 7 = 1$ : 6


$Z_{11} = \{0, ..., 11\}$
1. $1 \cdot 12 \mod 11 = 1$ : 12
2. $2 \cdot 6 \mod 11 = 1$ : 6
3. $3 \cdot 4 \mod 11 = 1$ : 4
4. $4 \cdot 3 \mod 11 = 1$ : 3
5. $5 \cdot 9 \mod 11 = 1$  : 9
6. $6 \cdot 2 \mod 11 = 1$ : 2
7. $7 \cdot 8 \mod 11 = 1$ : 8
8. $8 \cdot 7 \mod 11 = 1$ : 7
9. $9 \cdot 5 \mod 11 = 1$ : 5
10. $10 \cdot 10 \mod 11 = 1$ : 10


Therefore  all elements of $Z_5, Z_7, Z_{11}$ have inverses but not all elements of $Z_6$ 


-----

10. Write the following decimal string $334_{10}$ to senary (base 6) showing work:
$334/6 = 55, \quad R=4$
$55/6 = 9, \quad R=1$
$9/6 = 1, \quad R=3$
$1/6 = 0, \quad R = 0$
ANS: $1314_6$
