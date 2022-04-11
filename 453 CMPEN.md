## State Machine 2
##### State Machine Design
1. Obtain the spceification of the circuit from problem statement
2. Derive a state diagram
3. Derive the corresponding state table
4. Reduce th num of states or modify state assigment if possible
5. Assign binary num to each state (correspond to the letter symbols)
6. Choose the type of flip-flops to be used
7. From the state table, derive th circuit excitation and output tables
8. Derive the equations for output functions and flip-flop input functions



Y_2 = wy_1
Y_1 = w
z = y_2


![[Pasted image 20220406102506.png |300]]
What does it do? 
- swaps values between registers, more specifically the contents of R1 and R2

![[Pasted image 20220406102712.png |300]]
State machine diagram to swap R1 and R2 register values

| Present State | NS: w=0 | NS: w=1 | R1out | R1in | R2out | R2in | R3out | R3in | Done |
| ------------- | --- | --- | ----- | ---- | ----- | ---- | ----- | ---- | ---- |
| a             | a   | b   | 0     | 0    | 0     | 0    | 0     | 0    | 0    |
| b             | c   | c   | 0     | 0    | 1     | 0    | 0     | 1    | 0    |
| c             | d   | d   | 1     | 0    | 0     | 1    | 0     | 0    | 0    |
| d             | a   | a   | 0     | 1    | 0     | 0    | 1     | 0    | 1     |

A = 00, B = 01, C = 10, D = 11

| Present State | NS: w=0 | NS: w=1 | R1out | R1in | R2out | R2in | R3out | R3in | Done |
| ------------- | --- | --- | ----- | ---- | ----- | ---- | ----- | ---- | ---- |
| a             | 00   | 01   | 0     | 0    | 0     | 0    | 0     | 0    | 0    |
| b             | 10   | 10   | 0     | 0    | 1     | 0    | 0     | 1    | 0    |
| c             | 11   | 11   | 1     | 0    | 0     | 1    | 0     | 0    | 0    |
| d             | 00   | 00   | 0     | 1    | 0     | 0    | 1     | 0    | 1     |


#####  kmap

| $w\y_2 y_1$ | 00  | 01  | 11  | 01  |
| ----------- | --- | --- | --- | --- |
| 0           | 0   | 1   | 0   | 1   |
| 1           | 0   | 1   | 0   | 1    |

##### State Redundancy
Two states $S_i$ and $S_j$ are said to be equivalent if and only if ever ypossible input sequence, the same output sequence will be produced regardless of whether $S_i$ or $S_j$ is the inital state
