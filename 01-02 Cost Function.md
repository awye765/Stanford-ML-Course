# Week 1

## Linear regression

### What is linear regression?

LR is a function that takes a single independent variable in order to predicte the value of a dependent variable. LR can be used to predict output values based on input values.

### How does linear regression relate to machine learning?

In ML, LR is used to find a function that given an input predicts the corresponding output as accurately as possible.

### What is the formula for linear regression?

- Essentially we're saying, what function of x (i.e. h<sub>θ</sub>(x)), produces the corresponding y value.
- The notation for this function is this: h<sub>θ</sub>(x) = θ<sub>0</sub> + θ<sub>1</sub>x.
- θ<sub>0</sub> = y value at which line intersects y axis.
- θ<sub>1</sub> = gradient of line.
- We want to identify weights, θ<sub>0</sub> and θ<sub>1</sub>, so that h<sub>θ</sub>(x) is as close to y for our training set.

## Cost Function

### What is a cost function and why is it important?

When building a linear model we are trying to minimize the error an algorithm does making predictions, and we get that by choosing a function to help us measure the error also called cost function.

We can measure the accuracy of our hypothesis function by using a cost function. This takes an average difference (actually a fancier version of an average) of all the results of the hypothesis with inputs from x's and the actual output y's.

### What is the formula for a cost function?

One of the most common cost functions is the <b>mean squared error</b>.  In ML the cost function is referred to as J(θ)

<p align = "center">
<img src=Images\1_VanG05Ab6yknqJ2bRGFzrQ.png width=50%>
</p>

- m = number of training examples
- i = iteration index

This equation works as follows:

1. First, find the <b>error</b>: for each iteration (i.e. the "i"th iteration), subtract the actual value of y from the training set (y<sup>(i)</sup>) from the predicted value of y based on an input x (h<sub>θ</sub>(x<sup>(i)</sup>)).

2. Second, find the <b>square</b>: for each iteration of the test you compute the square of the error, i.e. (hθ(x<sup>(i)</sup>) - y<sup>(i)</sup>)<sup>2</sup>.

3. Third, find the <b>mean</b>: for the entire experiment you compute the average (via the mean) of the squared errors from 1 to i.

4. Fourth, the <b>sum</b>: for all iterations from 1 through to m (i.e. the total number of iterations).

5. Fifth, multiply the above by <b> 1 / 2m </b>.

<p align = "center">
<img src=Images\R2YF5Lj3EeajLxLfjQiSjg_110c901f58043f995a35b31431935290_Screen-Shot-2016-12-02-at-5.23.31-PM.png width=50%>
</p>

### Worked example of cost function in action

For each of the below, let's assume:

1. θ<sub>0</sub> = 0, i.e. the function hθ(x) = θ<sub>0</sub> + θ<sub>1</sub>x passes through the coordinates (0,0).  As such, that means hθ(x) = θ<sub>0</sub> + θ<sub>1</sub>x can be simplified as hθ(x) = θ<sub>1</sub>x.
2. m = 3 (i.e. our <b>training dataset</b>, has 3 results at the x and y coordinates described in (3) and (4) below).
3. x<sub>0</sub> = 1, x<sub>1</sub> = 2, and x<sub>2</sub> = 3.
4. y<sub>0</sub> = 1, y<sub>1</sub> = 2, and y<sub>2</sub> = 3.

Like so, with each of Options A (blue), B (green) and C (orange) for the cost function plotted:

<p align = "center">
<img src=Images\CostFunction.PNG width=50%>
</p>

The calculations for each cost function are below:

#### Option A: For J(1) - Blue

J(1) = 1/(2 x 3) x ((1 -1)<sup>2</sup> + (2 -2)<sup>2</sup> + (3 -3)<sup>2</sup>)

J(1) = 1/6 (0 + 0 + 0)

J(1) = 1/6 (0)

J(1) = 0

#### Option B: For J(0.5) - Green

J(0.5) = 1/(2 x 3) x ((0.5 -1)<sup>2</sup> + (1 -2)<sup>2</sup> + (1.5 -3)<sup>2</sup>)

J(1) = 1/6 (0.25 + 1 + 2.25)

J(1) = 1/6 (3.5)

J(1) = 0.58

#### Option C: For J(0) - Orange

J(0) = 1/(2 x 3) x ((0 -1)<sup>2</sup> + (0 -2)<sup>2</sup> + (0 -3)<sup>2</sup>)

J(0) = 1/6 (1 + 4 + 9)

J(0) = 1/6 (14)

J(0) = 14/6

### What do the above examples show us?

With LR we want to find the value of θ<sub>1</sub>, i.e. the ideal slop gradient, that minimises our cost function J(θ<sub>1</sub>) for our dataset.  

Based on the above, the value of θ<sub>1</sub> that best minimises J(θ<sub>1</sub>) is θ<sub>1</sub> = 1.  So option A (the blue line).

## Other Resources

http://onlinestatbook.com/2/regression/intro.html

https://medium.com/simple-ai/linear-regression-intro-to-machine-learning-6-6e320dbdaf06

https://medium.com/@lachlanmiller_52885/machine-learning-week-1-cost-function-gradient-descent-and-univariate-linear-regression-8f5fe69815fd
