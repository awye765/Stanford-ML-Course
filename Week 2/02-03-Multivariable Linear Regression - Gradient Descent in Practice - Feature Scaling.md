# Week 02-03 Multiple Linear Regression - Gradient Descent in Practice - Feature Scaling

## The Challenge

Gradient descent will descend upon convergence:

1. <b>Quickly</b> where the range of θ values is <b>small</b>; and

2. <b>Slowly</b> where the range of θ values is <b>large</b>.

For instance:

<p align = "center">
<img src=../Images\feature_scaling_mean_normalization0.png width=70%>
</p>

Because the two ranges (i.e. square footage size and number of rooms) are widly different, the resulting topology is skewed and narrow.  This makes gradient descent less efficient at finding the global minimum for θ<sub>0</sub> and θ<sub>1</sub>.

## The Desired Solution

To speed up gradient descent, we want to modify the range of our input variables so they are roughly the same, ideally:

1. −1 ≤ x<sub>(i)</sub> ≤  1

  or

2. ​−0.5 ≤ x<sub>(i)</sub> ≤ 0.5

Two techniques help with this: <b>Feature Scaling</b> and <b>Mean Normalization</b>.

Doing this for the above example results in this:

<p align = "center">
<img src=../Images\feature_scaling_mean_normalization0b.png width=70%>
</p>

This transforms both sets of features for θ<sub>i</sub> to a range of 0 ≤ θ<sub>i</sub> ≤ 1.

## What is Feature Scaling?

<b>Dividing</b> the input values by the range (i.e. the maximum value minus the minimum value) of the input variables, resulting in a new range of just 1.

#### Why use feature scaling?

It speeds up gradient descent by making it require <b>fewer</b> iterations to get to a good solution.

It:

- Does <b>not</b> speed up solving for θ using the normal equation.  The magnitude of feature values are <b>insignificant</b> in terms of computational cost.

- Does <b>not</b> prevent the matrix X<sup>T</sup>X (used in the normal equation) from being non-invertible (singular / degenerate).

- Is <b>not</b> necessary to prevent gradient descent from getting stuck in local optima.  The cost function J(θ) for linear regression has no local optima.  

## What is Mean Normalization?

<b>Subtracting</b> the average value from an input variable from the values for that input variable, resulting in a new average value for the input variable of just zero.

## How to implement Feature Scaling and Mean Normalization?

The formula to implement these is this:

<p align = "center">
<img src=../Images\feature_scaling_mean_normalization.png width=30%>
</p>

Where:

1. x<sub>1</sub> is the <b>original value</b> of x<sub>1</sub> that is updated (i.e. as denoted by <b>:=</b>).

2. μ is the <b>mean</b> of all values in the x variable range.

3. s<sub>i</sub> is the <b>range</b>, i.e. difference between the <b>highest</b> x value and the <b>lowest</b> x value, e.g.

  s<sub>i</sub> = x<sub>max</sub> - x<sub>min</sub>

For example:

<p align = "center">
<img src=\Images\feature_scaling_mean_normalization2.png width=100%>
</p>
