# Week 01-04 Linear Regression: Combining Linear Regression & Gradient Descent

## How does linear regression and gradient descent come together?

To recap:

1. Our linear regression model is h<sub>θ</sub>(x) = θ<sub>0</sub> + θ<sub>1</sub>x.

2. Our <b>Cost Function</b> is:

  J(θ<sub>0</sub>, θ<sub>1</sub>) =
<img src=../Images\1_VanG05Ab6yknqJ2bRGFzrQ.png width=50%>

3. Our gradient descent function is:

  <p align = "center">
    <img src=../Images\Image[17].png width=90%>
  </p>

4. Our <b>objective</b> is to use gradient descent to minimise our cost function, i.e.

  min J(θ<sub>0</sub>, θ<sub>1</sub>)

  and thereby identify the best linear function that predicts new outputs based on historic inputs.

## In formula this looks like:

1. The formula to the right of θ<sub>j</sub> - α looks like the below, i.e. a substitution of the cost function for J(θ<sub>0</sub>,θ<sub>1</sub>):

<p align = "center">
  <img src=../Images\Image[21].png width=80%>
</p>

2. Where:

    (a) J(θ<sub>0</sub>,θ<sub>1</sub>) = 1/2m...

    and

    (b) h<sub>θ</sub>(x) = θ<sub>0</sub> + θ<sub>1</sub> * X.

3. So that for j = 0 and j = 1 the partial derivative of the cost function for each is:

<p align = "center">
  <img src=../Images\Image[22].png width=80%>
</p>


4. The above is the derivative function that calculates the slope of the tangent for j = 0 and j = 1 respectively.

5. The partial derivatives are then plugged into the gradient descent algorithm to generate our linear regression algorithm, which looks like this:

<p align = "center">
  <img src=../Images\graddescentlinear.png width=80%>
</p>

6. The bit circled blue is the derivative of the cost function for θ<sub>0</sub>.

7. The bit circled pink is the derivative of the cost function for θ<sub>1</sub>.

8. If the derivative of the cost function is <b>positive</b>, it will <b>reduce</b> the value of θ<sub>0</sub> / θ<sub>1</sub> as applicable.  However, if the derivative of the cost function is <b>negative</b>, it will <b>increase</b> the value of θ<sub>0</sub> / θ<sub>1</sub> as applicable.

9. Eventually the values of θ<sub>0</sub> and θ<sub>1</sub> will begin changing by smaller and smaller increments, at which point they will be said to "converge" once
the derivative function reaches zero or close to zero.

## Linear Regression + Gradient descent

For linear regression the 3D graph of the cost function is <b>always</b> bowl shaped.  This is known as a <b>convex function</b>.  

<p align = "center">
  <img src=../Images\lrbowl.PNG width=80%>
</p>

This means there is <b>no</b> local minimum, only a global minimum.

## Sub-types of Gradient Descent: (1) Batch, (2) Stochastic and (3) Mini-batch Stochastic

#### Terminology

1. <b>Batch</b>: is the <i>total</i> number of examples used to calculate the gradient in a single iteration of a gradient descent calculation.

2. <b>Stochastic</b>: adjective to describe something that was <i>randomly</i> determined.

#### Batch Gradient Descent

What we've actually covered is <b>Batch Gradient Descent</b>.  Batch Gradient Descent uses the <b>entire</b> set of training examples to calculate gradient descent in each iteration.   

#### Stochastic Gradient Descent

<b>Stochastic</b> gradient descent (aka <b>"SGD"</b>) uses a <b>single</b> training example to calculate gradient descent in each iteration. The particular training example for each iteration is chosen <b>randomly</b>, hence the term "Stochastic Gradient Descent".  

#### Mini-Batch Stochastic Gradient descent

<b>Mini-Batch</b> stochastic gradient descent uses a <b>subset</b> of the entire set of training examples to calculate gradient descent in each iteration.  The batch size of a mini-batch is usually between <b>10</b> and <b>1,000</b>.

#### When to use which type of Gradient Descent?

Batch gradient descent (in the sense of iterating on the entire set of training examples) works well for smaller more manageable datasets.  However, at huge scale (e.g. Google scale), data sets often contain billions or even hundreds of billions of examples.  Further, each example may contain a huge number of features.  Consequently, a batch can be enormous and too costly to compute.  In such scenarios, SGD or MBSGD are often used.

For instance, a large data set with randomly sampled examples probably contains redundant data. In fact, redundancy becomes more likely as the batch size grows. Some redundancy can be useful to smooth out noisy gradients, but enormous batches tend not to carry much more predictive value than large batches.

## Useful Links

- https://www.mathsisfun.com/calculus/derivatives-introduction.html

- http://mccormickml.com/2014/03/04/gradient-descent-derivation/

- https://medium.com/@lachlanmiller_52885/machine-learning-week-1-cost-function-gradient-descent-and-univariate-linear-regression-8f5fe69815fd

- https://developers.google.com/machine-learning/crash-course/reducing-loss/stochastic-gradient-descent
