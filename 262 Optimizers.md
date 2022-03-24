# Optimizers
**Defintion:** Ways to calculate the loss function of a network for backpropogation to use and update properly
![[Pasted image 20220125143707.png]]
## 1st Order Optimziation
##### SGD (Schocastic Gradient Descent)
**Definiton:** The updated version of gradient descent that is more efficient due to its ability to tune weights and biases in batches rather than after an entire cycle of the dataset. It is more efficient because it breaks the dataset up into pieces and updates per piece.

##### SAG (Schocastic Average Gradient)
**Definition:** Estimates the overall gradient by averaging the gradient values stored in memory

##### Momentum
**Definition:** Using the velocity of moving in one direction to accumulate momentum in advancing the gradient

##### Schocastic Variance Reduction Gradient
**Definition:** The gradient can be calculated up to two times during each update

##### Gradient Descent
**Definition:** Primitive version of SGD as it does not use batches to filter through data

## 2nd Order Optimization
##### AdaGrad 
Benifits: Reduced the need to extensively tune hyper-parameters
3rd Best
##### AdaDelta
Benefits: Implements adaptive learning rate
2nd Best
##### Adam
Benefit: Deals with AdaDeltas problem of continuous decaying learning rate
Best

## Other
##### Huber Loss
**Definition:** Acts like MSE when error is small, but is like MAE when error is large. And is good loss function for data with few outliers

##### Cross-Entropy
$$MSE=-\frac{1}{m}\sum^m_{i=1}y_i \cdot log(\hat{y_i})$$
##### MSE (Mean Square Error)
$$MSE=\frac{1}{N}\sum^N_{i=1}(y_i-\hat{y}_i)^2$$
##### MAE (Mean Absolute Error)
$$MAE=\frac{1}{N}\sum^N_{j=1}|y_j-\hat{y}_j|$$
##### RMSE (Root Mean Square Error)
$$MSE=\sqrt{\sum^N_{i=1}\frac{(y_i-\hat{y}_i)^2}{N}}$$