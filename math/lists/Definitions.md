# Statistics and ML

## Discrete
When the outcome may only be chosen from a set number of choices. For example, the MNIST dataset requires a discrete output as your options for the numbers range from 0 - 9 only. 

## Continuous 
When the outcome may be chosen from infinetely possible combinations. For example, if you were to predict the price of a house given all of it's features, you would want to provide an accurate dollar amount (Continuous) rather that a percent guessing which given dollar amount is correct (Discrete)

## Discount Rate
AKA: Gamma (γ)
The value used to multiply with future rewards to increase the value of immediate rewards over future rewards. This is important due to the idea that an enviornment can terminate any second

## Model (Neural networks)
A model is an interchangeable word for neural network, more specifically referring to the  architecture type that the network uses

## Model (Reinforcement learning)
A world model, or a perception of the enviornment tuned and used by the policy to predict the future states and rewards

## Agent
A actor in an enviornment, tasked with making the actions and percieving the enviornment for reinforcement learning problems

## Bootstrapping
The bootstrap method is a resampling technique used to estimate statistics on a population by sampling a dataset with replacement.

It can be used to estimate summary statistics such as the mean or standard deviation. It is used in applied machine learning to estimate the skill of machine learning models when making predictions on data not included in the training data.

![[Pasted image 20220102180106.png | 400]]

## Learning Rate
AKA: Alpha (α)
A higher value adjusts the model's parameters aggressively, accepting more of the error while a smaller one adjusts conservatively but may make more conservative moves towards the optimal values.

## Train
Rather than explicitly programming a machine learning system, they must be trained to learn the rules through iterative sessions of minimizing the loss function.


## Single Layer Perceptron
The first neural network proposed with one layer,  and an activation function.
![[Pasted image 20220104001949.png | 400]]

# Math
## Truth value:
The outcome of the statement where the value is either true or false.

## Tautology:
A proposition that is true for all possible combinations of the question

## Contradiction:
A compound proposition that is false for all possible combinations of the question

## Contingency:
A compound proposition that can be either true or false, therefore not a [[Definitions#Tautology |tautology]] or [[Definitions#Contradiction |contradiction]]

## Propositional Logic
**Definition:** A sentence that is either true or false but not both is called a proposition. A proposition is typically expressed as a declarative sentence.

## Set: 
A set is an unordered collection of distinct objects, otherwise known as members or elements.

## Power Set: 
The set of all possible subsets of set A is denoted by $\mathcal{P}(A)$, or known as power set of A

## Set Cardinality:
Number of distinct elements in the set A, denoted by $|A|$

## Cartesian Products: 
The multiplication of two sets where the output is ordered pairs of a tuple; notation: $A \times B$ 