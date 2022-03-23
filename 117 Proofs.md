Deck: Discrete Math

# Chapter 3: Proofs
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


## 3.3 Indirect Proofs
##### Proof by Contraposative:
Proof where a conditional statement is equivalent to its contrapositive

##### Proof by Contradiction 
Proof where either a statement is true or it is false but not both

## Proof by Induction

### Induction
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
 > 1. We proceed by induction on the variable $n$ (necessary)
 > 2. Base Case: $(n=1)$: We must prove $\sum^1_{i=1} i=\frac{1(1+1)}{2}$
 > We must compute both sides of the equation to confirm the same answer
 > 3. Inductive Hypothesis: $(n=k)$
 > For any arbitrary integer $n=k$ where $k \ge 1$, we assume that $\sum^k_{i=1} i=\frac{k(k+1)}{2}$
 > 4. Inductive Step: (Prove the statement for $n=k+1$)
 > We must show $\sum^{k+1}_{i=1} i=\frac{(k+1)(k+2)}{2}$
 > To show this lets use algebra on the left side of the equation
 > $$\sum^{k+1}_{i=1} i= (\sum^k_{i=1} i) + (k + 1) \quad \text{by making the next - to - last term explicit}$$
 > $$=\frac{k(k+1)}{2} + (k+1) \quad \text{by inductive hypothesis}$$
 > $$=\frac{k(k+1) + 2(k+1)}{2}$$
 > $$=\frac{(k+1)(k+2)}{2}$$
 > 5. Therefore, it is true that $\forall n, \sum^n_{i=1} i= \frac{n(n+1)}{2}$


#### 2 Types of Induction
##### Weak Induction

##### Strong Induction


Include variable for induction

name what kind of value of K (natural number or whatever)

Induction step (algebra)

