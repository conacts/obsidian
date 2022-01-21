TARGET DECK: Discrete Math
# Propositional Logic
A sentence that is either true or false but not both is called a proposition. A proposition is typically expressed as a declarative sentence.

Example of proposition:
> True statement :: "The earth is round"
> False statement :: "4 is a prime number"

Propositional variables: "p, q and r" are the propositional variables since "x, y and z" are typically used for real numbers.

Truth value: The outcome of the statement where the value is either true or false.

Proposition Table:
| Connectives                       | Notation              | English                               |
| --------------------------------- | --------------------- | ------------------------------------- |
| Negation ($\lnot$)                | $\lnot$p              | "not p" / "it is not the case that p" |
| Disjunction ($\lor$)              | p $\lor$ q            | "disjunction of p and q" / "p or q"   |
| Conjunction ($\land$)             | p $\land$ q           | "conjunction of p and q" / "p and q"  |
| Exclusive Or ($\oplus$)           | p $\oplus$ q          | "either p or q but not both"          |
| Conditional ($\rightarrow$)       | p $\rightarrow$ q     | "if p then q"                         |
| Biconditional ($\leftrightarrow$) | p $\leftrightarrow$ q | "p if and only if q"                  |

Disjunction (OR) Table:
| p   | q   | p $\lor$ q |
| --- | --- | ---------- |
| T   | T   | T          |
| T   | F   | T          |
| F   | T   | T          |
| F   | F   | F           |

Prescedence in propositional logic:
| Operators                           | prescedence |
| ----------------------------------- | ----------- |
| $\lnot$                             | 1           |
| $\lor \quad \land$                  | 2           |
| $\rightarrow \quad \leftrightarrow$ | 3           |

##### 2.1 Flashcards:

What is the definition of proposition? #flashcard 
A statement that is either true or false but not both

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


Let r be “x=2+y" where x is a real number and y is any odd number. What is ¬r?
a) $x \ne 2 + y$
b) it is not the case that $x=2+y$
c) neither
d) both #flashcard 
d) both

Let s be “There are infinite prime numbers." What is ¬s?
a) There are finite prime numbers
b) It is not the case that there are infinite prime numbers
c) neither
d) both #flashcard 
<!--ID: 1642538012348-->



##### 2.3 Flashcards:
The expression (x+5)≥x≥0(x+5)≥x≥0 can be written as conjunction #flashcard 
a) x≤(x+5)∧x≥0
b) (x+5)≥x∧x≥0
c) none
d) x≥(x+5)∧x≥0
<!--ID: 1642538012350-->




What is the truth value of the expression “9 is a prime or not” #flashcard 
True
<!--ID: 1642538012352-->




Find a proposition vv with the following truth table:
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




##### 2.4 Flashcards:
Let t : x is an odd integer and ss: x+1 is even. Translate the following sentences:
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
True
<!--ID: 1642538012360-->



Determine the truth value of the statement:
"If 3 is a prime then 3n+23n+2 is prime." Suppose n=11 #flashcard 
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
