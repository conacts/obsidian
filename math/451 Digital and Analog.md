## Number Representation

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


----
## Lecture 3
### Unsigned arithmetic example
#### Sign bit schemas
1. Sign and magnitude
	1. Sign bit is considered separately from magnitude bit
	2. Negative N has same bits for magnitude as N and inverted sign
	3. Range: -(2N-1-1) to (2N-1 -1) two zeros
1st Complement and 2nd complement

<center><img src="file:///Users/connorsheehan/icloud/obsidianNotebooks/math/Pasted image 20220127091704.png" width="400" height="auto"></center>
- 1st complement uses -0 and +0 while 2nd complement only has +0, enabling it to access -8
