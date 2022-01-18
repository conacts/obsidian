# Reinforcement Learning
**Definition:** Training an agent through trail and error inside of an environment to achieve mastery through multiple iterations to get better, known as selfplay. This technique is similar to how humans learn, acting inside an environment with multiple choices at each step.
![[Pasted image 20220102160837.png | 600]]

## Markov Decision Process (MDP)
**Definition:** A mathematical framework used for modeling decision-making problems where the outcomes are partly random and partly controllable.

The Markov Decision Process is broken down into 4 parts

 Honorable Mention: **Environment —** World in which the agent operates. Although the enviornment is not apart of the MDP model (since State essentially takes it's place), it is still incredibly important to reinforcement learning

1.  **State —** Current state of the enviornment which the agent resides
2.  **Reward —** The feedback from the enviornment used to encourage and discourage decisions
3.  **Probability —** (Policy) The probability that the next state will be what the agent predicts it to be
4. **Action —** The action the agent takes to change it's position in the enviornment, measured in a timeframe known as a step



These 4 components enable an agent to act, predict and improve within it's current enviornment. For example, if you were playing someone in chess and they could accurately predict all your moves before you went, they would have a huge advantage over you

---

## Environment
**Definition:** World in which the agent operates. The environment can be either perfect or imperfect. This refers to whether the agent can percieve the entire enviornment (perfect) or only partially view the enviornment (imperfect). For example, chess is a perfect enviornment, while a game like Call of Duty is imperfect.

### Types of Enviornments

#### Enviornment Observation
##### Perfect Enviornment (fully observable)
**Definition:** A perfect enviornment is one where all parts of the enviornment are fully observable. This leads to easier state prediction causing an easier enviornment to act in. The problem is, the real world is not a perfect enviornment as it would be way too comptationally intensive to predict everything and the world is incredibly unpredictable.

##### Imperfect Enviornment (not fully observable)
**Definition:** An imperfect enviornment is one that is not fully observable. The agent is provided with only partial information, making it much harder to predict the enviornment but leads to a much more robust agent. The real world isn't fully observable, so this type of enviornment is the type humans experience.

#### Enviornment Probability
##### Deterministic Enviornment
**Definition:** An enviornment where the next state can always be determined by the current action in the present state. For example, when you steer a car left, the car should turn left and not right. This enviornment abstracts probability from the set of actions.
##### Schocastic Enviornment
**Definition:** An enivornment where probability is factored into the action you choose. For example, if you shoot a gun in fortnite (because of bloom), you will not always hit each shot no matter how perfect your aim is due to the bullet spread, causing you to not always be able to determine the next step of the enviornment.

---

### State
**Definition:** The state is the evolution of the given enviornment at each step, or action,  the agent takes. For example, if I'm playing chess and my oponent move bishop to d3 (Bd3), the new state is the updated board with bishop at d3.

#### Experience Replay
**Definiton:** The storing of previous actions, states and rewards to have the agent play in those states again, essentially creating a supervised learning problem

---

### Reward 
**Definition:** The feedback from the enviornment used to encourage and discourage decisions. The goal of the policy is to predict the reward, so the agent can make the optimal decision at each step. 


#### Types of Rewards
Although rewards are objective, the time it takes to achieved these rewards is a huge influence on the value of the reward leading to two types of rewards 1. 
##### 1. Immediate Reward
**Definition:** The reward given in the next step. This value is not affected by predicted reward, giving it more weight in the decision.

Due to the fact that the environment could end any moment because of unforeseen circumstances, it is used. This value can be modified per environment, but for more general intelligence this is a necessity
##### 2. Discounted Reward
**Definition:** Discounted reward is the predicted future reward multiplied by a [[Definitions#Discount Factor | discount factor]] to raise the importance of immediate rewards. 

This method is very useful for planning as it can prioritize the future if the reward is high enough.
##### 3. Average Total Reward
**Definition:** The average reward over a number of steps by the agent. 

---

### Policy
**Definition:** The algorithm the agent uses to make the optimal decision in it's current enviornment. Training a RL agent at its core is just optimizing the policy through tuning it's ability to predict the reward function. If the reward function is perfectly predictable then the agent will always make the optimal decision.

**Note:** Policies can get incredibly indepth and are always evolving. Currently, the decision tree to predict the reward has been a very valuable discovery for a majority in reinforcement learning advancements.

#### Types of Policies
**Note:** If the agent attempts to predict the future, it is model-based, otherwise it is model-free

##### Model-Based Algorithms
**Definiton:** When the policy uses a representation of the enviornment of the environment to predict future quantities like state and reward to plan and make informed decisions.

##### Deterministic Search (Non-explore)
**Definition:** Always choosing the largest reward, giving the same output regardless of how many times run into the same situation (especially since it is model-based).

##### Non-Deterministic Search (Explore)
**Definition:** There is a chance for each action being chosen based on a chance of picking a random action in the situation rather than the optimal action as stated by the policy. This means that if you run the program enough times you should see all options acted on eventually.

##### Temporal Difference Learning 
AKA: TD Learning
**Definition:** a set of algorithms where an agent learns from an environment through episodes with no prior knowledge of the environment.

##### Bellman Equation
**Definition:** An equation that simplifies the computation of breaking the value function down into immediate reward and the discounted future values through dynamic programming. 
>  $$V(s)=max(R(s,a)+\gamma V(s'))$$
>  - R(s,a) = the reward function, used to predict the reward of the current action in the current state
>  - γ = discount rate
>  - V(s') = Value function of next state, causing a recursive function and repeat the above function again

##### Model-Free Algorithms
**Definiton:** Continually updates a Policy in which it acts from, recieving rewards based on it's actions leading to an updated policy. Perfect for imperfect environments as it does not attempt to predict the future rewards, just models the rewards at each step through trial and error.

##### Actor-Critic


%% I replaced probability with policy as policy is what is used to predict the probablity of states and choose the optimal action %%

--- 

### Action
**Definiton:** Action refers to the action taken by the agent at each state, otherwise known as a step. Actions can be chosen from a set of actions, or a range over a set of actions. 

### Types of Actions

##### Discrete Action Space
**Definition:** A discrete action space is one where there is a finite set of actions to choose from. For example, playing pokemon you have a few choices while walking around. Move up, down, left or right.

##### Continuous Action Space
**Definition:** A continuous action space is one where a range of actions are present. While you may be limited in the choices you can take, you are able to chose the scalar in which you apply to the action. For example, driving a car only has a set of choices of gas, break, left and right, but the range in which you can take these actions is vast. I can stomp on the breaks or ease into them depending on the situation.