## History
##### Digital Hardware
Definition: Products created to build a computer.

##### Logic Circuits
Definition: A circuit used to perform logical operations on input signals

Computer Hardware History:
- Until the 1960s, logic circuits were comprised of bulky compontents like transistors and resistors until the invention of the integrated circuit.
- The invention of the integrated circuit made it possible to compress multiple transistors onto one device. 
- Integrated Circuits (IC) are manufactured on a silicon wafer, which is cut into individual chips.
- ![[Pasted image 20220127130009.png]]
- Advancements in integrated circuits led to the creation of the microprocessor, leading to the next creation of affordable home computers
- About 30 years ago, Gordon Moore (chairman of Intel Corp) noticed 2x transistors were present on chips every 2 years, leading to the coining of the phenomenon Moore's Law. 
##### Moore's Law
Defintion: The phenomenon that the number of transistors on a chip will double every 2 years
![[Pasted image 20220127130330.png]]
Moore's Law estimaton of transistors in chips 

## Gates
![[Pasted image 20220326150807.png]]


##### OR Gate
Denoted by $A + B$ 
![[Pasted image 20220326150843.png | 300]]

| A   | B   | Y   |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 1   |



##### AND Gate
Denoted by $A \cdot B$ or $A.B$ 

![[Pasted image 20220326150928.png | 300]]

| A   | B   | Y   |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 1   |


##### NOT Gate
Denoted by $\overline{A}$ 
![[Pasted image 20220326151858.png | 300]]

| A   | Y   |
| --- | --- |
| 0   | 1   |
| 1   | 0    |


##### NOR Gate
Denoted by $\overline{A+B} = Y$ 
![[Pasted image 20220326151422.png | 300]]

**Gate from scratch** 
![[Pasted image 20220326151508.png]]


| A   | B   | Y   |
| --- | --- | --- |
| 0   | 0   | 1   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 0   |


##### NAND Gate
Denoted by $\overline{A \cdot B} = Y$
![[Pasted image 20220326151638.png | 300]]

**Gate from scratch** 
![[Pasted image 20220326151657.png]]

| A   | B   | Y   |
| --- | --- | --- |
| 0   | 0   | 1   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 0   |


##### XOR Gate
Denoted by $A \oplus B = Y$ 
![[Pasted image 20220326151942.png | 300]]

**Gate from scratch** 
![[Pasted image 20220326152017.png]]

| A   | B   | Y   |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 0   | 


##### XNOR Gate
Denoted by $\overline{A \oplus B} = Y$ 
![[Pasted image 20220326152206.png | 300]]