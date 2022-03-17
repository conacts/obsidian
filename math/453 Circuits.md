# Circuits
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