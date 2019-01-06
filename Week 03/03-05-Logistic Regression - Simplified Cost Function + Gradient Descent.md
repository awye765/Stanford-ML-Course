# Week 03-05 Logistic Regression - Simplified Cost Function + Gradient Descent

## Simplified Cost function

<p align = "left">
<img src=../Images\logregressionCostFunction14.png width=100%>
</p>

In the above, combining the two parts of the cost function (bits circled in pink and red) simplifies the cost function so that different values of y cancel out the relevant part of the cost function, i.e. as demonstrated by the writing in pink and red.

#### Putting it all together

We can plug the above simplified cost function into the full equation as so:

<p align = "left">
<img src=../Images\logregressionCostFunction15.png width=100%>
</p>

## Gradient Descent for Logistic Regression

As with Linear Regression, gradient descent aims to find the θ values that <b>minimise</b> the cost function J(θ).  

<p align = "left">
<img src=../Images\logregressionGradientDescent16.png width=100%>
</p>

Although the above looks identical to gradient descent for Linear Regression, it is in fact different.  The reason is that the hypothesis function, h<sub>θ</sub>(x), for:

1. Linear Regression is θ<sup>T</sup>x

    WHEREAS

2. Logistic Regression is 1/(1 + e<sup>-θ<sup>T</sup>x</sup>).

So in the above, for Logistic Regression option (2) is what is represented by h<sub>θ</sub>(x).
