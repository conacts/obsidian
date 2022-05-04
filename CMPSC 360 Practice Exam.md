Suppose that there is a certain town in which all the men either shave themselves, or they are shaved by the town barber Figaro (who is male). Suppose Vinny is too cheap to have the barber shave him. Let S(x,y) be the two variable predicate “person x is shaved by person “y”. First translate the given statement into English, then determine the truth value of the statement and justify your answer.

1. $\forall x (S(x, Figaro) \lor S(x,x))$ 
	1. Translation: Every man in the town is either shaved by the barber Figaro or shaves himself.
	2. True
2. $\forall x( \lnot S (x,x) \rightarrow S(x, Figaro))$
	1. Translation: Every man in the town that does not shave himself is shaved by the barber Figaro.
	2. True (since there are only two possibilities, one of them must hold)
3. $\forall (S (x, Figaro) \rightarrow \lnot S(x,x))$
	1. Translation: Every man in the town that is shaved by the barber Figaro does not shave himself.
	2. False (the counterexample is Figaro, who shaves himself and is also shaved by Figaro).
4. $\exists y \forall x (S(x,y))$ 
	1. Translation: There is a man who shaves every man in the town.
	2. False (Since Vinny shaves himself, there is noone who shaves everyone).
5. $\exists ! x (S(x,x) \land S(x, Figaro))$
	1. Translation: There is exactly one man who both shaves himself and is shaved by the barber Figaro.
	2. True (the example is Figaro, who shaves himself and is also shaved by Figaro).

----




---

Consider the following graph. Starting from node 1, how many Hamiltonian paths (ways to visit each node once) there exists in this graph? How many Eulerian trails (ways you can visit each edge once) can be found in this graph?

![[Pasted image 20220503133524.png|150]]

1. Since all the nodes are connected there are 3! hamiltonian paths
2. 0 Eulerian trails as there are even nodes with odd degrees

----

How many Hamiltonian cycles there exists in $K_n$ graph?
There are n! possible permutations between n objects. But we should consider that cycles are invariant under rotation. So each n permutations refer to the same cycle. Also, each cycle is invariant under reflection. So we should also divide the result by a factor of 2. So we have $\frac{n!}{2n}=\frac{(n-1)!}{2}$ Hamiltonian paths in $K_n$ graphs.


----
Suppose you have a bipartite graphs with two disjoint set of nodes V and U where all the edges only exist between V and U . If d(u) denotes the degree of node u, prove that $\sum_{u \in U} d(u) = \sum_{v \in V} d(v) |E|$ 


----

Expand $(7x + 5y)^6$ by Binomial Theorem
$$(7x)^6 + \pmatrix{6 \\ 1}(7x)^5(5y) + \pmatrix{6 \\ 2}(7x)^4(5y)^2 + \pmatrix{6 \\ 3}(7x)^3(5y)^3 + \pmatrix{6 \\ 4}(7x)^2(5y)^4 + \pmatrix{6 \\ 5}(7x)(5y)^5 + \pmatrix{6 \\ 6}(5y)^6$$

$$(7x)^6 + 6(7x)^5(5y) + 15(7x)^4(5y)^2 + 20(7x)^3(5y)^3 + 15(7x)^2(5y)^4 + 6(7x)(5y)^5 + (5y)^6$$

----

Prove that $1 + a + a^2 + a^3 + a^n = \frac{a^{n+1}-1}{a-1}$



---

In an online auction event, the host Bob and bidder Alice are communicating using the RSA encryption method. Imagine you are the bidder Alice, and you will first send Bob an encrypted message (a bid). After receiving Alice’s bid, Bob will then reply with the latest highest bid.

Assume that Alice’s bid is 3, and Bob’s reply is 2.  
Alice’s setup:  
p = 3  
q = 17  
e = 43  
Bob’s setup:  
p = 13  
q = 11  
e = 7  
How do you encrypt your bid and decrypt Bob’s reply?

ANS: 
1. Encrypt bid using Bob's public key
	1. $pq=143$
	2. $e=7$
	3. $msg=3$
	4. $ciphertext=3^7 \mod 143 = 42$