# Neural Networks
**Definition:** Artificial Neural Networks play a key role in Machine Learning, spawning the subfield deep learning. Deep Learning is the use of deep (having many layers) neural networks to create a function to map a certain task.

## Learning and training
The specified way in which you use the gradient of loss to update your parameters (weights & biases) of your model through the use of an optimizer

### Backpropagation
**Definiton:** Adjusting [[Definitions#Weights |weights]] and [[Definitions#Biases |biases]] to achieve the smallest loss function in the NN as a whole. The desired tunings of each Target are collected and summed to find the overall desired movement for the network along that dimension. 

There are multiple factors that go into how a neural network improves. These include...
#### Hyper Parameters:
**Definiton:** Parameters of a model that are implemented typically at the beginning of the learning process by humans which change how the model learns
1. Learning Rate
2. Momentum
3. Learning Rate Decay
4. Batch Size
5. Step Size
6. Loss Function
7. Regularization
8. Network Architecture

#### [[262 Loss Function and Optimizers | Optimizers:]]
1. 1st Order Optimization
2. 2nd Order Optimization


## Architecture
The neural network you build around your dataset.

##### Basic PyTorch Neural Net 
```python
class MyNeuralNetwork(nn.Module):
	def __init__(self, input_layer_size=784, # 28*28=784 (mnist dataset)
					hidden_layer_size=[512, 256, 256, 128], # hidden
					output_layer_size=10): # number of items to classify
		
		super().__init__()
        self.conv1 = nn.Conv2d(in_channels=1, out_channels=16, kernel_size=3, stride=2)
        self.conv2 = nn.Conv2d(in_channels=16, out_channels=32, kernel_size=3)
        self.linear1 = nn.Linear(3872, 128)
        self.linear2 = nn.Linear(128, 10)
        self.relu = nn.ReLU()
        self.flatten = nn.Flatten()
			
	def forward(self, x):
		x = self.conv1(x)
        x = self.relu(x)
        x = self.conv2(x)
        x = self.relu(x)
        x = self.flatten(x)
        x = self.linear1(x)
        x = self.relu(x)
        x = self.linear2(x)
        pred = self.relu(x)
        return pred

```

### Tensor Shape
Tensor shape (or number of dimensions) is important for which data you are processing. The implementation below tells you which pytorch implementation you would use at each step.

##### 1D Tensor (Vector Data): 
- Samples
```python
torch.Size([32])
# 1d: [batch_size]
# use for target labels
```


##### 2D Tensor (Matrix Data):
- Samples
- Features
```python
torch.Size([32, 256])
# 2d: [batch_size, num_features (Channel * Height * Width)]
# use for nn.Linear() input
```


##### 3D Tensor (Sequential Data / Images):
- Samples
- Time-steps
- Features
```python
torch.Size([10, 1, 2048])
# 3d: Conv2d : [batch_size, channels, num_features (Height * Width)]
# 3d: RNN : [sequence_length, batch_size, num_features (Height * Width)]
```
![[Pasted image 20220416200429.png |500]]


##### 4D Tensor (Images):
- Samples
- Height
- Width
- Channels
```python
torch.Size([16, 3, 28, 28])
# 4d: [batch_size, channels, height, width]
# use for nn.Conv2d()
```

##### 5D Tensor (Video)
- Samples
- Frames
- Height
- Width
- Channels

```
>>> torch.Size([32, 1, 5, 15, 15])
# 5d:[batch_size, channels, depth, height, width]   
# use for nn.Conv3d()
```
![[Pasted image 20220416200306.png]]

