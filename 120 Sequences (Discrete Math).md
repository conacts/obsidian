# Functions and Sequences

## Functions
An equation that takes an input and provides an output

##### One-to-one / Injective
AKA: Injective

A function is one-to-one if...
$$\text{for all x,y } \in A \text{ if } f(x)=f(y), \text{then } x=y$$
In other words, by taking contrapositive of the implication in the function, function f is one-to-one
$$\text{if } x \ne y, f(x)\ne f(y)$$
![[Pasted image 20220301190205.png]]

> _Let A_ = {_P_1, _P_2, _P_3} _and B_ = {_File1, File2, File3, File4_}. _Let f_ : _A_ → _B be a function defined as f_ = { (_P_1,_File_ 2), (_P_2,_File_ 3), (_P_3,_File_ 1)}.
> Is function f one-to-one correspondence.
>
> The function is one-to-one correspondence because for each value of the domain, fnuction f maps to different values in codomain

##### Onto / Surjective
The functions $f$ is onto (or surjection) B if
$$\text{for every }y \in B \text{ there is an } x \in A \text{ such that } f(x)=y$$
Symbolically,
$$\forall y \in B\exists x \in A,f(x)=y$$
![[Pasted image 20220301190649.png | 500]]


Which function is an onto function?
> _Let_ _A_ = {1, 2, 3, 4, 5, 6} _and_ _B_ = {7, 8, 9, 10}
> _f_ = { _(1,7), (2,7), (3,8), (4,9), (5,9), (6,10)_ }
> _g_ ={ _(1,7), (2,7), (3,7), (4,9), (5,9), (6,10)_ }
> 
> ANS: $f$ is an onto function but $g$ is not because 8 is not mapped by any element from domain A.

##### Bijective
Function f is a bijection (or bijective) when it is both one-to-one (injecitve) and onto (surjective) function

> _Let A_ = {1, 2, 3} _and_ _B_ = {_chocolate, icecream, cake_}. _Let_ f:A→B _where f =_ { _(1,_ _cake)_, _(2, chocolate)_, _(3, ice cream)_,} _determine whether function f is a bijective function._
> 
> ANS: We can rewrite the function as following:
> f(1)=cake
> f(2)=chocolate
> f(3)= ice cream

##### Onto 
For every element in the domain, there is an element in the codomain that it maps to
![[Pasted image 20220301193446.png]]

## Sequences
A sequence is an enumerated collection of objects in a particular order that follows some rule or formula. 
Denoted typically as lowercase letters of the form $(a_1, a_2, a_3, ..., a_n)$

### Kinds of formulas
1. Closed formula (function)
2. Recursive formula

##### Closed Formula
A sequence is a formula where each term $a_k$ is defined based on its position in the list

Ex. $a_n = n^2$ 

##### Recursive Formula
A sequence $a_n$ is a formula where each term $a_k$ is defined based on one or more previous sequences.
For recurrence formula, we need to define first one or two terms and then recurrence relation will be based on those previous term(terms).

Ex. Fibonacci Numbers

### Summation and Product Notations
A summation sequence is the addition of a sequence and a product sequence of numbers is the multiplication of a sequence.

**Summation Notation**
$$\sum ^b_{k=n}x_n + n_{n+1} + ... + x_b$$
![[Pasted image 20220302032228.png]]
## HW #7
> Find the recursive formula for the given series (1, 2, 6, 24, 120, 710). Lets consider the index value starts at 1
> $$\text{base case: }a_1 = 1 \quad a_n = a_{n-1} \cdot n$$