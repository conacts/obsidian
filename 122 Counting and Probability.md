## 7.1 Basic Counting Rules 

##### Product Rule
A way of representing large sets of numbers through variable indexing. 
$$L_1L_2L_3D_1D_2D_3 = 2 \cdot 2 \cdot2 \cdot 3 \cdot 3 \cdot 3 = 2^3 \cdot 3^3 = 216$$

> How many possible passwords can we create if the first entry is selected from {a,e,i} and the second entry is from {2,8} and the thirde entry is from {u,v}?
> 1. Use the product rule to solve number of possible combinations
> 	1. $$3 \cdot 2 \cdot 2 = 12$$
> ----
> Suppose the following menu: 
> **Appetizers:** Fried Wontons, Garlic Cheese Toast, Pineapple Salsa
> **Main Dishes:** Lasagna, Steak, Chicken Teriyaki
> **Beverages:** Tea, Coffee, Juice, Soda
> How many possible meals can a resturant build?
> $$A \cdot M \cdot B = 3 \cdot 3 \cdot 4 = 36$$
> ---
> How many strings of length three can be formed using the letters ABCDEF with repetitions?
> $$6 \cdot 6 \cdot 6 = 6^3 = 216$$
> ---
> How many strings of length three can be formed using the letters ABCDEF without repetitions?
> $$6! = 6 \cdot 5 \cdot 4 = 120$$
> ---
> How many strings do not begin with the letter E using the letters ABCDEF without repetitions?
> $$\text{Total strings - strings starting w/ E} = (6!) - (1 \cdot 5 \cdot 4) = 100$$
> ----
> How many [[120 Sequences (Discrete Math)#One-to-one Injective|one-to-one]] functions are there from a set with four elements to a set with nine elements?
> $$\frac{\text{num of possible elements}}{\text{to divide to get 4 elements}} = \frac{9!}{5!} = 9 \cdot 8 \cdot 7 \cdot 6 = 3024$$

##### Sum Rule
The sum rule is the size of union of sets where sets are  [[119 Sets#Disjoint Sets|disjoint sets]].
$$|T| = |t_1 \cup t_2 \cup ... \cup t_x| = |t_1 | + |t_2| + ... + |t_x|$$

> Suppose you went to a restaurant for lunch. There are 8 choices for burger, 5 choices for rice and 7 choices for pizza. How many options do you have?
> $$8 + 5 + 7 = 20$$
> ---
> Suppose there are seven books of computer science (CS), five books of arts, and eleven books of business. How many ways can we select two books from different subjects?
> 
> **ANS:** (CS Books x Arts Books) + (CS Books x Business Books) + (Arts Books x Business Books) 
> $$(7 \cdot 5) + (7 \cdot 11) + (5 \cdot 11) = 167$$
> ---
> Suppose we roll a perfect six-sided dice five times and record the result as an ordered list of length five. How many possible outcomes contain exactly one 3?
>
> **ANS:** Because it is possible to roll 3 on each interval (1st, 2nd, 3rd, 4th, 5th) of the 5 throw of dice, your answer would be $5 \cdot 5 \cdot 5 \cdot 5 \cdot 5 = 5^5$ 

##### Inclusion Exclusion Rule
If a task T can be done either by $T_1$ or by task $T_2$, where $T_1$ and $T_2$ are not [[119 Sets#Disjoint Sets|disjoint sets]], then task $T$ can be done in $|T_1| + |T_2| - T_1 \cap T_2|$ ways.

> **Q:** How many three-digit numbers use distinct digits from {1, ... , 7}?
> **ANS:** Knowing we have 3 distinct numbers, we get $7! \div 4! = 7 \cdot 6 \cdot 5 = 210$ 
> 
> **Q:** How many of those are odd?
> **ANS:** Set of odd numbers = {1, 3, 5, 7}.
> We also know that the numbers must be distinct, and since 7 is odd, we must start our count at 6 and descend to 5 giving us $4 \cdot 6 \cdot 5 = 120$ 
> 
> **Q:** How many of those are even?
> **ANS:** Using [[122 Counting and Probability#Inclusion Exclusion Rule|Inclusion Exclusion Rule]], we can just subtract our sets from one another to get $210 - 120 = 90$ 
> ----
> How many numbers from the set of integers between 1 and 100, inclusive, are divisible by 3 or 5 or 7?
> **ANS:** You have 3 sets of 
> 1. A = Set / 3 = $\lfloor \frac{100}{3} \rfloor = 33$
> 2. B = Set / 5 = $\lfloor \frac{100}{5} \rfloor = 20$ 
> 3. C = Set / 7 = $\lfloor \frac{100}{7} \rfloor = 14$  
> Now you must find the total number of possible combinations while subtracting the overlapping elements so you have a **distinct** set
> $$|A \cup B \cup C| = |A| + |B| + |C| - | A \cap B | - |A \cap C |  - | B \cap C | + | A \cap B \cap C| $$
> $$|A \cup B \cup C| = 33 + 20 + 14 - 6 - 4 - 2 + 0 = 55$$
> 
> 

### 7.2 Permutations and Combinations
Two ways of finding different ways to arrange a number of distinct elements

#### Permutations
An arrangement of a set of (distinct) elements is an ordering of the elements, where order matters.

##### Permutations Theorem
If a set has $n$ numbers, then the total number of permutations of that set is $n!$, denoted by $P(n)$
$$P(n) = n!$$
> Suppose there is a set with three elements {a,b,c}. What is the possible permutations?
> **ANS:** $3! = 6$ 

##### Permutation Arrangements / r-permutations
Finding a permutation of length $r$ such that $1 \le r \le n$, denoted by $P(n,r)$

##### Permutation Arrangements Theorem
Suppose $n,r \in \mathbb{Z}^+$. The number of r-permutations of a set with n distinct elements
$$P(n,r) = n \cdot (n - 1) \cdot \cdot \cdot \cdot  (n-r+1) = \frac{n!}{(n-r)!} \quad r \le n$$
###### Proof :: Permutation Arrangements Theorem:
> Proof. When n and r are integers $1 \le r \le n$, we get 
> $$\frac{n!}{(n-0)!} = \frac{n!}{n!} = 1 \quad \rightarrow \quad P(n,r) = \frac{n!}{(n-r)!}$$

###### Examples :: Permutation Arrangements:
> In how many ways can we select a first-prize winner, a second-prize winner, a third-prize winner, and a fourth-prize winner from a group of 50 different people?
> $$P(50, 4) = \frac{50}{(50-4)!} = \frac{50!}{46!} = 50 \cdot 49 \cdot 48 \cdot 47 = 5527200$$
> ----
> How many three-digit numbers are there that do not contain repeated digits and start with a non-zero digit?
> 
> **ANS:** There are two ways we can do this. We can either (1) Compute the answer directly by finding the permutation of the set with 9 as the first number instead of 10 (since we don't use number 0 -> $10-1 = 9$). We can also find the total number of permutations and subtract the permutation of set 0 to get the same answer.
> $$9 \cdot 9 \cdot 8 = (10 \cdot 9 \cdot 8) - (1 \cdot 9 \cdot 8) = 648$$
> ----
> How many strings of four letters from the English alphabet contain exactly one vowel?
> 1. Set up sets
> 	1. $$v = \{a, e, i, o, u\}\quad |v| = 5 \quad c = \{b, c, d, ..., z\} \quad |c| = 21$$
> 2. Solve permutation arrangement for $P(4,1) = 4$ positions for the vowel
> 3. Solve the permutation for number of possible combinations using 1 vowel and 3 consonants
> 	1. $$P(4,1) \cdot v \cdot c \cdot c \cdot c = 4 \cdot 5 \cdot 21 \cdot 21 \cdot 21 = 185220$$
> 

#### Circular Permutation
The total number of ways in which n distinct objects can be arranged around a fixed circle. We can either direction around the set.
![[Pasted image 20220419083123.png]]

##### Unique Circular Permutation
If clockwise and anticlockwise orders are different
$$P_c(n) = (n-1)!$$
##### Similar Circular Permutation
If clockwise and anticlockwise orders are the same
$$P_c(n) = \frac{(n-1)!}{2!}$$


> In how many ways can six people A, B, C, D, E, F seat at a round table?
> 1. Using [[122 Counting and Probability#Unique Circular Permutation|unique circular permutation]] we can find 
> $$P_c(6) = (6-1)! = 5! = 120$$
> ---
> In how many ways can we arrange 9 kids to play musical chairs with 7 chairs?
> $$\frac{P(9,7)}{7} = \frac{181440}{7} = 25920$$

> Find the number of integers between 1 and 10,000 inclusive which are divisible by at least one of 3, 5, 7, 11
> 1. We can solve this problem using the [[122 Counting and Probability#Inclusion Exclusion Rule|inclusion exclusion rule]]. 
> 	1. Set $A = \lfloor \frac{10000}{3}\rfloor = 3333$
> 	2. Set $B = \lfloor \frac{10000}{5}\rfloor = 2000$
> 	3. Set $C = \lfloor \frac{10000}{7}\rfloor = 1428$
> 	4. Set $D = \lfloor \frac{10000}{11}\rfloor = 909$
> 2. Now we use the inclusion exclusion formula
> 	1. $$|A \cup B \cup C \cup D| = |A| + |B| + |C| + |D| - | A \cap B | - | A \cap C | - | A \cap D | - |B \cap C |  - | B \cap D | - |C \cap D| + | A \cap B \cap C| + |A \cap B \cap D| + |A \cap C \cap D| + |B \cap C \cap D| - | A \cap B \cap | C \cap D|$$
> 		1. $|A \cap B| = \Big\lfloor \frac{10,000}{LCF(3, 5)} \Big\rfloor = \Big\lfloor\frac{10000}{15}\Big\rfloor = 666$ 
> 		2. $|A \cap C| = \Big\lfloor \frac{10,000}{LCF(3, 7)} \Big\rfloor = \Big\lfloor\frac{10000}{21}\Big\rfloor = 476$
> 		3. $|A \cap D| = \Big\lfloor \frac{10,000}{LCF(3, 11)} \Big\rfloor = \Big\lfloor\frac{10000}{33}\Big\rfloor = 303$
> 		4. $|B \cap C| = \Big\lfloor \frac{10,000}{LCF(5, 7)} \Big\rfloor = \Big\lfloor\frac{10000}{35}\Big\rfloor = 285$
> 		5. $|B \cap D| = \Big\lfloor \frac{10,000}{LCF(5, 11)} \Big\rfloor = \Big\lfloor\frac{10000}{55}\Big\rfloor = 181$
> 		6. $|C \cap D| = \Big\lfloor \frac{10,000}{LCF(7, 11)} \Big\rfloor = \Big\lfloor\frac{10000}{77}\Big\rfloor = 129$
> 		7.  $|A \cap B \cap C| = \Big\lfloor \frac{10,000}{LCF(3, 5, 7)} \Big\rfloor = \Big\lfloor\frac{10,000}{105}\Big\rfloor = 285$ 
> 		8. $|A \cap B \cap D| = \Big\lfloor \frac{10,000}{LCF(3, 5, 11)} \Big\rfloor = \Big\lfloor\frac{10,000}{165}\Big\rfloor = 60$
> 		9. $|A \cap C \cap D| = \Big\lfloor \frac{10,000}{LCF(3, 7, 11)} \Big\rfloor = \Big\lfloor\frac{10,000}{231}\Big\rfloor = 43$
> 		10. $|B \cap C \cap D| = \Big\lfloor \frac{10,000}{LCF(5, 7, 11)} \Big\rfloor = \Big\lfloor\frac{10,000}{385}\Big\rfloor = 25$
> 		11. $|A \cap B \cap C \cap D| = \Big\lfloor \frac{10,000}{LCF(3, 5, 7, 11)} \Big\rfloor = \Big\lfloor\frac{10,000}{1155}\Big\rfloor = 8$  
> 	2. $$|A \cup B \cup C| = 3333 + 2000 + 1428 + 909 - 666 - 476 - 303 - 285 - 181 - 129 + 285 + 60 + 43 + 25 - 8 = 6035$$
> 	3. ANS: 6035


> A Professor needs to select 5 puzzles for the class quiz from a question bank containing 20 questions. How many ways are there?
> $$\text{ANS: } \frac{20!}{(20-15)!} = 20 \cdot 19 \cdot 18 \cdot 17 \cdot 16 \cdot 15 = 27,907,200$$


> A group of friends goes to a movie theatre to watch some movies. They found that there are 8 movies which they found interesting but they have money to watch only 3 of them. If they cannot watch "Fast & the Furious Part-2" unless they watch the Part-1, then, in how many ways can they watch exactly 3 movies?
> $$\text{ANS: } \frac{(8-1) \cdot 7!}{(7-5)!} = 7 \cdot 7 \cdot 6 = 294$$