Deck: Discrete Math

# Chapter 3: Proofs
## 3.1 Proof Terminology
##### Proof
**Definition:** A statement that can be verified as true for any condition

##### Lemma
**Definition:** A theorem whose purpose is to help prove another theorem

##### Corollary
**Definition:** An immediate consequence of a theorem or proposition


##### Odd theorem
An integer is odd if $n=2 \cdot a + 1$ for some integer $a \in \mathbb{Z}$ 
In logic, 
$$n \text{ is odd} \leftrightarrow \exists a \in \mathbb{Z}, (n=2 \cdot a + 1)$$
##### Even Odd theorem
An integer is even if $n=2 \cdot a$ for some integer $a \in \mathbb{Z}$ 
In logic, 
$$n \text{ is even} \leftrightarrow \exists a \in \mathbb{Z}, (n=2 \cdot a)$$
##### Parity
Two integers have the same parity if they are both either even or both odd

##### 2 Types of Proofs:
1. [[117 Proofs#3 2 Direct Proof |Direct Proof]] 
2. [[117 Proofs#3 3 Indirect Proofs |Indirect Proofs]]

## 3.2 Direct Proof
Proof structure is very important when we write a proof for a statement.
1. Proof always start with word **"Proof"**
2. Proof always end with square symbol $\square$ 
3. First line states we assume the statement $P$ is true, and last line concludes that the statement $Q$ is true
	1. $P$ is the given statement
	2. $Q$ is the statement we transform $P$ to show validity
4. You must initialize your variables when starting a proof
5. When changing $P$ we must use a proven hypothesis indicated by phrases such as
	1. "by definition"
	2. "by hypothesis"
	3. "by theorem"
6. Assumptions must be stated clearly as well
	1. "Suppose"
	2. "Assume"
7. Conclusions are used to conclude your proof before the square ( $\square$ )
	1. "We must show that"
	2. "In other words"

**Example :: Direct Proof:**
> We must show that the following argument is valide where a is an integer
> $$\frac{a \text{ is odd}}{\therefore a^2 \text{ is odd}}$$
> 
> | **Step** | **Proof**                                             | **Rule**             |
> | -------- | ----------------------------------------------------- | -------------------- |
> | 1.       | Proof                                                 | Start proof          |
> | 2.       | Assume a is odd                                       | Assume               |
> | 3.       | $a = 2x + 1, \quad x,y \in \mathbb{Z}$                | By definition of odd |
> | 4.       | $a^2 = (2x + 1)^2 = 4x^2 + 4x + 1 = 2(2x^2 + 2x) + 1$ | By algebra           |
> | 5.       | $y = 2x^2 + 2x \quad a^2 = 2y + 1$                    | Subsitute            |
> | 6.       | $a^2$ is odd                                                 | By definition of odd |
> 
> ---
> Let $x$, $y$ and $z$ be integers. If $x|y$ and $x|z$, then $x|(y+z)$.
> (Let $R:x|y, \quad S:x|z$. So, $P:\space(R \land S)$ and $Q: \space x|(y+z)$)
> 
> | Step | Rule                     | Proof                                                            |
> | ---- | ------------------------ | ---------------------------------------------------------------- |
> | 1    | Start Proof              | Proof.                                                                                       |
> | 2    | Assume                   | Suppose $x\|y$ and $x\|z$                                                                    |
> | 3    | Assume                   | Suppose $P$ (as seen above)                                                                  |
> | 4    | By definition of divides | $x\|y$ means $y=x \cdot c$ where $c$ is an integer                                           |
> | 5    | By definition of divides | $x\|z$ where an integer d causes $z=x \cdot d$                                               |
> | 6    | By algebra               | $y + z = x \cdot c + x \cdot d \quad y + z = x \cdot (c + d)$                                |
> | 7    | Subsitute                | Since $c, d \in \mathbb{Z}$ we can subsitute them for $(c + d) = I$ where $I \in \mathbb{Z}$ |
> | 8    | By definition of divides | $x \cdot I\|(y + z) = x\|(y + z)$                                                            |
> | 9    | Therefore                | Therefore $x \|(y + z) \quad \square$                                                                                       |

### Proving a Universal Statement
A universal statement has the following form 
$$\forall x \in U, P(x) \quad \quad \forall x \in U, \text{ if } P(x) \text{ then } Q(x)$$
$U$ meaning the set of everything

**Example :: Proving a Universal Statement:**
> Prove that the product of two odd integers is odd
> 
> | Step | Rule                    | Proof                                                       |
> | ---- | ----------------------- | ----------------------------------------------------------- |
> | 1    | State Proof             | Proof                                                       |
> | 2    | Assume                  | $\forall x, y \in \mathbb{Z}$ and $\forall$                 |
> | 3    | By communitive property | if $x$ and $y$ are odd then $x \cdot y$ is odd              |
> | 4    | By definition of odd    | $x = 2a + 1, \quad y = (2b + 1)$                            |
> | 5    | By subsitution          | $x \cdot y = (2a + 1)(2b + 1)$                              |
> | 6    | By algebra              | $x \cdot y = 2(2ab + a + b) + 1$                            |
> | 7    | By subsitution          | $x \cdot y = 2c + 1$ where $c \in \mathbb{Z}$               |
> | 8    | Therefore               | Therefore, the product of two odd integers is odd $\square$ |


### Some Common Mistakes
##### 1. Making Arguments by Examples
> For example, the product of two odd integers
> 
> | Step | Rule        | Proof               |
> | ---- | ----------- | ------------------- |
> | 1    | State Proof | Proof               |
> | 2    | Assume      | $x = 3$ and $y = 9$ |
> | 3    | By algebra  | $3 \cdot 9 = 27$    |
> | 4    | Therefore   | 27 is an odd integer $\square$  |

##### 2. Confusion between what is given in the statement and what is still to be proven
Assuming that $x \cdot y = 2c + 1$ rather than proving it through steps

##### 3. Use the same latter to define two different terms
Using the same variable name for two separate terms is an error
$$x = 2a + 1, \quad y = 2a + 1 \text{ is an error}$$
##### 4. Confusion between using "any" instead of "some"
You must be consistent when using "for some" and "for all" in the same statement
$$\forall a, \exists c \quad a = 2c + 1$$

### Case Analysis


## 3.3 Indirect Proofs
### Proof by Contraposative:
Proof where a conditional statement is equivalent to its contrapositive

$$P \rightarrow Q = \lnot Q \rightarrow \lnot P$$
**Truth Table:**

| $P \quad Q$ | $\lnot P \lnot Q$ | $P \rightarrow Q$ | $\lnot Q \rightarrow \lnot P$ |
| ----------- | ----------------- | ----------------- | ----------------------------- |
| T  T        | F  F              | T                 | T                             |
| T  F        | T  F              | F                 | F                             |
| F  T        | F  T              | T                 | T                             |
| F  F        | T  T              | T                 | T                              |


### Proof by Contradiction 
Proof where either a statement is true or it is false but not both


# 6 Proof by Induction

### 6.1 Induction
Proving a statement holds true for $P(n)$ by saying for every $P(n) \rightarrow P(n+1)$ is true. Starting with a base case and proving all the way to $n$ is how you accomplish this.

**Note:**
Summation ( $\sum$ ) is key to **Proof by Induction**

#### Steps to creating a proof by induction
1. **Base Case:** Prove that $P(i)$ is true for its initial value
2. **Inductive Hypothesis:** Assume that for any arbitrary integer $k \ge$ initial value, $P(k)$ is true
3. **Inductive Step:** With the proof of inductive hypothesis, show that $P(k+1)$ is true, otherwise written as $P(k) \rightarrow P(k+1)$ is true

**Example :: Proof by Induction:**
> **IDEA BEHIND THE PROOF**
> Proof: "for all integers $\forall n,\sum^n_{i=1}i=\frac{n(n+1)}{2}$ is true"
> 1. See if the proof is true or false
> This can be done by creating a table for many possible edge cases for the problem
> 2. For the base case / basis step we will check the initial value and final value of the equation
> 3. Proof by induction means we assume the statement above is correct
> 4. We must now rewrite the equation
> $$1 + 2 + 3 + ... + k= \frac{k(k+1)}{2}$$
> 5. For inductive step, we must prove that $P(k+1)$ for $n=k+1$ proving $P(k+1)$ claims that $\sum^{k+1}_{i=1} i=\frac{k+1(k+2)}{2}$
> 6. We can rewrite the equation as 
> $$1 + 2 + 3 + ... + (k + 1) = \frac{k+1(k+2)}{2}$$

 **Example :: Proof By Induction:**
 > 1. We proceed by **induction on the variable** $n$ (necessary)
 > 2. **Base Case:** $(n=1)$: We must prove $\sum^1_{i=1} i=\frac{1(1+1)}{2}$
 > We must compute both sides of the equation to confirm the same answer
 > 3. **Inductive Hypothesis:** $(n=k)$
 > For any arbitrary integer $n=k$ where $k \ge 1$, we assume that $\sum^k_{i=1} i=\frac{k(k+1)}{2}$
 > 4. **Inductive Step:** (Prove the statement for $n=k+1$)
 > We must show $\sum^{k+1}_{i=1} i=\frac{(k+1)(k+2)}{2}$
 > To show this lets use algebra on the left side of the equation
 > $$\sum^{k+1}_{i=1} i= (\sum^k_{i=1} i) + (k + 1) \quad \text{by making the next - to - last term explicit}$$
 > $$=\frac{k(k+1)}{2} + (k+1) \quad \text{by inductive hypothesis}$$
 > $$=\frac{k(k+1) + 2(k+1)}{2}$$
 > $$=\frac{(k+1)(k+2)}{2}$$
 > 5. Therefore, it is true that $\forall n, \sum^n_{i=1} i= \frac{n(n+1)}{2}$


#### 2 Types of Induction
Inductions used to prove a statement or a property for all nonnegative integers or for all natural numbers

**Weak Induction vs Strong Induction:**

| Step                 | Weak Induction                                                       | Strong Induction                                                        |
| -------------------- | -------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| Base Case            | We construct a proof $P(i)$ for initial value $P(1)$ for a statement | We must prove more than one base case, for example $P(1),P(2),P(3),...$ |
| Inductive Hypothesis | We assume that $P(k)$ is true for arbitrary integer $k$              | We assume that all values $1$ to $k$ for $P(1)$ through $P(k)$ are true |


#### Weak Induction

![[Pasted image 20220323194120.png]]

#### Strong Induction
Strong Induction specializes in solving a problem with multiple base cases

![[Pasted image 20220323194106.png]]

##### Strong Induction Structure
Theorem: $\forall n P(n)$

| Step | Rule                        | Proof                                                                                          |
| ---- | --------------------------- | ---------------------------------------------------------------------------------------------- |
| 1    | State Proof                 | Proof                                                                                          |
| 2    | Induction on variable       | "We proceed by induction on "n"                                                                |
| 3    | Assume                      | Let $P(n)$ hold the property of a statement                                                    |
| 4    | Base Case                   | Prove that $P(x),P(x+1), ..., P(y)$ are all true where integers $x \le y$                      |
| 5    | Strong Inductive Hypothesis | For any integer $k \ge y$ assume that $P(i)$ is true for all integers $i$ from $x$ through $k$ |
| 6    | Inductive Step              | With the proof of the strong inductive hypothesis, show that $P(k+1)$ is true                  |
| 7    | Therefore                   | Therefore, it is true that for all $n \ge x, P(n) \quad \square$                               |

