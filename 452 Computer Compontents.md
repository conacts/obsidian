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


## Circuits
#### Sequential Circuits
A circuit whose output depends on not only current inputs but past inputs as well

- Sequential circuits **must** be able to "remember" (store) it's history of inputs

##### State of the system
The information of the previous inputs of the system

- A circuti that uses **n** binary state variables to store information, its past history can take up to $2^n$ different states

##### Finite State Machines
- A computer type with memory

To create a reliable sequential circuit, you must use a connection directly to the power supply rather than a transistor.

![[Pasted image 20220314103747.png | 300]]

##### Inverter Loop
Simplest Memory Element. It is a very effective, simple sequential circuit since it is **connected directly to the power** 
![[Pasted image 20220314104400.png]]

**Why use a connection to the power supply rather than a transistor?** 
- Transistors lose energy (due to resistance) therefore they need a refresher where as connection straight to the power supply works like

#### Latches and Flip-Flops
Two of the most popular varieties of storage cells

##### Latch
**Level Sensitive** storage element

Types: 
1. S-R latch
2. Gated S-R Latch
3. D Latch

**Inverter Loop to SR Latch**
![[Pasted image 20220314104912.png]]
![[Pasted image 20220314105008.png]]
The truth table we get from the SR Latch

| S   | R   | Q      | QN ( $\overline{Q}$ ) |
| --- | --- | ------ | --------------------- |
| 0   | 0   | last Q | last QN               |
| 0   | 1   | 0      | 1                     |
| 1   | 0   | 1      | 0                     |
| 1   | 1   | 0      | 0                      |


##### Flip-Flop
**Edge Triggered** storage element

Types:
1. D-FF
2. D-FF with enable
3. JK_FF
4. T-FF