TARGET DECK: Discrete Math

##### Number Theory
The branch of mathematics that studies  whole numbers (natural numbers and integers)

## 8.1 Divisibility and Modular Arithmetic
### Division
- Suppose $a, b \in \mathbb{Z}$ and $a \ne 0$.
- We say $a|b$  iff (if and only if) there is an integer $k$ such that $b = a \cdot k$
- The notation $a|b$ represents fraction $\frac{b}{a}$.
- If a does not divide b, this is denoted by $a \nmid \space b$ 

> Determine whether $7|21$ or $4|26$
> $$\frac{21}{7}:\quad 7 \cdot 3 = 21,\quad \quad \frac{26}{4}: 4 \not\mid 26$$

##### Properties of Division
1. $a|a$ (every integer divides itself)
2. If $a|b$ and $a|c$, then $a|(b + c)$
3. If $a|b$ then $a|bc$ for all integers c
4. If $a|b$ and $b|c$ then $a|c$ (transitivity)
5. If $a|b$ and $a|c$ then $a|bm + cn$ where $m, n \in \mathbb{Z}$
6. If $a|b$ then $an|bn$ (multiplication property)
7. If $am|bm$ and $b \ne 0$ then $a|b$ (cancellation property)
8. $1|a$ (1 divides any integer)
9. If $a|1$ then $a = \pm 1$ (the only divisors of 1 are 1 and -1)
10. $a|0$ (every integer divides by 0)



> Example 8.1.4
> 1. Suppose $x, y \in \mathbb{Z}$. Is $5x + 5y = 5(x + y)$
> $$\frac{5x + 5y }{5}= \frac{5(x + y)}{5}$$
> 2. If $m$ and $n$ are integers, is $16mn$ divisible by 4?
> $$\text{YES, by the associative law we get } 16mn = 4 \cdot (4mn) = 4 \cdot k$$

##### Division Algorithm
When we divide an integer by a positive integer, there is a quotient and a remainder. For instance, when we divide 17 by 5 we get a quotient 3 and a remainder 2. you would get $17 = 3 \cdot 5 + 2$

The quotient-remainder theorem or the division algorithm says that when any integer $a$ is divided by any positive integer $b$, there is a quotient $q$ and a nonnegative remainder $r$. 

##### Theorem 1 (The division algorithm)
Let $a$ be an integer and $b$ a positive integer. Then there are unique integers $q$ and $r$ such that 
$$a = bq + r \text{ and } 0 \le r < b$$
- $b$ is a divisor
- $a$ is a dividend
- $q$ is a quotient
- $r$ is a reminder


### Mod
Let $a \in \mathbb{Z}$ and $b \in \mathbb{Z}^+$ 
the integer quotient obtained when $a$ is divided by $b$, and 
$$a \text{ mod } b = r, \quad \quad \mathbb{Z}_m = \mod m$$
the nonnegative integer remainder obtained when $a$ is divided by $b$
**Note:** If $b$ divides $a$, then $q=\left[ \frac{a}{b}\right]$ 

##### Congruence Modulus
$a$ is congruent to $b$ modulo $m$, denoted by $a \equiv$ $b$ (mod $m$) if $m$ divides $(a-b)$
- If m does not divide $a-b$, they are not congruent

#### Modular Arithmetic

##### Modular Addition $\bigoplus$ 
Denoted by $\oplus$ 
$$a \oplus b = a + b \mod m$$

> Suppose $m=12$. Find $11 \oplus 5$
> $$11 \oplus 5 = (11 + 5) \mod 12 = 4$$

##### Modular Multiplication $\bigotimes$  
Denoted by $\otimes$
$$a \otimes b = a \cdot b \mod m$$

> Suppose $m=12$. Find $11 \otimes 5$
> $$(11 \cdot 5) \mod 12 = 7$$

##### Properties of modular addition and multiplication
For $\mathbb{Z}_m$ if $m > 1$:
- **Closure:** Let $a, b \in \mathbb{Z}_m$, then $a \oplus b \in \mathbb{Z}_m$ and $a \otimes b \in \mathbb{Z}_m$ 
- **Communative:** For all $a, b \in \mathbb{Z}_m, a \oplus b = b \oplus a$ and $a \otimes b  = b \otimes a$ 
- **Associative:** For all $a, b, c \in \mathbb{Z}_m, a \oplus (b \oplus c) = (a \oplus b) \oplus c$ and $a \otimes (b \otimes c) = (a \otimes b) \otimes c$.
- **Identity:** For all $a \in \mathbb{Z}_m, a \oplus 0 = a, a \otimes 1 = a$ and $a \otimes 0 = 0$.
- **Distributive:** For all $a,b,c \in \mathbb{Z}_m, a \otimes (b \oplus c) = (a \otimes b) \oplus (a \otimes c)$.

##### Modular Subtraction $\ominus$  
Denoted by $\ominus$ 
$$a \ominus b = (a - b) \mod m$$
> Suppose $m = 12$. Find $5 \ominus 7$
> $$(5 - 7) \mod 12 = 10$$

##### Modular Reciprocal
var $a \in \mathbb{Z}_m$ where $a^{-1}$ is the inverse of a
- The inverse is a number multiplied by it's opposite to get the number 1
- The inverse of a number being modded just returns the number 1

1. The inverse of 1 using mod 6 is 1
$$\mathbb{Z}_6 : 1 \times 1 \mod 6 = 1$$
2. The inverse of 5 using mod 6 is 5
$$\mathbb{Z}_6 : 5 \times 5 \mod 6 = 1$$
> In $\mathbb{Z}_10, calculate $4 Ø 7$       
> $$4 Ø 7 = 4 \otimes 7^{-1} = 4 \cdot 3 \mod 10 = 2$$

##### Integer Representations
Some math is easier to do with numbers represented in another form such as binary

**Octal:**
Make the number up of $8^n$ 
$$315_8 = 3 \cdot 8^2 + 1 \cdot 8^1 + 5 \cdot 8^0 = 205_{10}$$


## 8.3 GCD as Linear Combinations
The greatest common divisor (GCD) can be expressed as a linear combination with integer coefficients $a$ and $b$.
$$\text{linear combination} = (c)a + (d)b$$

##### Fundamental Theorem of Arithmatic
Every positive integer greater than 1 can be expressed as a product of primes called its prime factorization

> Find the prime factorization of 100
> $$100 / 2 = 50 / 2 = 25 / 5 = 5 / 5 = 1 = 2^2 \cdot 5^2$$
> Find the prime factorization of 999
> $$999/ 3 = 333 / 3 = 111 / 3 = 37 = 3^3 \cdot 37$$
> ----
> Determine whether 731 is a prime or not 
> We get $\sqrt{731}=27$  and all prime numbers between 2 and 27
> ----
> Find $gcd(22, 44)$
> Common divisors of 22 and 44 are 1, 2, 11, 22 and greatest common divisor of 22 and 44 is $gcd(22, 44) = 2$ 
> ----
> Find $gcd(112, 424)$ using prime factorization
> $$112 = 2^4 \cdot 7$$
> $$424 = 2^3 \cdot 53$$
> $$gcd(112, 424) = 2^{min(3,4)} \cdot 7^{min(1,0)} \cdot 53^{min(1,0)}$$
> $$= 2^3 \cdot 7^0 \cdot 53^0 = 8 \cdot 1 \cdot 1 = 8$$

##### Euclid Algorithm
1. Suppose $a$ and $b$ are integers with $a > b \ge 0$
2. To find the greatest common divisor of $a$ and $b$, first check whether $=0$. If it is, then using **"Lemma" GCD** (a, 0) = a

> Express GCD(250, 115) = 5 as a linear combination of 250 and 115
> **Euclid Algorithm:**
> 1. $250 = 115 \cdot 2 + 20$
> 2. $115 = 20 \cdot 5 + 50$
> 3. $20 = 15 \cdot 1 + 5$
> 4. $15 = 5 \cdot 3 + 0$
> 5. NOW FLIP THIS
> 6. $5 = 20 - 15 \cdot 1$
> 7. $15 = 115 - 20 \cdot 5$
> 8. $20 = 250 - 115 \cdot 2$
> -----
> Find the GCD of $150$ and $320$.
> 1. $320 / (150 \cdot 2 + 20) \quad; 0 \le 20 < 150$
> 2. $20 / 10 \cdot 2 + 0; \quad 0 \le 10 < 20$
> ----
> Find the gcd of 816 and 2260
> 1. $2260 = 816 \cdot 2 + 628$
> 2. $816 = 628 \cdot + 188$
> 3. $188 = 64 \cdot 2 + 60$
> 4. $64 = 60 \cdot 1 + 4$
> 5. $60 = 4 \cdot 15 + 0$
> 6. $GCD(816, 2260) = 4$

##### Relatively Prime
If the GCD is 1

> Is this relatively prime $gcd(10, 17)$ ?
> Yes, $gcd(10, 17) = 1$

##### Pairwise Relatively Prime
When a set of numbers is all relatively prime

> Is this set relatively prime $A=\{10, 17, 21\}$
> $$gcd(10, 17) = 1, \quad gcd(10, 21) = 1, \quad gcd(17, 21) = 1$$
> Yes, this set is **pairwise relatively prime**  as all numbers in the set have a GCD of 1

##### Bézout’s theorem
Suppose $a,b \in \mathbb{Z}^+$ and d is the greatest common divisor of $a$ and $b$. Then, there exists integers $c$ and $d$ such that $e = (s)a + (t)b$

| $i$ | $r_i$ | $r_{i+1}$ | $q_{i+1}$ | $r_{i+2}$ |
| --- | ----- | --------- | --------- | --------- |
| 0   | 250   | 115       | 2         | 20        |
| 1   | 115   | 20        | 5         | 15        |
| 2   | 20    | 15        | 1         | 5         |
| 3   | 15    | 5         | 3         | 0          | 

