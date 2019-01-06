# Week 04-02 Neural Networks Representation - Part 2

## Vectorized Implementation & Representation

<p align = "center">
<img src=../Images\neuralnetworks11.PNG width=100%>
</p>

#### More Notation!

1. Recall that g(z) = 1/(1 + e<sup>-z</sup>), which is the <b>sigmoid</b> or <b>logistic</b> function.  

2. z<sub>i</sub><sup>(j)</sup>:

    (j) = the layer reference

    i = the node reference

    e.g. z<sub>1</sub><sup>(2)</sup> = z value from a<sub>1</sub><sup>(2)</sup>.

3. z<sup>(2)</sup> = vector of z values from layer 2.

#### Vectorizing the Computation of the Neural Network

We can <b>vectorize</b> the computation of the neural network as follows in two steps:

1. z<sup>2</sup> = Ɵ<sup>(1)</sup>x where:

    (a) Ɵ<sup>(1)</sup>x = a matrix of z values defined above; AND

    (b) x is a feature vector.

    <b>Note:</b> Andrew Ng crosses out the x and replaces it with a<sup>(1)</sup>, which simply saying that x is the vector of activations from the first layer, i.e. simply the vector of raw input values for the original features x<sub>0</sub>, x<sub>1</sub> and so on, hence the manuscript mark-up to rewrite:

     z<sup>2</sup> = Ɵ<sup>(1)</sup>x

     AS

     z<sup>2</sup> = Ɵ<sup>(1)</sup>a<sup>(1)</sup>    

2. a<sup>2</sup> = g(z<sup>2</sup>), which means a<sup>(2)</sup> is the vector of activation values calculated by the g(z<sup>2</sup>) function.

3. Then we need to add the bias unit to each of layer 1 and layer 2, i.e. a<sub>0</sub><sup>(2)</sup> = activation unit 0 of layer 2.  This makes a<sup>2</sup> a 4 x 1 vector.

4. In turn this means z<sup>(3)</sup> = Ɵ<sup>(2)</sup>a<sup>(2)</sup.

5. Therefore, finally: h<sub>Ɵ</sub>(x) = a<sup>(3)</sup> = g(z<sup>(3)</sup>), i.e. value of the hypothesis is the value of the activation unit in layer 3, which is the sigmoid of the vector of z values from layer 3.   

#### Forward Propagation

What we've described above is also called <b>forward propagation</b>.  It is called this because we start with the activations of the input-units and then we forward propagate that the hidden layer and compute the activations of the hidden layer and then we forward propagate that and computer the activations of the output layer.

The clever thing is that the neural network not only learns the parameters but also learns new features, not just the original input features. For instance:

<p align = "center">
<img src=../Images\neuralnetworks14.PNG width=100%>
</p>

Here:

1. Layer 3 is simply a logistic regression node where the hypothesis output is simply:

    g(Ɵ<sub>10</sub><sup>2</sup> a<sub>0</sub><sup>2</sup> + Ɵ<sub>11</sub><sup>2</sup> a<sub>1</sub><sup>2</sup> + Ɵ<sub>12</sub><sup>2</sup> a<sub>2</sub><sup>2</sup> + Ɵ<sub>13</sub><sup>2</sup> a<sub>3</sub><sup>2</sup>.

2. However, the <b>only difference</b> is that the features a<sup>(1)</sup>, a<sup>(2)</sup> and a<sup>(3)</sup> are <b>learned</b> from the functions of the input values and <b>not</b> the original features.  

    Concretely the function mapping from layer 1 to layer 2 is determined by some other set of parameters, theta 1.  

3. So it's as if the neural network, instead of being constrained to feed the features x<sub>1</sub>, x<sub>2</sub> and x<sub>3</sub> into logistic regression, it instead gets to learn its own features a<sup>(1)</sup>, a<sup>(2)</sup> and a<sup>(3)</sup>.

4. Why is this helpful? It means the neural network can learn some interesting and complex features and therefore end up with better hypotheses than if you were constrained to use the raw features x<sub>1</sub>, x<sub>2</sub> and x<sub>3</sub>.

<p align = "center">
<img src=../Images\neuralnetworks12.PNG width=100%>
</p>
