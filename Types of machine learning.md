
# Types of Machine Learning
![[Pasted image 20220102132340.png | 400]]
## Supervised Learning
**Definition:** Utilizing labeled data (training data) to compare the model's results against. If the data differs, the machine will adjust its parameters to optimize the function.
![[Pasted image 20220102015945.png|400]]

### Algorithms: 

##### 1. Classification
**Definition:** Attempting to predict the label of the input, giving a [[Definitions#Discrete | discrete]] answer as your output rather than a continuous one
![[Pasted image 20220102020104.png|400]]

**Uses: ** Best used when a , for example, spam email and not spam. These are a binary choice and if you can train your algorithm to 


##### 2. Regression
**Definition:** Attempting to predict the quantity of the output, finding line of best fit

![[Pasted image 20220102020047.png|400]]

**Uses: ** Regression is best used when you need an output of a [[Definitions#Continuous | continuous]] value. This would be applicable in something like predicting stock prices or house prices rather than desiring a percent of a chosen outcome

---

# Unsupervised Learning
**Definition:** The act of finding similar features in unlabeled data to categorize them into more structured groups, without knowing inherintly what they are
![[Pasted image 20220102015910.png|400]]
### Algorithms:
##### 1. Clustering
**Definition:** When your data is grouped together based on similar features

![[Pasted image 20220102015826.png|400]]


---

# Reinforcement Learning
**Definition:** Training an agent through trail and error inside of an environment to achieve mastery through multiple iterations to get better, known as selfplay. This technique was derived from how humans learn, acting inside an environment with multiple choices at each step.


The 5 fundamental components to reinforcement learning is...
1.  **Environment —** World in which the agent operates
2.  **State —** Current state of the enviornment which the agent resides
3.  **Reward —** The feedback from the enviornment used to encourage and discourage decisions
4.  **Policy —** Method to map agent’s state to actions (predicts probability of action reaching next state of enviornment)
5.  **Action —** The action the agent takes to change it's position in the enviornment, measured in a timeframe known as a step

This process is known as the Markov decision process (MDP)

![](https://web.stanford.edu/group/pdplab/pdphandbook/suttonbarto_rl.png)

