# Optimizers
The chosen method of optimizing your network to reduce your [[262 Loss Function and Optimizers#Loss Function|loss function]]. Gradients are calculated through [[261 Backpropagation#Backpropagation|backpropagation]], which are then tuned by the optimizer to achieve the minimum loss.
![[optim2.gif|400]]

## 1st Order Optimization
![[optim.gif|400]]
##### SGD (Stochastic Gradient Descent)
The updated version of gradient descent that is more efficient due to its ability to tune weights and biases in batches rather than after an entire cycle of the dataset. It is more efficient because it breaks the dataset up into pieces and updates per piece.

##### SAG (Stochastic Average Gradient)
**Definition:** Estimates the overall gradient by averaging the gradient values stored in memory

##### Momentum
**Definition:** Using the velocity of moving in one direction to accumulate momentum in advancing the gradient

##### Stochastic Variance Reduction Gradient
**Definition:** The gradient can be calculated up to two times during each update

##### Gradient Descent
**Definition:** Primitive version of SGD as it does not use batches to filter through data

## 2nd Order Optimization
##### AdaGrad 
(+): Reduced the need to extensively tune hyper-parameters
3rd Best
##### AdaDelta
(+): Implements adaptive learning rate
2nd Best
##### Adam
(+): Deals with AdaDeltas problem of continuous decaying learning rate
Best

# Loss Function
[Loss vs. Optimization](https://datascience.stackexchange.com/questions/85579/confused-between-optimizer-and-loss-function)

##### MSE (Mean Square Error)
$$MSE=\frac{1}{N}\sum^N_{i=1}(y_i-\hat{y}_i)^2$$
The workhorse of basic loss functions; it’s easy to understand and implement and generally works pretty well. To calculate MSE, you take the difference between your predictions and the ground truth, square it, and average it out across the whole dataset.

##### Huber Loss
Acts like [[262 Loss Function and Optimizers#MSE Mean Square Error|MSE (Mean Square Error)]] when error is small, but is like MAE when error is large. And is good loss function for data with few outliers

##### Cross-Entropy / Log-Loss
$$MSE=-\frac{1}{m}\sum^m_{i=1}y_i \cdot log(\hat{y_i})$$
Log loss is a loss function also used frequently in classification problems, and is one of the most popular measures for Kaggle. It’s just a straightforward modification of the likelihood function with logarithms.
![[cross-entropy.png|400]]

##### MAE (Mean Absolute Error)
$$MAE=\frac{1}{N}\sum^N_{j=1}|y_j-\hat{y}_j|$$

##### RMSE (Root Mean Square Error)
$$MSE=\sqrt{\sum^N_{i=1}\frac{(y_i-\hat{y}_i)^2}{N}}$$
