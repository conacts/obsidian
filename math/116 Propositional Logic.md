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
A proposition that is true for all possible combinations of the question

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

| Conditional Ex    | Ans                           |
| ----------------- | ----------------------------- |
| $p \rightarrow q$ | $\lnot p \lor q$              |
| $p \rightarrow q$ | $\lnot q \rightarrow \lnot p$ |
| $p \lor q$          | $\lnot p \rightarrow q$         |
|                   |                               |

##### Biconditional Logical Equivalence
![[Pasted image 20220201053427.png]]


## Quantifiers
Quantifiers are words that can turn any statement into a propositional statement
- All, every, no, some,...

### Universal Quantifiers 
( $\forall$ ) = For all, for every 

### Existential Quantifiers
( $\exists$ ) = exists / for some

### Sufficient and Necassry Conditions
##### Sufficient
$\forall x P(x)$ is a sufficent condition for $Q(x)$ 
$$\forall x (P(x)\rightarrow Q(x))$$


##### Necessary
$\forall x P(x)$ is a necessary condition for $Q(x)$ 
$$\forall x \lnot (P(x)\rightarrow \lnot Q(x))$$
$$(\text{or equiv. }\forall x (Q(x)\rightarrow P(x))$$

##### Only If
$\forall x P(x)$ only if condition for $Q(x)$ 
$$\forall x (Q(x)\rightarrow P(x))$$
$$(\text{or equiv. }\forall x (P(x)\rightarrow Q(x))$$