# Hyper Parameters
**Definition:** Parameters of a model that are implemented typically at the beginning of the learning process by humans which change how the model learns

### Tensor Shape
**Definition:** Tensor shape (or number of dimensions) is important for which application you are attacking
1. 1D Tensor (Vector Data):
	1. Samples
2. 2D Tensor (Matrix Data):
	1. Samples 
	2. Features
3. 3D Tensor (Sequential Data):
	1. Samples
	2. Time-steps
	3. Features
4. 4D Tensor (Images)
	1.  Samples
	3. Height
	4. Width
	5. Channels
5. 5D Tensor (Video)
	1. Samples
	2. Frames
	3. Height
	4. Width
	5. Channels

### Learning rate
The rate at which weights and biases are adjusted

**Typical Learning Rate:** 0.01 - 0.001
**Large Learning Rate:** Too fast learning rate fails to find minimum due to overestimation and overstepping the minimum in an optimal time
**Small Learning Rate:** Too slow learning rate means learning is far too slow

### Momentum
**Definition:** A way of modifying the gradient descent algorithm through accelerating the gradients based on their momentum in a given "direction". Combines the average of the moving preivous vectors and takes that into account when looking at the new vector. 90% learning rate means 90% of momentum's value, 10% of new direction

### Learning Rate Decay
**Definition:** The act of decrementing the learning rate as the model progresses to ensure the model slows down as it approaches the minimum and increases generalization (somehow)
![[Pasted image 20220125144544.png |300]]
Blue - Constant LR
Green - LR Decay

### Batch Size
**Definition:** Number of samples that will be propagated through the network at one time

Advantages to breaking dataset into batches:
1. Requires Less memory
2. Network trains faster

Disadvantages:
1. Smaller the batch, the less accurate the gradient will be

![[Pasted image 20220125144745.png |300]]


### Step Size
**Definition:** Determines the subset of local optima that the algorithm can converge to by changing the magnitude of ocsillations (image above).

### Loss Function
**Definition:** The function chosen to measure the loss between output of network and desired output. 

For example mean squared error, squares the difference between target and prediction. Cross entropy is a more complex loss formula related to information theory.

### Regularization
**Definition:** Used to avoid overfitting the model by "minimizing the coefficient estimates to zero to reduce the capacity of a model

![[Pasted image 20220125144848.png |300]]


### Model Architecture:
The model's architecture has a huge impact on how the network opperates. There are many things in a network that can be tuned and modified based on the architecture that can allign with the goals of the archtiect. 