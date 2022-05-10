TARGET DECK: CMPEN 270

## History
##### Digital Hardware
Definition: Products created to build a computer.

##### Logic Circuits
Definition: A circuit used to perform logical operations on input signals

Computer Hardware History:
- Until the 1960s, logic circuits were comprised of bulky components like transistors and resistors until the invention of the integrated circuit.
- The invention of the integrated circuit made it possible to compress multiple transistors onto one device. 
- Integrated Circuits (IC) are manufactured on a silicon wafer, which is cut into individual chips.

![[Pasted image 20220127130009.png]]
- Advancements in integrated circuits led to the creation of the microprocessor, leading to the next creation of affordable home computers
- About 30 years ago, Gordon Moore (chairman of Intel Corp) noticed 2x transistors were present on chips every 2 years, leading to the coining of the phenomenon Moore's Law. 
##### Moore's Law
The phenomenon that the number of transistors on a chip will double every 2 years
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



### Basic Hardware Implementations for Math

#### Hardware Multiplier
Implements the [[271 Number and Binary Representation#Binary Multiplication|binary multiplication]] operation

![[CC491C3B-A1FA-4F68-A332-F6CE0285ADD7_1_201_a.jpeg | 600]]


#### Hardware Addition
Binary addition can come two forms, in either [[271 Number and Binary Representation#Adding Subtracting 1's Complement|1s complement]] or [[271 Number and Binary Representation#Adding Subtracting 2's Complement|2s complement]]. There are a few hardware components for adding binary numbers.

##### Half Adder
A circuit that **adds two 1-bit numbers** where the output is 2 bits, the sum and the carry.
- Sum - The sum of the bits in the 1s place
- Carry - If the two bits added exceed the first bit, you carry over the bit in the 2s place
![[Pasted image 20220330120530.png]]
![[Pasted image 20220330120637.png |400]]


##### Full Adder
An addition circuit where **3 inputs** produce two outputs of a **sum** and **carry**.

A full adder can either be represented as two half adders
![[Pasted image 20220330121651.png |400]]
or in circuit form
![[Pasted image 20220330121641.png|400]]
**Truth Table for Full Adder**

| $c_i$ | $x_i$ | $y_i$ | $c_{i+1}$ | $s_i$ |
| ----- | ----- | ----- | --------- | ----- |
| 0     | 0     | 0     | 0         | 0     |
| 0     | 0     | 1     | 0         | 1     |
| 0     | 1     | 0     | 0         | 1     |
| 0     | 1     | 1     | 1         | 0     |
| 1     | 0     | 0     | 0         | 1     |
| 1     | 0     | 1     | 1         | 0     |
| 1     | 1     | 0     | 1         | 0     |
| 1     | 1     | 1     | 1         | 1      |

##### Ripple Carry Adder Circuit
A multitude of Full Adders in sequence
![[Pasted image 20220330122007.png ]]


### Encoders and Decoders
#### Encoder
Transforming an input into one that is more convienient

##### Multiplexer
A type of encoder that typically encodes the input in the form of either 1-hot encoding or 0-cold encoding

##### 1-Hot Encoding
A form of encoding where the chosen output is a 1 and the rest are 0s
![[Pasted image 20220330113344.png | 400]]


##### 0-Cold Encoding
A form of encoding where the chose output is a 0 and the rest are 1s
![[Pasted image 20220330113544.png|400]]

##### Decoder
Transforming the output of the encoder to its original state through a reverse operation

**Common Decoder Uses**
- SRAMs: Binary decoder (n inputs to $2^n$ outputs)
- Look-up-tables: Binary decoder (n inputs to $2^n$ outputs)
- Control block decode: 1-hot (single high logic 1, rest 0's)
- Microprocessor Instructions: Instruction number to FU control codes

**Different Representations of Decoders**
![[Pasted image 20220330114136.png |500]]

**Larger Decoder**
![[D280F227-EB89-4D6D-9FD8-7B09EA417F03_1_201_a.jpeg |300]]

##### Demultiplexer
A decoder used to invert the operation of a multiplexer

### CMOS Logic Gates
Complementary metal-oxide semiconductor comprised of an [[272 Computer Components#NMOS|NMOS]] and [[272 Computer Components#NMOS|PMOS]] transistors.

![[Pasted image 20220330131130.png |300]]
#### NMOS
A "N-type" transistor which turns on if gate is 1 and off if gate is 0
- 1 is ON
- 0 is OFF

![[Pasted image 20220330130851.png |150]]
NMOS Gate


#### PMOS
A "P-type" transistor

![[Pasted image 20220330130834.png |150]]
PMOS Gate

#### Circuits translated to CMOS
##### Not Gate in CMOS
![[Pasted image 20220330131341.png | 150]]

##### NAND Gate in CMOS
![[Pasted image 20220330131908.png|150]]

###### 5-input NAND Gate in CMOS
![[Pasted image 20220330134357.png]]


##### NOR Gate in CMOS
![[Pasted image 20220330132135.png |150]]

##### AND Gate in CMOS
$$\text{AND Gate = NAND} \rightarrow \text{NOT}$$
![[Pasted image 20220330132843.png |200]]


##### OR Gate in CMOS
$$\text{OR Gate = NOR} \rightarrow \text{NOT}$$

###### 3-input OR Gate in CMOS
![[Pasted image 20220330134540.png]]



##### Custom CMOS
You can create custom CMOS circuits by grouping together known circuits to make your boolean equation true

> CMOS circuit for $F = \overline{X}\overline{Y} + Z$ 
> 1. Simplify Boolean expression
> $$F = \overline{X} \space \overline{Y} + Z = \overline{X + Y} + Z$$
> 2. Write it out as a gate
> $$\text{NOR(NOR(X,Y), Z)} \rightarrow \text{NOT}$$
> ![[Pasted image 20220330135331.png |300]]
> ----
> CMOS Circuit for $F = \overline{A} \space \overline{B} + \overline{A} B \overline{C} + ABC$ 
> 1. Simplify equation
> 	1. Create truth table
> 		1. ![[Pasted image 20220330135805.png|100]]
> 	2. Create K-map from truth table
> 		1. ![[Pasted image 20220330135830.png|200]]
> 	3. Derive SOP
> 		1. $$SOP = \overline{A} \space \overline{B} + \overline{A} \space \overline{C} + ABC$$
> 2. Turn equation into usable gates
> 	1. $$SOP = \overline{A} \space \overline{B} + \overline{A} \space \overline{C} + ABC = \overline{A + B} + \overline{A + C} + ABC$$
> 3. Rewrite in engilsh
> 	1. $$OR(NOR(A,B), NOR(A,C), AND(A,B,C)) \rightarrow NOT$$
> 4. Draw CMOS
> 	1. ![[Pasted image 20220330140258.png |500]]

## Circuits
#### Sequential Circuits
A circuit whose output depends on not only current inputs but past inputs as well

- Sequential circuits **must** be able to "remember" (store) it's history of inputs

##### State of the system
The information of the previous inputs of the system (in sequential circuits)

- A circuit that uses **n** binary state variables to store information, its past history can take up to $2^n$ different states

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

| Latch                                               | Flip-Flop                                       |
| --------------------------------------------------- | ----------------------------------------------- |
| (Asynchronous) Storage without a clock signal input | (Synchronous) Storage with a clock signal input |
| Level Sensitive                                     | Edge Sensitive                                                |

##### Latch
**Level Sensitive** storage element

Types: 
1. [[272 Computer Components#S-R Latch|S-R latch]]
2. [[272 Computer Components#Gated S-R Latch |Gated S-R Latch]]
3. [[272 Computer Components#D Latch|D Latch]]


| S-R Latch                                                            | S-R Latch | D Latch |                                                                     |
| -------------------------------------------------------------------- | --------- | ------- | 
| Latches Q and $\overline{Q}$ without regard to the status of S and R | An S-R latch with an extra layer before to increase its ability to remember previous states          |         A gated S-R latch with an inverter added to make R the inverse of S |

##### S-R Latch

Known as a **Set/Reset Latch**, this is a device is a **bistable multivibrator** with **two** stable states (set and reset). To create an S-R Latch we wire two NOR gates together.
[Helpful Resource](https://www.allaboutcircuits.com/textbook/digital/chpt-10/s-r-latch/)
![[Pasted image 20220330145544.png |300]]
$$Q* = S + RN \cdot  Q$$

**S-R Latch Truth Table**

| S   | R   | $Q$   | $\overline{Q}$ |
| --- | --- | ----- | -------------- |
| 0   | 0   | LAST Q | LAST $\overline{Q}$          |
| 0   | 1   | 0     | 1              |
| 1   | 0   | 1     | 0              |
| 1   | 1   | 0     | 0               |

**S-R Latch Symbol**
![[Pasted image 20220330151241.png |200]]


**Inverter Loop to SR Latch**
![[Pasted image 20220314104912.png]]
![[Pasted image 20220314105008.png]]

##### Gated S-R Latch
Gated S-R Latch is just **a S-R Latch with another layer before** to assist in preserving states if only certain conditions are met
[Helpful Resource](https://www.allaboutcircuits.com/textbook/digital/chpt-10/the-gated-s-r-latch/)
![[Pasted image 20220330150637.png |300]]

| E (CLK)   | S   | R   | Q           | $\overline{Q}$ |
| --- | --- | --- | ----------- | -------------- |
| 0   | 0   | 0   | LAST Q | LAST $\overline{Q}$     |
| 0   | 0   | 1   | LAST Q | LAST $\overline{Q}$     |
| 0   | 1   | 0   | LAST Q | LAST $\overline{Q}$     |
| 0   | 1   | 1   | LAST Q | LAST $\overline{Q}$     |
| 1   | 0   | 0   | LAST Q | LAST $\overline{Q}$     |
| 1   | 0   | 1   | 0           | 1              |
| 1   | 1   | 0   | 1           | 0              |
| 1   | 1   | 1   | 0           | 0              |

**Gated S-R Latch Symbol**
![[Pasted image 20220330151124.png |200]]

##### D Latch
Essentially a gated S-R latch but the input S is inverted
[Helpful Resource](https://www.allaboutcircuits.com/textbook/digital/chpt-10/d-latch/)

![[Pasted image 20220330172424.png |300]]

$$Q* = D$$
| CLK   | D   | Q           | $\overline{Q}$ |
| --- | --- | ----------- | -------------- |
| 0   | 0   | LAST Q | LAST $\overline{Q}$    |
| 0   | 1   | LAST Q | LAST $\overline{Q}$    |
| 1   | 0   | 0           | 1              |
| 1   | 1   | LAST Q           | LAST $\overline{Q}$              |

**D Latch Symbol**
![[Pasted image 20220330151040.png |200]]

##### Flip-Flop
**Edge Triggered** storage element

Types:
1. [[272 Computer Components#D Flip-Flop D-FF| D Flip-Flop (D-FF)]]
3. JK_FF
4. T-FF

##### D Flip-Flop (D-FF)
The D-type filp-flop is a modified Set-Reset flip-flop with the addition of an inverter to prevent the S and R inputs from being at the same logic level. 
**Note:** This is the same as a [[272 Computer Components#D Latch |D Latch]], just with the use of a clock signal

$$Q* = D$$
![[Pasted image 20220330160134.png]]

##### D Flip-Flop w/ Enable
A [[272 Computer Components#D Latch |D Latch]] with an enable. The enable is a component that allows a flip-flop to hold it's value for more than a single clock cycle
$$Q* = EN \cdot (D+EN(N)) \cdot Q$$

| D   | EN  | CLK        | Q      | QN      |
| --- | --- | ---------- | ------ | ------- |
| 0   | 1   | $\uparrow$ | 0      | 1       |
| 1   | 1   | $\uparrow$ | 1      | 0       |
| X   | 0   | $\uparrow$ | LAST Q | LAST QN |
| X   | X   | 0          | LAST Q | LAST QN |
| X   | X   | 1          | X      | X       |

##### JK Flip-Flop (rising edge triggered)
$$Q* = J \cdot  (QN + KN) \cdot  Q$$
![[Pasted image 20220330161006.png]]
![[Pasted image 20220330161137.png |200]]

##### T Flip Flop
![[Pasted image 20220330161155.png |300]]
$$Q* = (QN \cdot  T) + (TN \cdot  Q)$$

- When $T=1$, $Q$ becomes $\overline{Q}$
- When $T=0$, $Q$ remains $Q$


##### Rising Edge Flip Flop
![[Pasted image 20220330182310.png|500]]
##### Falling Edge Flip Flop
![[Pasted image 20220330182324.png |500]]


## State Machines
A circuit with only one output that is determined by the sequence of inputs 

##### Moore Machine
A machine where each state is associated with a single output
![[Pasted image 20220328222716.png |300]]

##### Mealy Machine
The output is a function of both current input and the current state
![[Pasted image 20220328223027.png |300]]

##### Moore vs Mealy
| Moore              | Mealy              |
| ------------------ | ------------------ |
| Less Complicated   | More Complicated   |
| More States Needed | Less States Needed |

**Ex.** 
A vending machine with 2 inputs, representing 25c and 50c coin. When the machine reaches 75c you get your drink.

**Vending Machine Model**
- 2, 1-bit inputs <50c, 25c>
	- <1,0> means 50c inserted
	- <0,1> means 25c inserted
- 2, 1-bit outputs <drink dispensed, coins returned>
- Assume <1,1> input can be ignored since only 1 coin be inserted at once


**Mealy Vending Machine Diagram**
![[Pasted image 20220328223321.png |300]]
![[Pasted image 20220328223718.png |300]]

**Moore Vending Machine Diagram**
![[Pasted image 20220328223632.png |300]]
![[Pasted image 20220328223704.png |300]]

### Counters
Binary counters are an example of synchronous sequential circuit design.
- Counters can just be represented as "degenerative" state machines

##### Counter State Machine Diagrams
- Have large number of states relative to transition
- In simple counters, only one arc from each state

##### Types of Counters
- Modulo (ring-shaped state diagram)
- Saturating (dead-end state diagram)
- Many different types of counters for a given number of bits, with not all using $2^n$ possible states

##### Simple Binary Counter
- A counter with just a clock input. 
- The output is a repeating sequence of binary numbers

##### Creating a Counter
1. Create state transition table
2. K-Map
3. Map function to D Flip-Flop
	1. D is sent to output Q on CLK, so D should be the same as output of next stage logic


> 1. Consider a counter that counts in a given sequence: $0 \rightarrow 3 \rightarrow 6 \rightarrow 1 \rightarrow 5$. Design the counter using D flip-flops.
> 	1. Draw the state transition diagram
> 	
> 	
> 	3. Write out the state transition table, and use K-maps to derive the equations of the next states
> 	4. Draw the circuit
> 	5. Design the counter using T flip-flops
> 
> 2. Design a 3-bit synchronous counter that counts the odd numbers in decreasing order. Use flip-flop of your choice
> 3. What is a saturating counter? Give an example of its state transition diagram.
> 4. Implement Q2 using a D flip-flop in verilog.  



| $Q_2 Q_1 Q_0$ | $Q_2^*Q_1^*Q_0^*$ | $T_2T_1T_0$ |
| ------------- | ----------------- | ----------- |
| 000           | 011               | 011         |
| 011           | 110               | 101         |
| 110           | 001               | 111         |
| 001           | 101               | 100         |
| 101           | 000               | 101            |

### Practice Exam Flashcards
What 2 types of transistors are used in CMOS? What kind of input (0 or 1) activates each type of transistor? #flashcard 
1. PMOS and NMOS are transistors used in CMOS
2. PMOS: Activated at input 0
3. NMOS: Activated at input 1

  
When designing the lower half portion of circuit that uses NMOS transistors of a CMOS circuit, how are those transistors aligned for a NOR gate (series or parallel)? NAND gate (series or parallel)? #flashcard 
1. NOR: NMOS in parallel (Vdd) & PMOS in series (GND)
2. NAND: PMOS in parallel (Vdd) & NMOS in series (GND)

  
How many NMOS and PMOS transistors (each) in CMOS technology are used to build? (1) 3 input NOR Gate? (2) 2 input XOR Gate? (3) 2 inverter feedback loop? #flashcard 
1. NOR: NMOS = 3, PMOS = 3
2. XOR: NMOS = 6, PMOS = 6
3. INVERTER: NMOS = 2, PMOS = 2


Why do we need sequential circuits? #flashcard 
For our circuits to have some form of memory. It allows old inputs to affect current inputs


What is the difference between flip flops and latches? #flashcard 
1. Latches **aren't** affected by the clock signal 
2. Flip flops **are** affected by the clock signal


What does it mean for a storage element to be edge-triggered? #flashcard 
This means the element is affected by the clock signal and synchronous. Based on which edge triggers it, it can be affected differently.
1. POS EDGE: activated by clock signal **transitioning from 0 to 1**
2. NEG EDGE: activated by clock signal **transitioning from 1 to 0**


What is the function of clear and preset values? #flashcard 
Preset - Sets stored value to constant 1
Clear - Sets stored value to constant 0


Which flip-flops (DFF, TFF, and/or JKFF) are dependent on the current input states? It may be helpful to write out the characteristic equation for each type. #flashcard 
TFF and JKFF are input dependent


What is the minimum number of flip-flops needed to design a counter having a sequence of 0-> 1-> 3-> 4-> 5-> 7 and repeat? #flashcard 
3 flip flops

Multiply $13_{10} \times 8_{10}$ in binary. #flashcard 
![[Pasted image 20220330164443.png |300]]

Derive the truth table for the logic circuit of a half adder
![[Pasted image 20220330164609.png |300]]

Draw the CMOS implementation of the XOR gate circuit. You may draw according to the circuit shown, in other words no need to modify the gates. #flashcard 
![[Pasted image 20220330164841.png |400]]

Using the result from part (c), implement the Half Adder using CMOS transistors #flashcard 
HALF ADDER = XOR (sum) + AND (carry)
![[Pasted image 20220330165307.png |400]]
D Latch Truth Table #flashcard 
![[Pasted image 20220330172101.png |300]]

D Latch Circuit Diagram #flashcard 
![[Pasted image 20220330172126.png |300]]


S-R Latch Circuit Diagram
![[Pasted image 20220330172226.png |300]]

S-R Latch Truth Table #flashcard 
![[Pasted image 20220330172254.png |300]]

What is the difference between combinational and sequential circuits? #flashcard 
1. Combinational - Output is only dependent on current inputs
	1. Ex. AND GATE
2. Sequntial - Output can be dependent on previous and current inputs
	1. Ex. D Flip Flop

What are synchronous and asynchronous inputs? give an example of both synchronous and asynchronous inputs an a flip flop. #flashcard 
1. Synchronous - The input of a varying value based on clock 
	1. Ex. CLK
2. Asynchronous - The input not varying base on clock
	1. Ex. Preset, Clear


In sequential circuits, two types of machines, Mealy and Moore are used. What is the difference between them? Typicall, which machine uses fewer number of states but is implemented with more complex logic?
1. Moore Machine - Easier, output only dependent on **present states**
2. Mealy Machine - More complex & less states, output depends on **present state and inputs**

What is the advantage of using floating point representation? #flashcard 
You can represent extremely large and small numbers

S-R Latch equation #flashcard 
Q* = S + RN x Q

D Latch #flashcard 
Q* = D

D Flip Flop #flashcard 
Q* = D

D Flip Flop with enable #flashcard 
Q* = EN x (D+EN(N)) x Q

J-K Flip Flop #flashcard 
Q* = J QN + KN * Q

T Flip Flop #flashcard 
Q* = (QN x T) + (TN x Q)

### Timing and Skews

Timing metrics for a D flip flop
![[Pasted image 20220411102202.png | 500]]

Two overlapping in line timing lines stand for a measurement x
![[Pasted image 20220411102435.png]]

We also must have a stable state in this x time, shown here 
![[Pasted image 20220411102711.png]]
As shown above, flip-flops actually have **3 states** instead of 3
1. 1 State
2. 0 State
3. Meta-stable State, a state between 0 and 1

##### Meta-stable State
A state in flip-flop circuits between 0 and 1 caused by "hold-times" of the flip flop not lasting for a clock cycle, leading to a change in the variable **x** during one clock cycle

![[Pasted image 20220411103218.png |300]]

If the clock period is too short, data changes will not propagate through the circuit to flip-flop inputs before the setup time intervals begin, causing a metastable state.
![[Pasted image 20220411103402.png]]


##### Clock Period $(t_p)$ 
The interval between occurences of a specific clock edge in a periodic clock

##### Longest Total Delay $(t_{pd,gate})$ 
The longest delay of combinational logic along the path from flip-flop output to flip-flop input
$$t_{pd,COMB} = \text{num of gates} \cdot (1 + 0.1 K) \quad K=\text{num of gate inputs}$$

##### Extra Time $(t_{slack})$
Extra time in the clock period in addition to the sum of the delays and setup time on a path
- Can be positive or negative 
- Must be greater than or equal to zero on all paths for correct operation

##### Timing Equations
Used for all paths from flip-flop input to flip-flop output
$$t_p = t_{slack} + (t_{cQ,FF} + t_{pd,COMB} + t_{s})$$
For $t_{slack}$ greater than or equal to zero
$$t_{p} \ge \max(t_{cQ,FF} + t_{pd,COMB} + t_{s}$$
![[Pasted image 20220411103402.png]] 

> How fast can you clock this?
> Setup time = 0.6ns, Hold time = 0.4ns, $T_{cQ}$ = (0.8ns to 1.0ns), $t_{pd,inv}$ = 1.1ns where (1 + 0.1k) where K is the number of gate inputs
> ![[Pasted image 20220411104156.png |200]]
> 1. We use the equation with  $t_{slack}$ greater than or equal to zero
> $$t_{p} \ge \max(t_{cQ,FF} + t_{pd,COMB} + t_{s})$$
> $$t_{p} \ge \max(\text{Delay of flip flop} + \text{inverter} + \text{setup time})$$
> $$t_{p} \ge \max(1.0ns + 1.1ns + 0.6ns)= 2.7ns$$
> ----
> What is the hold time?
> Setup time = 0.6ns, Hold time = 0.4ns, $T_{cQ}$ = (0.8ns to 1.0ns), $t_{pd,inv}$ = 1.1ns where (1 + 0.1k) where K is the number of gate inputs
> ![[Pasted image 20220411104156.png |200]]
> $$t{cQ} + t_{pA, inv} \ge t_h$$ $$0.8ns + 1.1ns = 1.9ns \text{ of maximum hold time}$$
> ----
> How fast can you clock this?
> ![[Pasted image 20220419093514.png]]
> 1. Find the longest path on the circuit
> 	1. NOTE: 
> 		1. $T_cQ = range(0.8, 1.0)$ 
> 	2. From $Q_0 \rightarrow Q_3$ which visits 3 AND and 1 XOR Gate using the assumption of time $(1 + 0.1 \cdot K)$ 
> 	3. $$t_{pd,comb} = \text{3 AND + 1 XOR } = 3 (1 + 0.1 \cdot 2) + 1 (1 + 0.1 \cdot 2) = 4.8ns$$
> 3. Now solve for $T_p$
> 	1. $$T_p = T_{cQ max} + t_{pd,comb} + t_{su} =  1 + 4.8 + .6 = 6.4ns$$
> 4. Now to solve for MHz, we must change thsi from period to frequency
> 	1. $$MHz = \frac{1}{T} = \frac{1}{6.4} = 156.2MHz$$
> 5. What is the time of the shortest path in the image above
> 	1. From $Q_0 \rightarrow Q_3$ which visits 1 XOR Gate using the assumption of time $(1 + 0.1 \cdot K)$ 
> 		1.  $$t_{pd,comb} = \text{ 1 XOR } =  1 (1 + 0.1 \cdot 2) = 1.2$$
> 	2. Now solve for $T_p$
> 		1. $$T_p = T_{cQ min} + t_{pd,comb} + t_{su} = .8 + 1.2  = 2.0ns > t_{hold} = 0.4ns$$

### Synchronous Timing Basics

![[Pasted image 20220419114432.png |400]]
Ideally, 
1. $t_{clk1} = t_{clk2}$
2. $T \ge t_{c-q} + t_{plogic} + t_{su}$ 
3. $t_{hold} \le t_{c-q,shortest} + t_{plogic, shortest}$
However, the clock signal can have both spatial (clock skew) and temporal (clock jiitter) variations

#### Clock Skew
Causes time $T$ constant from cycle to cycle
- [[272 Computer Components#Positive Clock Skew|(+)]] clock and data flowing in the same direction
- [[272 Computer Components#Negative Clock Skew|(-)]] clock and data flowing in opposite directions

##### Source of Clock Skew
1. Manufacturing device variations in clock drivers
2. Interconnect variations
3. Enviornmental variations (power supply and temperature)

##### Positive Clock Skew
Clock and data flowing in the same direction
![[Pasted image 20220419120236.png |500]]
$$T: \quad T + \delta \ge t_{c-q} + t_{plogic} + t_{su} \quad \text{so} \quad T \ge t_{c-q} + t_{plogic} + t_{su} - \delta$$
$$t_{hold}: \quad t_{hold} + \delta \le t_{c-q} + t_{plogic} \quad \text{so} \quad t_{hold} \le t_{c-q} + t_{plogic} - \delta$$
**Note:** $\delta > 0$ Improves performance, but makes $t_{hold}$ harder to meet. If $t_{hold}$ is not met, the circuit malfunctions independent of the clock period

##### Negative Clock Skew
Clock and data flowing in opposite directions
![[Pasted image 20220419120333.png |500]]
$$T: \quad T + \delta \ge t_{c-q} + t_{plogic} + t_{su} \quad \text{so} \quad T \ge t_{c-q} + t_{plogic} + t_{su} - \delta$$
$$t_{hold}: \quad t_{hold} + \delta \le t_{c-q} + t_{plogic} \quad \text{so} \quad t_{hold} \le t_{c-q} + t_{plogic} - \delta$$
**Note:** $\delta < 0$ degrades performance, but $t_{hold}$ is easier to meet

#### Clock Jitter
Causes time $T$ to change on a cycle-by-cycle basis

##### Source of Clock Jitter
1. Clock generation
2. Capacitive loading and coupling
3. Environmental variations (power supply and temperature)
![[Pasted image 20220419115655.png |500]]

##### Absolute Jitter
The worst variation of a clock edge with respect to the ideal clock signal
![[Pasted image 20220419121541.png |400]]
$$T: \quad T-2t_{jitter} \ge t_{c-q} + t_{plogic} + t_{su} \quad \text{so} \quad T \ge t_{c-q} + t_{plogic} + t_{su} + 2t_{jitter}$$
**Note:** Jitter directly reduces the performance of a sequential circuit

#### Clock Skew + Clock Jitter
where $\delta > 0$...
![[Pasted image 20220419121839.png |400]]
$$T \ge t_{c-q} + t_{plogic} + t_{su} - \delta + 2t_{jitter}$$
$$t_{hold} \le t_{cdlogic} + t_{cdreg} - \delta -2t_{jitter}$$
**Note:** $\delta > 0$ with jitter degrades performance and makes $t_{hold}$ even harder to meet. (The acceptable skew is reduced by jitter)

> Longest path between flip-flop to flip-flop (clock at FF3 arrives 1.5ns later than at FF0-FF2)
> $$t_{pd} = t_{c-q} + 3 \text{ AND gates} + 1 \text{ XOR gate} - \text{skew}$$
> ![[Pasted image 20220419122537.png |300]]
> $$t_{c-q}=t_{cQmax}=max(range(0.8, 1.0)) \quad t_{plogic} = 4(1 + .1 \cdot 2) = 4.8$$
> 1. Calculate $Q_0$ to $Q_2$
> 	1. $$t_p = t_{cQmax} + t_{plogic} + t_{su} = 1.0 + 3.6 + 0.6 = 5.2ns$$
> 2. Calculate $Q_0$ to $Q_3$
> 	1. $$t_p = t_{cQmax} + t_{plogic} + t_{su} - \text{skew} = 1.0 + 4.8 + 0.6 - 1.5 = 4.9ns$$
> 3. Therefore, $Q_0$ to $Q_2$ is the longest path in the circuit above

####  Duty Cycle
% of time in the states 1 or 0
![[Pasted image 20220413102842.png |300]]

Ideally your duty cycle keeps the equation true
$$\frac{V_{out}}{V_{in}} = \frac{1}{1-d}$$
where $d$ is duty cycle

Voltage too high? ---> Increase Duty Cycle
Voltage too low? ---> Decrease Duty Cycle
Voltage Critically low / high? ---> Use a preset

Do we need r in our tables or can we represent it in our circuit diagrams
- No, because we represent it in our circuit diagram in our preset