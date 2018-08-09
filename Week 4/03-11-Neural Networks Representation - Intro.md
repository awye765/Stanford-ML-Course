# Week 04-91 Neural Networks Representation - Intro & Model Representation 1

## What is a neuron?

A neuron is the brain's <b>basic computational unit</b>.  

It receives and integrates chemical signals from other neurons via <b>dendrites</b> and, depending on a number of factors, it either does nothing or generates an electrical signal output via <b>axons</b>, which in turn signals other connected neurons via synapses:

<p align = "center">
<img src=../Images\neuralnetworks7.PNG width=100%>
</p>

<p align = "center">
<img src=../Images\neuralnetwork3.PNG width=100%>
</p>

Source: https://becominghuman.ai/making-a-simple-neural-network-2ea1de81ec20

## What is a neural network?

A neural network is <b>simply a network of neurons</b>.

## How do we represent a neural network algorithmically?

#### A simple neural network

The below is a simple neural network.  Note x<sub>0</sub> is our "<b>bias unit</b>" and always equal to 1.  In neursal networks we use the same logistic function as in logistic regression, i.e. the sigmoid (logistic) activation function described below:

<p align = "center">
<img src=../Images\neuralnetworks4.PNG width=100%>
</p>

In the above, the input layer (layer 1) feeds into the other layer (layer 2), which finally outputs the hypothesis function, known as the "<b>Output Layer</b>".

#### A more complex neural network

The below is a more complex neural network, and includes a "<b>Hidden Layer</b>":

<p align = "center">
<img src=../Images\neuralnetworks5.PNG width=100%>
</p>

Explanation of Notation:

1. The <b>input</b> layer is denoted by x<sub>1</sub>, x<sub>2</sub>, and x<sub>3</sub>.

2. The <b>hidden</b> layer is denoted by a<sub>1</sub><sup>2</sup>, a<sub>2</sub><sup>2</sup> and a<sub>3</sub><sup>2</sup>.  Hidden layers have the following charactertistics:

    (a) Intermediate layer(s) of nodes between the input and output layers.

    (b) Cannot observe the values processed in the hidden layer(s).

    (c\) Can have many hidden layers.

3. The <b>output</b> layer is simply hƟ(x).

### Neural Networks notation

<p align = "center">
<img src=../Images\neuralnetworks6.PNG width=100%>
</p>

The notation for neural networks can get confusing. It is explained as follows:

1. a<sub>i</sub><sup>(j)</sup> = activation unit i in layer j.

    <b>Example:</b> a<sub>1</sub><sup>(2)</sup> = activation unit 1 in the second layer.

2. Ɵ<sup>(j)</sup> = matrix of parameters controlling function mapping from layer j to layer j+1.

    <b>Example:</b>

    (a) If network has s<sub>j</sub> units in layer j; and

    (b) If network has s<sub>j+1</sub> units in layer j+1

    (c\) Then Ɵ<sup>(j)</sup> will be of dimensions s<sub>j+1</sub> x s<sub>j</sub> + 1, because:

    (i) s<sub>j+1</sub> is equal to the number of units in layer (j + 1);

    and

    (ii) s<sub>j</sub> + 1 is equal to the number of units in layer j, plus an additional unit to represent the bias unit, which is always 1.

3. For the Ɵ matrix:

    (a) <b>Row length</b> = number of units in the <b>following</b> layer.

    (b) <b>Column length</b> = number of units in the <b>current</b> layer + 1 (because of the bias unit).

4. Example of the Ɵ matrix:

    (a) Layer 1 = 3 input nodes, i.e. s<sub>j</sub> = 3

    (b) Layer 2 = 3 activation nodes, i.e. s<sub>j+1</sub> = 3

    (c\) Dimension of Ɵ<sup>1</sup> is 3 x 4, i.e. s<sub>j+1</sub> x (s<sub>j</sub> + 1)

5. We have to compute the activation for each node, which depends on:

    (a) the input(s) to the node;

    AND

    (b) the parameter associated with that node (from the Ɵ vector associated with that layer).

6. Therefore, we calculate each of the layer 2 activations in the above example based on the input values plus the bias term (which is equal to 1).

7. The activation value of each layer 2 node is equal to the <b>sigmoid function applied to the linear combination of inputs</b>.

8. For the <b>three input units</b> (x<sub>1</sub>, x<sub>2</sub> and x<sub>3</sub>):

    (a) Ɵ<sup>(1)</sup> is the matrix of parameters governing the mapping of the input layer to the hidden layer.

    (b) Ɵ<sup>(1)</sup> here is a 3 x 4 matrix.

9.  For the <b>three hidden units</b> (a<sub>1</sub><sup>(2)</sup>, a<sub>2</sub><sup>(2)</sup> and a<sub>3</sub><sup>(2)</sup>):

    (a) Ɵ<sup>(2)</sup> is the matrix of parameters governing the mapping of the input units to hidden units.

    (b) Ɵ<sup>(2)</sup> here is a 1 x 4 matrix (i.e. row vector).

10. With regard to the Ɵ notation, this can be a little confusing as not explained in the videos very clearly.  To break this down, consider Ɵ<sub>ji</sub><sup>1</sup> - this breaks down as follows:

    (a) j = the jth unit in layer 1 + 1 (ranges from 1 to the number of units in layer 1 + 1)

    (b) i = number of units in layer 1 (ranges from 0 to number of units in layer 1)

    (c\) = the layer you're <b>moving from</b>.

Concretely, this comes together as follows:

<p align = "center">
<img src=../Images\neuralnetwork10.PNG width=100%>
</p>

## Why can't we simply use linear or logistic regression?

Even for a relatively simple problem such as predicting house prices, if there are 100 features it may become incredibly complicated to fit a linear or logistic function to the data.  

<p align = "center">
<img src=../Images\neuralnetworks1.PNG width=100%>
</p>

## Why do we use neural networks?

For instance, a computer vision problem to identify cars from non-cars:

<p align = "center">
<img src=../Images\neuralnetworks2.PNG width=100%>
</p>

In this type of problem, the number of features is huge.  In such circumstances, there is no simple way to build decent classifiers.  Instead, we need a non-linear hypothesis to separate the classes.  Neural networks perform much better in this regard than simply logistic regression.

<b>Explanation re Quadratic Terms:</b>

1. The ~3,000,000 quadratic features figure is the number of unique pairs of x<sub>i</sub> and x<sub>j</sub>.

2. This can be calculated as follows: n(n+1)/2.

3. Therefore, this equates to: 2,500 x (2501 + 1) / 2.

4. 6,252,500 / 2 = 3,126,250.

See also here:
- https://www.coursera.org/learn/machine-learning/discussions/weeks/4/threads/zWn1oshFEeWRfg5WVr61Uw

- https://www.mathsisfun.com/combinatorics/combinations-permutations.html
