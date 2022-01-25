# Supervised Learning
### Defintion:
Using labeled data to improve the model by comparing the model's output to the actual answer. So far, this is the most successful machine learning technique, but at the cost of requiring lots of human labeling.

![[Pasted image 20220125140152.png |300]]

---

### Algorithms:
#### Classification:

**Definition:**
Attempting to predict the label of the input, giving a discrete answer as your output rather than a continuous one

![[Pasted image 20220125140138.png |300]]

##### Neural Network:
See Neural Networks Page

##### Decision Tree: 
See Decision Tree Page


##### SVM (Support Vector Machines): 
**Definition:**
Classification technique that organizes data through a 3D separator known as a hyperplane
- Soft Margins in SVMs:
	- Allowing some data to be misclassified to prevent overfitting the model
	![[Pasted image 20220125135848.png]]

- Kernel Trick in SVMs:
	- Used to separate the data better by adding another dimension to it

![[Pasted image 20220125135909.png |300]]


##### Naive Bayes: 
**Definition:**
Calculates the probability of text belonging to a certain category
![[Pasted image 20220102023242.png | 400]]

**Algorithm:**
> $$P(c|x)=\frac{P(x|c)P(c)}{P(x)}$$
>   -   _P_(_c|x_) is the posterior probability of _class_ (c, _target_) given _predictor_ (x, _attributes_).
> -   _P_(_c_) is the prior probability of _class_.
> -   _P_(_x|c_) is the likelihood which is the probability of _predictor_ given _class_.
> -   _P_(_x_) is the prior probability of _predictor_.


##### K-Nearest Neighbors Classification: 
**Definition:**
Classifying an object to the class of it's nearest neighbor

![[Pasted image 20220102130609.png | 400]]
As shown above, you can see the algorithm classifies objects based on those in it's proximity rather than a complex, multidimensional plane 

---
#### Regression: 
**Definition:**
Attempting to predict the quantity of the output by finding finding line of best fit, which gives a continuous answer

![[Pasted image 20220125140234.png | 400]]

##### Linear Regression:
**Algorithms:** Neural Network, Decision Tree
**Definiton:** Finds the line of best fit of a dataset and gives an output of expected value at an input (in terms of labels)
![[Pasted image 20220102022008.png| 400]]

**Example:** Predicting (stock) or (house) prices based on features present
**Model's output:** Outputs a number of the expected value rather than a scaled version between 0 : 1


##### Logistic Regression:
**Algorithms:** Neural Network, Decision Tree
**Definiton:** Finds the line of best fit of a dataset, giving an output of a percent of occuring between a discrete output.
**Example:** passing a test or failing, hours studied vs. probability of passing
![[Pasted image 20220102135147.png | 400]]
**Model's output:** Outputs a number of the expected value rather than a scaled version between 0 : 1


##### K-Nearest Neighbor Regression:
**Algorithms:** K-NN algorithm
**Definition:** Finding the "property value" (objects value in space) and dictating the average of the K-Nearest Neighbors


![[Pasted image 20220125140253.png |300]]

### Resources:
[KNN-Algorithm](https://towardsdatascience.com/machine-learning-basics-with-the-k-nearest-neighbors-algorithm-6a6e71d01761)