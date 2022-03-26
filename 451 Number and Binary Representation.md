## Digital and Analog

**Radix:** A number system that represents a range starting at 0


#### Analog System: A device that utilizes the decimal system to compute. Used in older technology like clocks.
**Decimal System:** A number system ranging with numbers from 0-9 (radix 10)
![[Pasted image 20220112103932.png | 400]]


#### Digital Computer: A device utilizing the binary system to compute, computing through 0's and 1's. This is the type all computers use today due to speed and integrity it provides.
**Binary System:** A number system ranging with numbers from 0-1 (radix 2)
**Decimal to Binary:** 
11011010 -> (128)(64)(32)(16)(8)(2)(1) -> 218

**Switches:** A compontent that can turn on and off the power supply recieved by the computer, making the binary system very lucrative (0V - 5V)



##### Difference Between Analog Computers and Digital Computers
| Analog Computer        | Digital Computer       |
| ---------------------- | ---------------------- |
| Uses continuous values | Discrete values (0, 1) |
| Slower                 | Faster                 |
| Can store less data    | More data              |
| Less reliable          | More reliable          |
| Less accurate          | More accurate          | 

## Number Representation

##### Bases:
| Name        | Radix | Digits                                         |
| ----------- | ----- | ---------------------------------------------- |
| Binary      | 2     | 0, 1                                           |
| Octal       | 8     | 0, 1, 2, 3, 4, 5, 6, 7                         |
| Decimal     | 10    | 0, 1, 2, 3, 4, 5, 6, 7, 8, 9                   |
| Hexadecimal | 16    | 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F |

##### Convert decimal to binary:
2 ways to tackle this problem, counting down and counting up. Both use a similar concept to tackle $2^n$, but one division and other addition.
1. Counting Down: $857_{10}$ to binary
```
857/2 = 428 ~ Remainder 1
428/2 = 214 ~ Remainder 0
214/2 = 107 ~ Remainder 0
107/2 = 53  ~ Remainder 1
53/2  = 26  ~ Remainder 1
26/2  = 13  ~ Remainder 0
13/2  = 6   ~ Remainder 1
6/2   = 3   ~ Remainder 0
3/2   = 1   ~ Remainder 1
2/1   = 0   ~ Remainder 1

Answer: 1101011001
(counting up)
```
2. Counting Up: $857_{10}$ to binary
```
1 x 2 x 4 x 8 x 16 x 32 x 64 x 128 x 256 x 512 
1 x 0 x 0 x 1 x 1  x  0 x  1 x   0 x   1 x   1
Answer: 1101011001
```

##### Convert decimal to base 2:
Converting usually for numbers with decimals through multiplication and whole numbers through division.
1. Convert $46.6875_{10}$ to $N_2$
```
1st half: 46
46 / 2 = 23 ~ REM: 0
23 / 2 = 13 ~ REM: 1
11 / 2 = 5  ~ REM: 1
5  / 2 = 2  ~ REM: 1
2  / 2 = 1  ~ REM: 0
1  / 2 = 0  ~ REM: 1
ANS: 101110

2nd half: .6875
0.6875 x 2 = 1.375 ~ INT: 1
0.375  x 2 = .750  ~ INT: 0
0.75   x 2 = 1.5   ~ INT: 1
0.5    x 2 = 1.0   ~ INT: 1
ANS: 1011

BASE 2 ANS: 101110.1011
```

**Octal vs. Hexadecimal:** Octal only uses 3 bits with a radix of (0-7) while hex uses 4 digits and has (0-F) possible combinations.


#### Sign bit schemas
1. Sign and magnitude
	1. Sign bit is considered separately from magnitude bit
	2. Negative N has same bits for magnitude as N and inverted sign
	3. Range: -(2N-1-1) to (2N-1 -1) two zeros
1's Complement and 2's complement

![[Pasted image 20220326001453.png | 400]]

##### 1's Complement
Most common binary representation of a number with a sign

**From Binary to 1's Complement**
1. Positive Number
	1. Do nothing
2. Negative Number
	1. Invert all bits

| Decimal | Binary    | 1's Complement       | 2's Complement |
| ------- | --------- | -------------------- | -------------- |
| 25      | 0001 1001 | **0**001 1001        | 0001 1001      |
| -25     | NA        | **1**110 0110        | **1**110 0111  |
| 7       | 0111      | **0**111             | 0111           |
| -7      | NA        | **1**000             | 1001           |
| 0       | 0000      | **0**000 or **1**111 | 0000               |

![[Pasted image 20220326003533.png | 500]]

**Adding/Subtracting 1's Complement**

| Decimal | Binary      | Work                               | Answer |
| ------- | ----------- | ---------------------------------- | ------ |
| 1 + 2   | 0001 + 0010 | $\space$ 0001 <br>+0010 <br> ----- <br> 0111 | 0111   |
| -1 + 2  | 1110 + 0010 | $\space$ 1110 <br> +0010 <br> ------- <br> Carry bit <- **1**0000 <br> -------------- <br> $\space$ 0000 <br> +000**1** -> Carry bit <br> -------------- <br> 0001                                 |        |


##### 2's Complement
Another way of representing negative numbers in binary

**From Binary to 2's Complement**
1. Positive Number
	1. Do nothing
2. Negative Number
	1. Invert all bits
	2. Add 1 to least significant bit

| Decimal | Binary    | 1's Complement       | 2's Complement |
| ------- | --------- | -------------------- | -------------- |
| 25      | 0001 1001 | **0**001 1001        | 0001 1001      |
| -25     | NA        | **1**110 0110        | **1**110 0111  |
| 7       | 0111      | **0**111             | 0111           |
| -7      | NA        | **1**000             | 1001           |
| 0       | 0000      | **0**000 or **1**111 | 0000               |


**Adding/Subtracting 2's Complement**

| Decimal    | Binary             | Work                                                                          | Answer  |
| ---------- | ------------------ | ----------------------------------------------------------------------------- | ------- |
| 15 + 18    | 001111 + 010010    | $\space$ 001111 <br> +010010 <br> -------- <br> 0100001                       | 0100001 = 33 |
| 15 + (-18) | 001111 + -(010010) | 1) Invert 18 <br> $\space$ 001111 <br> +101110 <br> -------- <br> 111101 <br> | 111101 = -3        |

![[Pasted image 20220326012358.png]]
**2's Complement Overflow**
You know you have overflow when
1. If the sum of two positive number yield a negative result, the sum has overflowed
2. If the sum of two negative numbers yields a positive result, the sum has overflowed
3. If the last two carry bits are different numbers, the sum has overflowed
4. Otherwise, the sum has not overflowed

##### Number Representation Quiz

Is there overflow adding 1001 and 1110 in 2's complement system? (Y/N) #flashcard 
Yes
1001 +1110 = (-7) + (-2) = (-9) > 7 = overflow

Is there overflow adding 1001 and 0010 in 2's complement system? #flashcard 
No
1001 + 0010 = (-7) + (2) = -5 < 7 = no overflow

How can you determine an overflow? (2) #flashcard 
1. If the number exceeds the number achievable from given bits
2. If $C_n$ and $C_{n-1}$ are different (two most significant bits)

How do you get a complement of a number under 2's complement system? #flashcard 

How do you get a complement of a number under 2's complement system? #flashcard 
1. If the number is negative, flip all the bits
2. Add 1 to the least significant bit

Why do we use 2's complement system over other systems? #flashcard 
It is an easy way to calculate while only using one zero, while 1's complement uses two zeros


##### Homework Number Representation Examples
![[HW2_SOLUTIONS_SPRING22.pdf]]

### Minterm and Maxterm

#### Cannonical Form
##### Sum of Minterms (SoP)
**Sum of Products**
Adding (OR Gating) all the conditions where the function **IS 1** 

##### Product of Maxterms (PoS)
**Product of Sums**
Anding all the conditions where the function **IS 1**

#### Minterm
Minterms are AND terms with every variable present to either in normal or complement form
- This can be calculated using $2^n$ where $n$ = inputs

Ex. $2^2=4$ minterms 

| X   | Y   | AND  |
| --- | --- | ---- |
| X   | Y   | XY   |
| X   | Y'  | XY'  |
| X'  | Y   | X'Y  |
| X'  | Y'  | X'Y' |

![[Pasted image 20220326172910.png | 300]]
**Example:**
$$\sum$$

![[Pasted image 20220326172512.png]]

#### Maxterm
Maxterms are OR terms with every variable in normal or complment form

| X   | Y   | AND     |
| --- | --- | ------- |
| X   | Y   | X' + Y' |
| X   | Y'  | X' + Y  |
| X'  | Y   | X + Y'  |
| X'  | Y'  | X + Y   |

In subscript form
![[Pasted image 20220326172857.png | 300]]

![[Pasted image 20220326172517.png]]

##### HW3
![[HW3_SOLUTIONS_SPRING22-1.pdf]]

### Optimization
There are 3 main ways we optimize and create a circuit
#### Algebraic Reduction
The use of boolean algebra rules to systematically reduce your equation to a much simpler equation
(-) Tedious and complicated
(-) Hard to predict timing hazards


#### Venn Diagram
(-) Only practical for simple expressions

![[Pasted image 20220326180954.png]]

#### K-Maps
(+) Good at predicting timing hazards
(+) Simple to create
(-) Only for small problems