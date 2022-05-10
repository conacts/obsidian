# Reinforcement Learning
Training an agent through trail and error inside of an environment to achieve mastery through multiple iterations to get better, known as selfplay. This technique is similar to how humans learn, acting inside an environment with multiple choices at each step.
![[Pasted image 20220102160837.png | 600]]


# SARSA
The process of reaching a state, then based on your state you choose an action, get your reward and get your new state again and continue the process
1. State
2. Action
3. Reward
4. State
5. Action

## Associative SARSA
The values the algorithm learns are associated with the particular states in the environment, otherwise known as a full reinforcement learning problem.

### Markov Decision Process (MDP)
A form of [[Reinforcement Learning#Associative SARSA|associative SARSA]] that uses a mathematical framework used for modeling decision-making problems where the outcomes are partly random and partly controllable.

The Markov Decision Process is broken down into 4 parts

 Honorable Mention: **Environment —** World in which the agent operates. Although the environment is not apart of the MDP model (since State essentially takes it's place), it is still incredibly important to reinforcement learning

1. **State —** Current state of the environment which the agent resides
2. **Reward —** The feedback from the environment used to encourage and discourage decisions
3. **Probability —** (Policy) The probability that the next state will be what the agent predicts it to be
4. **Action —** The action the agent takes to change it's position in the environment, measured in a time frame known as a step

![[Pasted image 20220125135125.png |400]]

These 4 components enable an agent to act, predict and improve within it's current environment. For example, if you were playing someone in chess and they could accurately predict all your moves before you went, they would have a huge advantage over you

---

#### State
The state is the evolution of the given environment at each step, or action,  the agent takes. For example, if I'm playing chess and my opponent move bishop to d3 (Bd3), the new state is the updated board with bishop at d3.

##### Experience Replay
The storing of previous actions, states and rewards to have the agent play in those states again, essentially creating a supervised learning problem
![[Pasted image 20220125135438.png |300]]

---

#### Action
Action refers to the action taken by the agent at each state, otherwise known as a step. Actions can be chosen from a set of actions, or a range over a set of actions. 

##### Discrete Action Space
A discrete action space is one where there is a finite set of actions to choose from. For example, playing Pokemon you have a few choices while walking around. Move up, down, left or right.
![[Pasted image 20220125135514.png|300]]


##### Continuous Action Space
A continuous action space is one where a range of actions are present. While you may be limited in the choices you can take, you are able to chose the scalar in which you apply to the action. For example, driving a car only has a set of choices of gas, break, left and right, but the range in which you can take these actions is vast. I can stomp on the breaks or ease into them depending on the situation.
![[Pasted image 20220125135502.png |400]]

#### Reward 
The feedback from the environment used to encourage and discourage decisions. The goal of the policy is to predict the reward, so the agent can make the optimal decision at each step. 

![[Pasted image 20220125135415.png |300]]

**Types of Rewards:**
Although rewards are objective, the time it takes to achieved these rewards is a huge influence on the value of the reward leading to two types of rewards 1. 

##### 1. Immediate Reward
The reward given in the next step. This value is not affected by predicted reward, giving it more weight in the decision.

Due to the fact that the environment could end any moment because of unforeseen circumstances, it is used. This value can be modified per environment, but for more general intelligence this is a necessity

##### 2. Discounted Reward
Discounted reward is the predicted future reward multiplied by a [[Definitions#Discount Factor |discount factor]] to raise the importance of immediate rewards. 

This method is very useful for planning as it can prioritize the future if the reward is high enough.

##### 3. Average Total Reward
The average reward over a number of steps by the agent. 

---

#### Policy
The algorithm the agent uses to make the optimal decision in it's current environment. Training a RL agent at its core is just optimizing the policy through tuning it's ability to predict the reward function. If the reward function is perfectly predictable then the agent will always make the optimal decision.

**Note:** Policies can get incredibly in-depth and are always evolving. Currently, the decision tree to predict the reward has been a very valuable discovery for a majority in reinforcement learning advancements.

**Types of Policies**
**Note:** If the agent attempts to predict the future, it is model-based, otherwise it is model-free

##### Model-Based Algorithms
When the policy uses a representation of the environment of the environment to predict future quantities like state and reward to plan and make informed decisions.
![[Pasted image 20220125135245.png |400]]

###### Deterministic Search (Non-explore)
Always choosing the largest reward, giving the same output regardless of how many times run into the same situation (especially since it is model-based).

![[Pasted image 20220125135232.png]]

###### Non-Deterministic Search (Explore)
There is a chance for each action being chosen based on a chance of picking a random action in the situation rather than the optimal action as stated by the policy. This means that if you run the program enough times you should see all options acted on eventually.

##### Bellman Equation
An equation that simplifies the computation of breaking the value function down into immediate reward and the discounted future values through dynamic programming. 
>  $$V(s)=max(R(s,a)+\gamma V(s'))$$
>  - $R(s,a)$ = the reward function, used to predict the reward of the current action in the current state
>  - $γ$ = discount rate
>  - $V(s')$ = Value function of next state, causing a recursive function and repeat the above function again

##### Model-Free Algorithms
Continually updates a Policy in which it acts from, receiving rewards based on it's actions leading to an updated policy. Perfect for imperfect environments as it does not attempt to predict the future rewards, just models the rewards at each step through trial and error.
![[Pasted image 20220125134839.png |400]]

######  [Actor-Critic](https://proceedings.neurips.cc/paper/1999/file/6449f44a102fde848669bdd9eb6b76fa-Paper.pdf) 
Simultaneously learning a policy function and a value function
- A family of algorithms built for simulation-based optimization of a Markov decision process over a parameterized family of randomized stationary policies.

###### SAC (Soft Actor Critic)
Not limiting itself to seeking only the maximum of lifetime rewards, this algorithm embraces exploration, incentivizing entropy in its pursuit of optimal policy.
![[Pasted image 20220125134909.png |400 ]]
##### PPO (Proximal Policy Optimization)
A state-of-the-art policy gradient algorithm which uses two neural networks during training – a policy network and a value network.
	![[Pasted image 20220125135010.png |400]]

##### (MCTS) Monte Carlo Tree Search
Randomly samples actions and uses experience replay to master a multitude of actions. It is not model-based (planning) since it doesn't utilize MDP planning, it just randomly samples each state for which it can guess it's reward

**Note:** This was the technique used by Google's Deepmind on the Alpha Go and MuZero projects.
![[Pasted image 20220125135105.png |400]]

##### Temporal Difference Learning 
A set of algorithms where an agent learns from an environment through episodes with no prior knowledge of the environment.

![[Pasted image 20220125135330.png |300]]

--- 

### Environment
World in which the agent operates. The environment can be either perfect or imperfect. This refers to whether the agent can perceive the entire environment (perfect) or only partially view the environment (imperfect). For example, chess is a perfect environment, while a game like Call of Duty is imperfect.

**Note:** There is a lot of overlap between environment and state and action. Choosing the way the environment is set up has a lot of effect on the action type and information given to the agent. Therefore they are effectively the same item, just represented in both the environment and their respective category.

#### Environment Observation
##### Perfect Environment (fully observable)
**Definition:** A perfect environment is one where all parts of the environment are fully observable. This leads to easier state prediction causing an easier environment to act in. The problem is, the real world is not a perfect environment as it would be way too computationally intensive to predict everything and the world is incredibly unpredictable.

##### Imperfect Environment (not fully observable)
**Definition:** An imperfect environment is one that is not fully observable. The agent is provided with only partial information, making it much harder to predict the environment but leads to a much more robust agent. The real world isn't fully observable, so this type of environment is the type humans experience.

#### Environment Probability
##### Deterministic Environment
**Definition:** An environment where the next state can always be determined by the current action in the present state. For example, when you steer a car left, the car should turn left and not right. This environment abstracts probability from the set of actions.
##### Stochastic Environment
**Definition:** An environment where probability is factored into the action you choose. For example, if you shoot a gun in fortnite (because of bloom), you will not always hit each shot no matter how perfect your aim is due to the bullet spread, causing you to not always be able to determine the next step of the environment.

