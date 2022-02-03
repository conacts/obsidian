TARGET DECK: Discrete Math
# Propositional Logic
**Definition:** A sentence that is either true or false but not both is called a proposition. A proposition is typically expressed as a declarative sentence.

**Example of proposition:**
> True statement :: "The earth is round"
> False statement :: "4 is a prime number"

**Propositional variables:** "p, q and r" are the propositional variables since "x, y and z" are typically used for real numbers.

**Truth value:** The outcome of the statement where the value is either true or false.

#### Connectives and Logical Operators

**Proposition Table:**

| Connectives                       | Notation              | English                               |
| --------------------------------- | --------------------- | ------------------------------------- |
| Negation ($\lnot$)                | $\lnot$p              | "not p" / "it is not the case that p" |
| Disjunction ($\lor$)              | p $\lor$ q            | "disjunction of p and q" / "p or q"   |
| Conjunction ($\land$)             | p $\land$ q           | "conjunction of p and q" / "p and q"  |
| Exclusive Or ($\oplus$)           | p $\oplus$ q          | "either p or q but not both"          |
| Conditional ($\rightarrow$)       | p $\rightarrow$ q     | "if p then q"                         |
| Biconditional ($\leftrightarrow$) | p $\leftrightarrow$ q | "p if and only if q"                  |

**Disjunction (OR) Table:**

| p   | q   | p $\lor$ q |
| --- | --- | ---------- |
| T   | T   | T          |
| T   | F   | T          |
| F   | T   | T          |
| F   | F   | F          |

Conjunction (AND) Table:

| p   | q   | p $\land$ q |
| --- | --- | ----------- |
| T   | T   | T           |
| T   | F   | F           |
| F   | T   | F           |
| F   | F   | F           | 

**Exclusive OR (XOR) Table:**

| p   | q   | p $\oplus$ q |
| --- | --- | ------------ |
| T   | T   | F            |
| T   | F   | T            |
| F   | T   | T            |
| F   | F   | F             |


**Prescedence in propositional logic:**

| Operators                           | prescedence |
| ----------------------------------- | ----------- |
| $\lnot$                             | 1           |
| $\lor \quad \land$                  | 2           |
| $\rightarrow \quad \leftrightarrow$ | 3           |

##### 2.1 Flashcards:

What is the definition of proposition? #flashcard 
A statement that is either true or false but not both
<!--ID: 1642869513646-->


Determine whether the following statement is a proposition.
x+y=11 #flashcard 
No, because it is not possible to determine the truth value of the statement
<!--ID: 1642538012340-->

Determine whether the following statement is a proposition.
x+y=11 for some positive integers x and y. #flashcard 
Yes, because there is a truth value of the statement and that is True.
<!--ID: 1642538012344-->


Determine whether the following statement is a proposition.
x+y=11 for all positive integers x and y. #flashcard 
Yes, because there is a truth value of the statement and that is False
<!--ID: 1642538012345-->


Determine whether the following statement is a proposition.
3(x+y) is odd. #flashcard 
No
<!--ID: 1642538012347-->


##### 2.2 Flashcards:


Let s be “There are infinite prime numbers." What is ¬s?
a) There are finite prime numbers
b) It is not the case that there are infinite prime numbers
c) neither
d) both #flashcard 
<!--ID: 1642538012348-->


##### 2.3 Flashcards:
The expression (x+5)≥x≥0 can be written as conjunction  
a) x≤(x+5)∧x≥0
b) (x+5)≥x∧x≥0
c) none
d) x≥(x+5)∧x≥0 #flashcard 
a and b
<!--ID: 1642972267075-->


What is the truth value of the expression “9 is a prime or not” #flashcard 
True
<!--ID: 1642538012352-->

Find a proposition v with the following truth table:
p	q	v
T	T	F
T	F	F
F	T	T
F	F	F #flashcard 
 ¬p∧q
<!--ID: 1642538012353-->

Determine which statement(s) is/are "Exclusive Or".
a) Today is Monday or it is not.
b) I prefer tea or coffee.
c) Suppose there are two integer x and y. Then x>y or x≤y. 
d) all the above #flashcard 
d) all the above
<!--ID: 1642538012354-->

Let r be “x=2+y" where x is a real number and y is any odd number. What is ¬r?
a) $x \ne 2 + y$
b) it is not the case that $x=2+y$
c) neither
d) both #flashcard 
d)  both


##### 2.4 Flashcards:


Let t : x is an odd integer and s: x+1 is even. Translate the following sentences:
For x+1 is even, it is suﬃcient that x is an odd integer.
s->t or t->s? #flashcard 
t->s
<!--ID: 1642538012357-->



Let t : x is an odd integer and s: x+1 is even. Translate the following sentences:
For x+1 is even, it is necessary that x is an odd integer.
s->t or t->s #flashcard 
s->t
<!--ID: 1642538012358-->



Determine the truth value of the statement:
"If 2+1= 4, then the earth is flat." #flashcard 
True, since the truth table for conditional statement says "F + F = T"
<!--ID: 1642538012360-->



Determine the truth value of the statement:
"If 3 is a prime then 3n+2 is prime." Suppose n=11 #flashcard 
False
<!--ID: 1642538012361-->



Determine the truth value of the statement:
"If 1+1=2 or 1+1=3, then 2+2=3 and 2+2=4." #flashcard 
False
<!--ID: 1642538012362-->



p	q	((p∧¬q)→q)
T	T	a
T	F	b
F	T	c
F	F	d #flashcard 
T, F, T, T
<!--ID: 1642538012363-->



p	q	((p→¬q)→q)
T	T	a
T	F	b
F	T	c
F	F	d #flashcard 
T, F, T, F
<!--ID: 1642538012364-->



#### 2.2 Conditional Statement:

**Conditional Statement:**

| p   | q   | p $\rightarrow$ q |
| --- | --- | ----------------- |
| T   | T   | T                 |
| T   | F   | F                 |
| F   | T   | T                 |
| F   | F   | T                 |

Examples: 
> **Translate the following statement:**
> "If an integer $a$  is a multiple of 6 then $a$ is divisible by 2." 
> r = an integer $a$  a multiple of 6
> s = an integer $a$ divisible by 2
> ANS: $r \rightarrow s$
> 
> **What is the truth value of the statement:**
> "If 39 is a multiple of 3, then there are twenty-six letters in English alphabet."
> p = "39 is a multiple of 3" = True
> q = "there are twenty-six letters in English alphabet" = True
> p $\rightarrow$ q = True $\rightarrow$ True = True

Types of a Conditional Statement:

| Statement      | Latex                         | Example                                                    |
| -------------- | ----------------------------- | ---------------------------------------------------------- |
| Conditional    | $p \rightarrow q$             | IF it is raining today, the game will be cancelled         |
| Converse       | $q \rightarrow p$             | IF the game is cancelled, it is raining today              |
| Contrapositive | $\lnot q \rightarrow \lnot p$ | IF the game is not cancelled, then it is not raining today |
| Inverse        | $\lnot p \rightarrow \lnot q$ | IF it is not raining today, the game will not be cancelled |


Biconditional Statement :: $p\leftrightarrow q = (p \rightarrow q) \land (q \rightarrow p)$:
- A biconditional statement can also be written as 

| p   | q   | $p \leftrightarrow q$ |
| --- | --- | --------------------- |
| T   | T   | T                     |
| T   | F   | F                     |
| F   | T   | F                     |
| F   | F   | T                     |

Example:

> "An integer $a$ is even if and only if $a$ is divisible by 2"
> p = An integer $a$ is even
> q = $a$ is divisible by 2
> $(p \rightarrow q) \land (q \rightarrow p)$ = if $a$ is even then it is divisible by 2... if $a$ is divisible by 2, then it is even
> $p \leftrightarrow q =$ True


##### Tautology:
A proposition that is true for all possible combinations of the question. This means that both statements on either side of the equation are logically equivalent

##### Contradiction:
A compound proposition that is false for all possible combinations of the question

##### Contingency:
A compound proposition that can be either true or false, therefore neither a tautology or contingency


##### 2.5 flashcards: 

Name the property for:  $p \land \lnot q \approx \lnot (\lnot p \lor q)$ #flashcard 
Conditional Equivalent Rule
<!--ID: 1642869513652-->


Name the property for:  $p \land \lnot q \approx \lnot \lnot p \land \lnot q)$ #flashcard 
De Morgan's Rule
<!--ID: 1642869513653-->


What is the difference between a conditional statement and biconditional statement? #flashcard 
Biconditional statement must be true both ways where as conditional statement must be true only one way
<!--ID: 1642869513655-->



### 2.4 Logical Equivalence
##### Logical Equivalence:
AKA: $\approx$ or $\equiv$ 
When two propositional statements have an equivalent truth table, leading them to be essentially equal. Ex. $p\leftrightarrow q = (p \rightarrow q) \land (q \rightarrow p)$ 


##### 2.8 flashcards:

Name the rule: $p \lor (\lnot (\lnot p \land q ))$ to $p \lor (\lnot\lnot p \land \lnot q)$ #flashcard 
De Morgan
<!--ID: 1642869513656-->


Name the rule: $p \lor (\lnot (\lnot p \land q ))$ to $p \lor (p \lor \lnot p)$ #flashcard 
By Double Negation
<!--ID: 1642869513657-->


Name the rule: $p \lor (\lnot (\lnot p \land q ))$ to $(p \lor p) \lor \lnot q$ #flashcard 
Associative
<!--ID: 1642869513658-->


Name the rule: $p \lor (\lnot (\lnot p \land q ))$ to $p \lor \lnot q$ #flashcard 
Idempotent
<!--ID: 1642869513659-->


Name the rule: $p \lor (\lnot (\lnot p \land q ))$ to $\lnot q \lor p$ #flashcard 
Commutative
<!--ID: 1642869513660-->


Name the rule: $p \lor (\lnot (\lnot p \land q ))$ to $q \rightarrow p$ #flashcard 
Conditional Equivalent
<!--ID: 1642869513661-->

### 2.5 Equivalence using Logical Equivalence Rules
- Two famuous logical equivalence rules called **De Morgan's Laws**...
1. Negation of **and**
$$\lnot(p \land q) \approx \lnot p \lor \lnot q$$
2. Negation of **or**
$$\lnot(p \land q) \approx \lnot p \land \lnot q$$
##### Logical Equivalence etc.


| Laws            | AND                                                      | OR                                                      |
| --------------- | -------------------------------------------------------- | ------------------------------------------------------- |
| Communitive     | $p \land q \approx q \land p$                            | $p \lor q \approx q \lor p$                             |
| Associative     | $(p \land q) \land r \approx p \land (q \land r)$        | $(p \lor q) \lor r \approx p \lor (q \lor r)$           |
| Distributive    | $p \land (q \lor r) \approx (p \land q) \lor(p \land r)$ | $p \lor (q \land r) \approx (p \lor q) \land(p \lor r)$ |
| Identity        | $p \land T \approx p; p \land F \approx F$               | $p \lor F \approx p; p \lor T \approx T$                |
| Negation        | $p \land \lnot p \approx F$                              | $p \lor \lnot p \approx T$                              |
| Double Negation | $\lnot(\lnot p) \approx p$                               | NA                                                        |
| Idempotent      | $p \land p \approx p$                                    | $p \lor p \approx p$                                    |
| Universal Bound | $p \land F \approx F$                                    | $p \lor T \approx T$                                    |
| De Morgan       | $\lnot (p \land q) \approx \lnot p \lor \lnot q$         | $\lnot (p \lor q) \approx \lnot p \land \lnot q$        |
| Negation of T   | $\lnot T \approx F$                                      | $\lnot F \approx T$                                     |
| Absorption      | $p \land (p \lor q) \approx p$                           | $p \lor (p \land q) \approx p$                          |
| Inverse Law     | $p \land \lnot p \approx F$                              | $p \lor \lnot p \approx T$                              |

##### Conditional Logical Equivalence
![[Pasted image 20220201053418.png]]

##### Biconditional Logical Equivalence
![[Pasted image 20220201053427.png]]

**Example :: Using Logical Equivalence:** 
> Simplify the following compound proposition $\lnot ((p \land \lnot q) \land r)$ using logical equivalence rules
> 1. Given Statement: $\lnot ((p \land \lnot q) \land r)$ 
> 2. De Morgan: $(\lnot (p \lor \lnot \lnot q) \lor \not r)$
> 3. De Morgan: $\lnot ((p \lor \lnot \lnot q) \lor \lnot r)$
> 4. Double Negation Rule: $\lnot ((p \lor q) \lor \lnot r)$

### 2.6 Predicate Logic
**Definition:** The property of a statement is called a predicate, essentially being the object of the sentence
Ex. "x is a prime number"

##### Domain of a predicate
Typical domain of a predicate is $U$ 

Example :: Using predicate logic:
> 1.  “y is greater than 5"
    Let Q be a predicate where Q stands for “_is greater than 5". The predicate Q(y) is read as “y is greater than 5". Suppose y=3 and Q(3) translates as “3 is greater than 5". The truth value of Q(3) is False.
	>
>2. “The subtraction of x and y is equal to z
    Let R be a predicate where R stands for “The subtraction of _ and _ is equal to _." The predicate R(x,y,z) is read as “The subtraction of x and y is equal to z". Suppose, x=5, y=3, and z=7. The truth value of R(5,3,7) is False.

### 2.7 Quantifiers
Quantifiers are words that can turn any statement into a propositional statement
- All, every, no, some,...

### Universal Quantifiers 
( $\forall$ ) = "For all, for every"
$$\forall x \in U, P(x) \equiv P(x_1) \land P(x_2) \land P(x_3)$$

### Existential Quantifiers
( $\exists$ ) = "exists, for some"
$$\exists x \in U, P(x) \equiv P(x_1) \lor P(x_2) \lor P(x_3)$$

### Sufficient and Necassry Conditions
##### Sufficient
$\forall x P(x)$ is a sufficent condition for $Q(x)$ 
$$\forall x (P(x)\rightarrow Q(x))$$


##### Necessary
$\forall x P(x)$ is a necessary condition for $Q(x)$ 
$$\forall x \lnot P(x)\rightarrow \lnot Q(x)$$
$$(\text{or equiv. }\forall x (Q(x)\rightarrow P(x))$$

##### Only If
$\forall x P(x)$ only if condition for $Q(x)$ 
$$\forall x \lnot Q(x)\rightarrow \lnot P(x))$$
$$(\text{or equiv. }\forall x (P(x)\rightarrow Q(x))$$

##### Bound variable
**Definition:** A variable bound by a quantifier

##### Free variable
**Definition:** A variable not bound by a quantifier


| Negation               | Equiv. Statement         | When True?                              | When False?                |
| ---------------------- | ------------------------ | --------------------------------------- | -------------------------- |
| $\lnot \exists x P(x)$ | $\forall x \lnot P(x)$   | For every x, $P(x)$ is false            | There is an x for which $P(x)$ is true       |
| $\lnot \forall x P(x)$ | $\exists x \lnot P(x)$ | There is an x for which $P(x)$ is false | $P(x)$ is true for every x |

**Example :: English to Quantifiers:**
> 1. "No primes are divisible by 4".
> ANS: $\forall x P(x) \rightarrow \lnot D(x)$ 
> 2. "All men are mortal"
> $\forall x (Man(x) \rightarrow Mortal(x)$ 
> 3. "For all x,y if x is a rational and y is an irrational, then x⋅y is an irrational."
> $\forall x, y((\text{ x is a rational} \land y \text{ is an irrational}) \rightarrow (x \cdot y \text{ is an irrational})$ \


##### Valid Statement
Where $P(x)$ is **true** for all **values** from the domain $U$

##### Unsatisfiable Statement
Where $P(x)$ is **false** for all **values** of the domain $U$

##### Satisfiable Statement
Where $P(x)$ is **true** for **some** values of the domain $U$

### 2.8 Inference Rules

##### Argument
A sequence of statements that end with a final statement known as the **conclusion**

![[Pasted image 20220203054656.png]]
$P_1=$ the hypothesis or the premise of this logical argument
$\therefore =$  therefore
- If the argument is a [[116 Propositional Logic#Tautology |tautology]], it is **valid**,
- otherwise it is a **fallacy**


 ### Rules of deduction


##### Additive
$$\frac{p}{\therefore p \lor q}$$
**Example**
> “It is raining now. Therefore, it is either cloudy or raining now."
> Let p: “It is raining now" and q: “It is cloudy ".
> $$\frac{p}{\therefore p \lor q}$$

##### Conjunction
$$\frac{p \land q}{\therefore q}$$
**Example**
> “It is cloudy and raining now. Therefore, it is raining now."
> Let p: “It is raining now" and q: “It is cloudy ".
> $$\frac{p \land q}{\therefore q}$$

##### Modus Ponens
$$p \rightarrow q$$
$$\frac {p \rightarrow q\atop p}{\therefore q}$$
**Example:**
> “If you have a key then you can enter the house." “You have the key." “Therefore, you can enter the house."
> Let p: “You have the key" and q: “You can enter the house."
> $$\frac {p \rightarrow q\atop p}{\therefore q }$$
##### Modus Tollens
$$\frac {(p \rightarrow q) \atop \lnot q}{\therefore \lnot p}$$

> "If 25 is divisible by 5, then 252 is divisible by 25.
> $25^2$ is not divisible by 25."
> Therefore, 25 is not divisible by 5."
> Let p: “25 is divisible by 5" and
> q: “$25^2$ is divisible by 25. "

##### Hypothetical Syllogism
$$\frac{(p \rightarrow q) \atop (q \rightarrow r)}{\therefore p \rightarrow r}$$

##### Disjunctive Syllogism
$$\frac{(p \lor q) \atop \lnot p}{\therefore q}$$


##### Resolution
$$\frac{(p \lor q) \atop (\lnot p \lor r)}{\therefore q \lor r}$$

| Name                   | Rule of inference | Tautology                                                                   |
| ---------------------- | ----------------- | --------------------------------------------------------------------------- |
| Additive               |                   | $p \rightarrow (p \lor q)$                                                  |
| Simplification         |                   | $(p \land q) \rightarrow p$                                                 |
| Conjection             |                   | $((p) \land (q) \rightarrow (p \land q))$                                   |
| Modus ponens           |                   | $((p \rightarrow q) \land \lnot q) \rightarrow \lnot p$                     |
| Modus tollens          |                   | $((p \rightarrow q) \land \lnot q \rightarrow \lnot p$                      |
| Hypothetical syllogism |                   | $((p \rightarrow q) \land (q \rightarrow r)) \rightarrow (p \rightarrow r)$ |
| Disjunctive syllogism  |                   | $((p \lor q) \land \lnot p) \rightarrow q$                                  |
| Resolution             |                   | $((p \lor q) \land (\lnot p \lor r)) \rightarrow (q \lor r)$                |

