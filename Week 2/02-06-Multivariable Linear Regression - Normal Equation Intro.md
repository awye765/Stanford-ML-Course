# Week 02-06 Multiple Linear Regression - Normal Equation Intro

## What is the "Normal Equation"?

In Gradient Descent for Linear Regression, we iteratively minimize cost function J(θ) to converge to the global minimum.

In contrast, the <b>Normal Equation</b> would give us a method to solve for θ analytically.  In other words, rather than needing to run an iterative algorithm, we can instead solve for the optimal value for θ all at one go, i.e. in one step you get to the optimal value.

## How does the normal equation work?

<p align = "center">
<img src=Images\normalequation3.png width=100%>
</p>

To minimize a function, you take the derivative function and set it to zero.

So in the above:

#### Where θ is a <u>Real</u> number

The bit in blue handwriting minimizes a the quadratic function (shown in the "U" shaped graph) where θ is a real number.

#### Where θ is <u>not</u> a Real number

1. In the above, the bit circled yellow describes where θ is <u>not</u> a Real Number.

2. As such, to minimize the cost function J(θ) (i.e. bit in green and bit in pink), we need to:

  (a) take the derivative of J(θ), with respect to every parameter of θ<sub>j</sub>;

  (b) set all of these values to 0; and

  (c) solve the values of θ<sub>1</sub>, θ<sub>2</sub> etc up to θ<sub>n</sub> then this would give you the values of θ to minimise J(θ).

## Example of Normal Equation in fractional

Here we are trying to predict house prices based on four features: (1) Size, (2) No. of Bedrooms, (3) No. of floors and (4) Age.

<p align = "center">
<img src=Images\normalequation4.png width=100%>
</p>

In the above, the part circled <b>red</b>, is the formula that provides the value of θ that minimizes your cost function.

<p align = "center">
<img src=Images\normalequation7.png width=100%>
</p>

## When to use Normal Equation vs. Gradient Descent?
With the normal equation, computing the inversion has complexity O(n<sup>3</sup>).

So if we have a very large number of features, the normal equation will be slow. In practice, when n exceeds 10,000 it might be a good time to go from a normal solution to an iterative process.

Other distinctions in the below comparison table:

<p align = "center">
<img src=Images\normalequation6.png width=100%>
</p>
