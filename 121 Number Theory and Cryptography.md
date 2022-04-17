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


### Mod / Modulus
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

##### Modular Division ⊘
Modular division is equivalent to $a \otimes b^{-1}$

###### Example :: Modular Division:
> In $\mathbb{Z}_{10}$, calculate $4 \oslash 7$       
> $$4 \oslash 7 = 4 \otimes 7^{-1} = 4 \cdot 3 \mod 10 = 2$$

#### Integer Representations
Some math is easier to do with numbers represented in another form such as binary

##### Octal:
Make the number up of $8^n$ 
$$315_8 = 3 \cdot 8^2 + 1 \cdot 8^1 + 5 \cdot 8^0 = 205_{10}$$
######  Example :: Decimal Representation of Base 6 :
> Suppose we use base 6 number system. What is the decimal representation of $315_6$?
> $$315_6 = 3 \cdot 6^2 + 1 \cdot 6^1 + 5 \cdot 6^0 = 119_{10}$$

###### Example :: Decimal representation of Hex: 
> What is the decimal representation of $BA7_{16}$
> $$BA7_{16} = 11 \cdot 16^2 + 10 \cdot 16^2 + 7 \cdot 16^0 = 2983_{10}$$

### Primes and Greatest Common Divisor

##### Primes
An integer $p$ greater than 1 is a prime number if its only factors are $1$ and $p$. 

##### Composite
A non-prime number that is greater than 1

###### Prime vs. Composite
> Determine whether 11 and 121 are prime.
> 1. $11$ is prime since only $11 \cdot 1 = 11$ 
> 2. $121$  is composite since $11 \cdot 11 = 121$ 

##### Prime Factorization
The expression of a number as a product of primes

##### Fundamental Theorem of Arithmetic
Every integer greater than 1 can be expressed as a prime number or a product of prime numbers

###### Example :: Find Prime Factorization:
> Find the prime factorization of 999
> NOTE: Divide by the lowest divisor until you get a prime number
> 1. Divide 999 by its lowest divisble prime 3
> $$999 \div 3 = 333  $$
> 2. Next divide 333 by 3 again
> $$333 \div 3 = 111$$
> 3. Next divide 111 by 3 again
> $$111 \div 3 = 37$$
> 4. Because 37 is prime
> $$3 \cdot 3 \cdot 3 \cdot 37 = 3^3 \cdot 37 = 999$$
> ---
> Find the prime factorization of 100
> $$100 / 2 = 50 / 2 = 25 / 5 = 5 / 5 = 1 = 2^2 \cdot 5^2$$

###### Example :: Find If the Number is Prime:
> Determine whether 731 is a prime or not 
> We get $\sqrt{731}=27$  and all prime numbers between 2 and 27

#### Prime Number Conjectures
1. Every odd integer has a form of either $4k + 1$ or $4k + 3;ak + b$ 
2. For all positive integers $n \le 40, f(n) = n^2 - n + 41$ is prime
3. Every even number is the difference of two primes
4. For every even number $2n$ there are infinetely many pairs of consecutive primes, which differ by $2n$

##### Twin Prime Conjecture
There are infinetely many twin primes. Twin primes are pairs of primes that differ by 2, such as 3 and 5, 5 and 7

##### Goldbach's Conjecture
Every integer $n > 5$ is the sum of three primes

##### Euler Conjecture
Every even integer $n, n > 2$ is the sum of two primes. 

## 8.3 GCD as Linear Combinations
The greatest common divisor (GCD) can be expressed as a linear combination with integer coefficients $a$ and $b$.
$$\text{linear combination} = (c)a + (d)b$$

##### Fundamental Theorem of Arithmatic
Every positive integer greater than 1 can be expressed as a product of primes called its prime factorization

###### Example :: Find the GCD:
> Find $gcd(22, 44)$
> Common divisors of 22 and 44 are 1, 2, 11, 22 and greatest common divisor of 22 and 44 is $gcd(22, 44) = 2$ 
> ----
> Find $gcd(112, 424)$ using prime factorization
> $$112 = 2^4 \cdot 7$$
> $$424 = 2^3 \cdot 53$$
> $$gcd(112, 424) = 2^{min(3,4)} \cdot 7^{min(1,0)} \cdot 53^{min(1,0)}$$
> $$= 2^3 \cdot 7^0 \cdot 53^0 = 8 \cdot 1 \cdot 1 = 8$$


##### Euclid Algorithm
An algorithm used to find the GCD using a "forward pass" and then a "backward pass", which involve multiple steps of division

1. Suppose $a$ and $b$ are integers with $a > b \ge 0$
2. To find the greatest common divisor of $a$ and $b$, first check whether $=0$. If it is, then using **"Lemma" GCD** (a, 0) = a

##### Theorem 9:  Let $a, b$ and $c$ are positive integers such that $gcd(a,b)=1$ and $a|bc$ then $a|c$
Suppose m be a positive integer and let a, b and c be integers
$$IF \space a \cdot c \equiv (b \cdot c \mod m) \quad and \quad gcd(c,m) = 1, \space then \space a \equiv(b \mod m)$$


###### Example :: Lemma Problem:
> Proof that Let $a, b$ and $c$ are positive integers such that $gcd(a,b)=1$ and $a|bc$ then $a|c$
> 1. Proof. 
> 2. Suppose $a \cdot c \equiv b \cdot c$ and $gcd(c,m)=1$, where $m$ is a positive integer and $a,b$ and $c$ are integers
> 3. By the definition of congruince modulo, we get $m|ac-bc$. Then, $m|c(a-b)$ 
> 4. Since $gcd(c,m)=1$, by Lemma (Theorem 9), we get $m|(a-b)$
> 5. Thus, $a \equiv b \mod m \space \square$ 
> ----
> If $15 \equiv -6 \mod 7$ and $gcd(3,7)=1$ then $5 \equiv -2 \mod 7$
> Here, $m=7, a=5,b=-2,$ and $c=3$ 

#### Linear Congrunce 
We used to solve $cx=m$ in algebra, which is called a linear equation where $c,m \in \mathbb{R}$. To solve this equation, we multiply both sides of the equation by $c^{-1}=\frac{1}{x}$ and get $x=\frac{m}{c}$

A congrunce of the form
$$cx \equiv d \mod m$$
where $m$ is a positive integer $c,d\in \mathbb{Z}$ and $x$ is a variable, is called a linear congruence.

Suppose that we want to find the $x$ that satisfy $2x \equiv 5 \mod 7$ or $7|2x-5$. 
If $x=6$, then $7|12-5$. Here, $x=6$ is one possible solution for $x$. There are many possible values for $x$. For instance, $x=13$ and $x=-8$ also satisfy the congruence. We will study now how to solve a linear congruence and find the values for variable $x$. 

###### Solving Linear Congruence
> Find the linear linear congruence of $cx \equiv d \mod m$
> 1. Find an inverse of $c \mod m$ giving us $c^{-1}$
> 2. Multiply both sides of the congruence by $c^{-1}$
> 	1.  $$c^{-1}\cdot c \cdot x \equiv c^{-1} \cdot d \mod m$$
> 3. We know $c^{-1} \cdot c \equiv 1 \mod m$. So we get $x \equiv c^{-1} \cdot d \mod m \equiv e \mod m$
> 	1. This leaves us with $c^{-1} \cdot d \mod m = e$
> 4. Therefore, one possible value for x is e. All possible values for $x$ are $e+m\cdot k$ where $k \in \mathbb{Z}$
> ----
> What are the solutions of linear congruence $2x \equiv 5 \mod 7$
> 1. Find the inverse of 

##### Theorem 10
If $gcd(c,m)=1$ and $m>1$, then there exists an inverse of $c$ written as $c^{-1}$

###### Proving Theorem 10
> 1. Proof
> 2. If $gcd(c,m)=1$, then by Bezout's theorem we know that there exists integers $u$ and $v$ such that $cu + mv=1$. 
> 3. This implies: $cu + mv \equiv 1 \mod m$
> 4. Since $mv \equiv \mod m$, we get $cu \equiv \mod m$
> 5. Therefore, by the definition Theorem 10, $u$ is an inverse of $c$ modulo $m \space \square$  

###### Finding the Inverse of a Modded Number
> 1. $2 \mod 7$
> 	1. $$2 \cdot c^{-1} \mod 7 = 1, \quad 2 \cdot 4 \mod 7 = 1, \quad c^{-1} = 4$$
> 2. $4 \mod 9$
> 	1. $4 \cdot c^{-1} \mod 9 = 1, \quad c^{-1}=7$

###### Example :: Compute Congruence:
> Solve the congruence $4x \equiv 3 \mod 6$
> 1. We set variables 
> 	1. $$a=4,m=6,c=3 \quad ax \equiv c \mod m$$
> 2. Then $d=gcd(4,6)=2$ and we cannot divide 3 by 2
> 3. Since it doesn't work, we divide $\frac{4x \equiv 2 \mod 6}{2}$ which gives us $2x \equiv 1 \mod 3$ 
> 4. Then we repeat above, setting variables
> 	1. $$a=2,m=3,c=1 \quad ax \equiv c \mod m$$
> 5. Then $d=gcd(2,3)$

##### Theorem 11
Let $a,c,m$ be integers with $m \ge 1$ and let $d=gcd(a,m)$
1. If $d|c$, then there is a solution for $ax\equiv c\mod m$
2. If $d\space \not| \space c$, then there is a solution for $ax\equiv c\mod m$


###### Example :: Find GCD using Euclid Algorithm:
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

##### Extended Euclidian Algorithm
An extension of the euclid algorithm which is followed by a recursive pass

> 
> | i   | $r_i$ | $r_{i+1}$ | $q_{i+1}$ | $r_{i+2}$ |
| --- | ----- | --------- | --------- | --------- |
| 0   | 250   | 115       | 2         | 20        |
| 1   | 115   | 20        | 5         | 15        |
| 2   | 20    | 15        | 1         | 5         |
| 3   | 15    | 5         | 3         | 0          |
> 
> Base Case: $s_0 = 1 \quad s_1 = 0$ and $t_0 = 0 \quad t_1 = 1$ 
> Recursive Case: $s_i = s_{i-2} - q_{i-1} \cdot s_{i-1}$ and $t_i = t_{i-2} - q_{i-1} \cdot t_{i-1}$ 
> 1. First compute s: 
> $$i=2; \quad s_2 = s_0 - q_1 \cdot s_1 = 1 - 0 \cdot 2 = 1$$
> $$i=3; \quad s_3 = s_1 - q_2 \cdot s_2 = 0-5 \cdot 1= -5$$
> $$i=4; \quad s_4 = s_2 - q_3 \cdot s_3 = 1-1 \cdot (-5) = 6$$
> 2. Then compute t:
> $$i=2; \quad t_2 = t_0 - q_1 \cdot t_1 = 0 - 2 \cdot 1 = -2$$
> $$i=3; \quad t_3 = t_1 - q_2 \cdot t_2 = 1-5 \cdot (-2)= 11$$
> $$i=4; \quad t_4 = t_2 - q_3 \cdot t_3 = -2-1 \cdot 11 = -13$$
> Since $s_4=6$ and $t_4 = -13$, $\text{gcd}(250,115)=6 \cdot 250 - 13 \cdot 115$
> 
> 
> | i   | $r_i$ | $r_{i+1}$ | $q_{i+1}$ | $r_{i+2}$ | $s_i$ | $t_i$ |
| --- | ----- | --------- | --------- | --------- | ----- | ----- |
| 0   | 250   | 115       | 2         | 20        | 1     | 0     |
| 1   | 115   | 20        | 5         | 15        | 0     | 1     |
| 2   | 20    | 15        | 1         | 5         | 1     | -2    |
| 3   | 15    | 5         | 3         | 0         | -5    | 11    |
| 4   |       |           |           |           | 6     | -13   |

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

#### Chinese Remainder Theorem

